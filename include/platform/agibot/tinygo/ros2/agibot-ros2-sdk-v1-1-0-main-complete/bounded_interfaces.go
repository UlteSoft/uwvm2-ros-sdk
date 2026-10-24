// @file bounded_interfaces.go
// @brief Full agibot tinygo codecs and original record metadata.
// @details Complete agibot ros2_sdk_v1_1_0_main values in tinygo. 166 original records retain 552 fields and 133
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

// @brief Publish one complete aimdk_msgs/msg/AlertCode message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAlertCode.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgAlertCode(o *ros.Capability, v Ros2Aimdk_msgsMsgAlertCode) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/AlertCode message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAlertCode.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgAlertCode(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgAlertCode, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgAlertCode{}, e
	}
	return DecodeRos2Aimdk_msgsMsgAlertCode(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/AlertCodeArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAlertCodeArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgAlertCodeArray(o *ros.Capability, v Ros2Aimdk_msgsMsgAlertCodeArray) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/AlertCodeArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAlertCodeArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgAlertCodeArray(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgAlertCodeArray, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgAlertCodeArray{}, e
	}
	return DecodeRos2Aimdk_msgsMsgAlertCodeArray(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/AudioCapture message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioCapture.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgAudioCapture(o *ros.Capability, v Ros2Aimdk_msgsMsgAudioCapture) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/AudioCapture message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAudioCapture.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgAudioCapture(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgAudioCapture, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgAudioCapture{}, e
	}
	return DecodeRos2Aimdk_msgsMsgAudioCapture(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/AudioData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgAudioData(o *ros.Capability, v Ros2Aimdk_msgsMsgAudioData) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/AudioData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAudioData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgAudioData(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgAudioData, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgAudioData{}, e
	}
	return DecodeRos2Aimdk_msgsMsgAudioData(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/AudioFile message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioFile.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgAudioFile(o *ros.Capability, v Ros2Aimdk_msgsMsgAudioFile) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/AudioFile message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAudioFile.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgAudioFile(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgAudioFile, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgAudioFile{}, e
	}
	return DecodeRos2Aimdk_msgsMsgAudioFile(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/AudioInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgAudioInfo(o *ros.Capability, v Ros2Aimdk_msgsMsgAudioInfo) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/AudioInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAudioInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgAudioInfo(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgAudioInfo, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgAudioInfo{}, e
	}
	return DecodeRos2Aimdk_msgsMsgAudioInfo(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/AudioPlayback message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioPlayback.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgAudioPlayback(o *ros.Capability, v Ros2Aimdk_msgsMsgAudioPlayback) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/AudioPlayback message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAudioPlayback.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgAudioPlayback(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgAudioPlayback, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgAudioPlayback{}, e
	}
	return DecodeRos2Aimdk_msgsMsgAudioPlayback(scratch[:n])
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

// @brief Publish one complete aimdk_msgs/msg/CommonTaskRequest message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonTaskRequest.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgCommonTaskRequest(o *ros.Capability, v Ros2Aimdk_msgsMsgCommonTaskRequest) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/CommonTaskRequest message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgCommonTaskRequest.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgCommonTaskRequest(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgCommonTaskRequest, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgCommonTaskRequest{}, e
	}
	return DecodeRos2Aimdk_msgsMsgCommonTaskRequest(scratch[:n])
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

// @brief Publish one complete aimdk_msgs/msg/CurrentVersion message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCurrentVersion.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgCurrentVersion(o *ros.Capability, v Ros2Aimdk_msgsMsgCurrentVersion) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/CurrentVersion message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgCurrentVersion.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgCurrentVersion(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgCurrentVersion, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgCurrentVersion{}, e
	}
	return DecodeRos2Aimdk_msgsMsgCurrentVersion(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/DiagnosticInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgDiagnosticInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgDiagnosticInfo(o *ros.Capability, v Ros2Aimdk_msgsMsgDiagnosticInfo) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/DiagnosticInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgDiagnosticInfo.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgDiagnosticInfo(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgDiagnosticInfo, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgDiagnosticInfo{}, e
	}
	return DecodeRos2Aimdk_msgsMsgDiagnosticInfo(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/DiagnosticInfoArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgDiagnosticInfoArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgDiagnosticInfoArray(o *ros.Capability, v Ros2Aimdk_msgsMsgDiagnosticInfoArray) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/DiagnosticInfoArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgDiagnosticInfoArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgDiagnosticInfoArray(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgDiagnosticInfoArray, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgDiagnosticInfoArray{}, e
	}
	return DecodeRos2Aimdk_msgsMsgDiagnosticInfoArray(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/DiagnosticType message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgDiagnosticType.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgDiagnosticType(o *ros.Capability, v Ros2Aimdk_msgsMsgDiagnosticType) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/DiagnosticType message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgDiagnosticType.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgDiagnosticType(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgDiagnosticType, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgDiagnosticType{}, e
	}
	return DecodeRos2Aimdk_msgsMsgDiagnosticType(scratch[:n])
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

// @brief Publish one complete aimdk_msgs/msg/FixLineIntroState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFixLineIntroState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgFixLineIntroState(o *ros.Capability, v Ros2Aimdk_msgsMsgFixLineIntroState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/FixLineIntroState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgFixLineIntroState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgFixLineIntroState(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgFixLineIntroState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgFixLineIntroState{}, e
	}
	return DecodeRos2Aimdk_msgsMsgFixLineIntroState(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/FocusRequester message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFocusRequester.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgFocusRequester(o *ros.Capability, v Ros2Aimdk_msgsMsgFocusRequester) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/FocusRequester message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgFocusRequester.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgFocusRequester(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgFocusRequester, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgFocusRequester{}, e
	}
	return DecodeRos2Aimdk_msgsMsgFocusRequester(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/FocusResponse message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFocusResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgFocusResponse(o *ros.Capability, v Ros2Aimdk_msgsMsgFocusResponse) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/FocusResponse message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgFocusResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgFocusResponse(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgFocusResponse, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgFocusResponse{}, e
	}
	return DecodeRos2Aimdk_msgsMsgFocusResponse(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/HRPoint message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHRPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgHRPoint(o *ros.Capability, v Ros2Aimdk_msgsMsgHRPoint) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/HRPoint message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHRPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgHRPoint(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgHRPoint, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgHRPoint{}, e
	}
	return DecodeRos2Aimdk_msgsMsgHRPoint(scratch[:n])
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

// @brief Publish one complete aimdk_msgs/msg/HandTouchSensorData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgHandTouchSensorData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgHandTouchSensorData(o *ros.Capability, v Ros2Aimdk_msgsMsgHandTouchSensorData) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/HandTouchSensorData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHandTouchSensorData.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgHandTouchSensorData(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgHandTouchSensorData, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgHandTouchSensorData{}, e
	}
	return DecodeRos2Aimdk_msgsMsgHandTouchSensorData(scratch[:n])
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

// @brief Publish one complete aimdk_msgs/msg/HdsEventQuery message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHdsEventQuery.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgHdsEventQuery(o *ros.Capability, v Ros2Aimdk_msgsMsgHdsEventQuery) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/HdsEventQuery message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHdsEventQuery.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgHdsEventQuery(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgHdsEventQuery, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgHdsEventQuery{}, e
	}
	return DecodeRos2Aimdk_msgsMsgHdsEventQuery(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/HdsEventRecord message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHdsEventRecord.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgHdsEventRecord(o *ros.Capability, v Ros2Aimdk_msgsMsgHdsEventRecord) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/HdsEventRecord message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHdsEventRecord.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgHdsEventRecord(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgHdsEventRecord, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgHdsEventRecord{}, e
	}
	return DecodeRos2Aimdk_msgsMsgHdsEventRecord(scratch[:n])
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

// @brief Publish one complete aimdk_msgs/msg/McBodyPoseStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcBodyPoseStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgMcBodyPoseStatus(o *ros.Capability, v Ros2Aimdk_msgsMsgMcBodyPoseStatus) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/McBodyPoseStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcBodyPoseStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgMcBodyPoseStatus(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMcBodyPoseStatus, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMcBodyPoseStatus{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMcBodyPoseStatus(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/McCommonState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcCommonState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgMcCommonState(o *ros.Capability, v Ros2Aimdk_msgsMsgMcCommonState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/McCommonState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcCommonState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgMcCommonState(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMcCommonState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMcCommonState{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMcCommonState(scratch[:n])
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

// @brief Publish one complete aimdk_msgs/msg/McFsmState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcFsmState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgMcFsmState(o *ros.Capability, v Ros2Aimdk_msgsMsgMcFsmState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/McFsmState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcFsmState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgMcFsmState(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMcFsmState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMcFsmState{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMcFsmState(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/McHandStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcHandStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgMcHandStatus(o *ros.Capability, v Ros2Aimdk_msgsMsgMcHandStatus) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/McHandStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcHandStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgMcHandStatus(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMcHandStatus, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMcHandStatus{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMcHandStatus(scratch[:n])
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

// @brief Publish one complete aimdk_msgs/msg/McLocomotionSpeedBounds message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(o *ros.Capability, v Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/McLocomotionSpeedBounds message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/McLocomotionSpeedMode message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedMode.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgMcLocomotionSpeedMode(o *ros.Capability, v Ros2Aimdk_msgsMsgMcLocomotionSpeedMode) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/McLocomotionSpeedMode message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedMode.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgMcLocomotionSpeedMode(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMcLocomotionSpeedMode, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMcLocomotionSpeedMode{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMcLocomotionSpeedMode(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/McLocomotionSpeedStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(o *ros.Capability, v Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/McLocomotionSpeedStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(scratch[:n])
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

// @brief Publish one complete aimdk_msgs/msg/McMotionStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcMotionStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgMcMotionStatus(o *ros.Capability, v Ros2Aimdk_msgsMsgMcMotionStatus) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/McMotionStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcMotionStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgMcMotionStatus(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMcMotionStatus, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMcMotionStatus{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMcMotionStatus(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/McMotionType message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcMotionType.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgMcMotionType(o *ros.Capability, v Ros2Aimdk_msgsMsgMcMotionType) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/McMotionType message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcMotionType.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgMcMotionType(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMcMotionType, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMcMotionType{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMcMotionType(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/McPlayerState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcPlayerState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgMcPlayerState(o *ros.Capability, v Ros2Aimdk_msgsMsgMcPlayerState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/McPlayerState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcPlayerState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgMcPlayerState(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMcPlayerState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMcPlayerState{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMcPlayerState(scratch[:n])
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

// @brief Publish one complete aimdk_msgs/msg/McRuntimeModel message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcRuntimeModel.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgMcRuntimeModel(o *ros.Capability, v Ros2Aimdk_msgsMsgMcRuntimeModel) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/McRuntimeModel message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcRuntimeModel.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgMcRuntimeModel(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMcRuntimeModel, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMcRuntimeModel{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMcRuntimeModel(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/McServoStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcServoStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgMcServoStatus(o *ros.Capability, v Ros2Aimdk_msgsMsgMcServoStatus) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/McServoStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcServoStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgMcServoStatus(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgMcServoStatus, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgMcServoStatus{}, e
	}
	return DecodeRos2Aimdk_msgsMsgMcServoStatus(scratch[:n])
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

// @brief Publish one complete aimdk_msgs/msg/NaviPoint message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgNaviPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgNaviPoint(o *ros.Capability, v Ros2Aimdk_msgsMsgNaviPoint) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/NaviPoint message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgNaviPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgNaviPoint(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgNaviPoint, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgNaviPoint{}, e
	}
	return DecodeRos2Aimdk_msgsMsgNaviPoint(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/Path message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPath.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgPath(o *ros.Capability, v Ros2Aimdk_msgsMsgPath) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/Path message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPath.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgPath(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgPath, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgPath{}, e
	}
	return DecodeRos2Aimdk_msgsMsgPath(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/PilotState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPilotState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgPilotState(o *ros.Capability, v Ros2Aimdk_msgsMsgPilotState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/PilotState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPilotState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgPilotState(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgPilotState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgPilotState{}, e
	}
	return DecodeRos2Aimdk_msgsMsgPilotState(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/PlayStateChange message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayStateChange.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgPlayStateChange(o *ros.Capability, v Ros2Aimdk_msgsMsgPlayStateChange) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/PlayStateChange message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPlayStateChange.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgPlayStateChange(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgPlayStateChange, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgPlayStateChange{}, e
	}
	return DecodeRos2Aimdk_msgsMsgPlayStateChange(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/PlayStateType message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayStateType.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgPlayStateType(o *ros.Capability, v Ros2Aimdk_msgsMsgPlayStateType) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/PlayStateType message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPlayStateType.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgPlayStateType(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgPlayStateType, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgPlayStateType{}, e
	}
	return DecodeRos2Aimdk_msgsMsgPlayStateType(scratch[:n])
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

// @brief Publish one complete aimdk_msgs/msg/PmuLedState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPmuLedState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgPmuLedState(o *ros.Capability, v Ros2Aimdk_msgsMsgPmuLedState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/PmuLedState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPmuLedState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgPmuLedState(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgPmuLedState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgPmuLedState{}, e
	}
	return DecodeRos2Aimdk_msgsMsgPmuLedState(scratch[:n])
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

// @brief Publish one complete aimdk_msgs/msg/PncTaskRequest message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPncTaskRequest.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgPncTaskRequest(o *ros.Capability, v Ros2Aimdk_msgsMsgPncTaskRequest) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/PncTaskRequest message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPncTaskRequest.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgPncTaskRequest(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgPncTaskRequest, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgPncTaskRequest{}, e
	}
	return DecodeRos2Aimdk_msgsMsgPncTaskRequest(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/PncTaskResponse message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPncTaskResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgPncTaskResponse(o *ros.Capability, v Ros2Aimdk_msgsMsgPncTaskResponse) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/PncTaskResponse message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPncTaskResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgPncTaskResponse(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgPncTaskResponse, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgPncTaskResponse{}, e
	}
	return DecodeRos2Aimdk_msgsMsgPncTaskResponse(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/PostProcSig message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPostProcSig.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgPostProcSig(o *ros.Capability, v Ros2Aimdk_msgsMsgPostProcSig) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/PostProcSig message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPostProcSig.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgPostProcSig(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgPostProcSig, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgPostProcSig{}, e
	}
	return DecodeRos2Aimdk_msgsMsgPostProcSig(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/PostProcSigArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPostProcSigArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgPostProcSigArray(o *ros.Capability, v Ros2Aimdk_msgsMsgPostProcSigArray) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/PostProcSigArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPostProcSigArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgPostProcSigArray(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgPostProcSigArray, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgPostProcSigArray{}, e
	}
	return DecodeRos2Aimdk_msgsMsgPostProcSigArray(scratch[:n])
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

// @brief Publish one complete aimdk_msgs/msg/QRCode message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgQRCode.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgQRCode(o *ros.Capability, v Ros2Aimdk_msgsMsgQRCode) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/QRCode message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgQRCode.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgQRCode(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgQRCode, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgQRCode{}, e
	}
	return DecodeRos2Aimdk_msgsMsgQRCode(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/QRPoint message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgQRPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgQRPoint(o *ros.Capability, v Ros2Aimdk_msgsMsgQRPoint) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/QRPoint message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgQRPoint.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgQRPoint(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgQRPoint, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgQRPoint{}, e
	}
	return DecodeRos2Aimdk_msgsMsgQRPoint(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/Region message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgRegion.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgRegion(o *ros.Capability, v Ros2Aimdk_msgsMsgRegion) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/Region message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgRegion.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgRegion(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgRegion, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgRegion{}, e
	}
	return DecodeRos2Aimdk_msgsMsgRegion(scratch[:n])
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

// @brief Publish one complete aimdk_msgs/msg/RobotResource message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgRobotResource.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgRobotResource(o *ros.Capability, v Ros2Aimdk_msgsMsgRobotResource) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/RobotResource message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgRobotResource.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgRobotResource(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgRobotResource, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgRobotResource{}, e
	}
	return DecodeRos2Aimdk_msgsMsgRobotResource(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/SigSet message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSigSet.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgSigSet(o *ros.Capability, v Ros2Aimdk_msgsMsgSigSet) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/SigSet message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgSigSet.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgSigSet(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgSigSet, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgSigSet{}, e
	}
	return DecodeRos2Aimdk_msgsMsgSigSet(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/SlaveDevice message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSlaveDevice.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgSlaveDevice(o *ros.Capability, v Ros2Aimdk_msgsMsgSlaveDevice) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/SlaveDevice message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgSlaveDevice.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgSlaveDevice(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgSlaveDevice, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgSlaveDevice{}, e
	}
	return DecodeRos2Aimdk_msgsMsgSlaveDevice(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/SmSystemState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSmSystemState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgSmSystemState(o *ros.Capability, v Ros2Aimdk_msgsMsgSmSystemState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/SmSystemState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgSmSystemState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgSmSystemState(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgSmSystemState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgSmSystemState{}, e
	}
	return DecodeRos2Aimdk_msgsMsgSmSystemState(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/SystemStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSystemStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgSystemStatus(o *ros.Capability, v Ros2Aimdk_msgsMsgSystemStatus) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/SystemStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgSystemStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgSystemStatus(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgSystemStatus, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgSystemStatus{}, e
	}
	return DecodeRos2Aimdk_msgsMsgSystemStatus(scratch[:n])
}

// @brief Publish one complete aimdk_msgs/msg/TaskMasterState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgTaskMasterState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgTaskMasterState(o *ros.Capability, v Ros2Aimdk_msgsMsgTaskMasterState) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/TaskMasterState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgTaskMasterState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgTaskMasterState(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgTaskMasterState, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgTaskMasterState{}, e
	}
	return DecodeRos2Aimdk_msgsMsgTaskMasterState(scratch[:n])
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

// @brief Publish one complete aimdk_msgs/msg/UpperBodyCommandArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgUpperBodyCommandArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PublishRos2Aimdk_msgsMsgUpperBodyCommandArray(o *ros.Capability, v Ros2Aimdk_msgsMsgUpperBodyCommandArray) error {
	b, e := v.Encode()
	if e != nil {
		return e
	}
	return o.Publish(b)
}

// @brief Poll and decode one complete aimdk_msgs/msg/UpperBodyCommandArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Aimdk_msgsMsgUpperBodyCommandArray.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/tinygo/API-CONTRACT.md
func PollRos2Aimdk_msgsMsgUpperBodyCommandArray(o *ros.Capability, scratch []byte) (Ros2Aimdk_msgsMsgUpperBodyCommandArray, error) {
	n, e := o.Poll(scratch)
	if e != nil {
		return Ros2Aimdk_msgsMsgUpperBodyCommandArray{}, e
	}
	return DecodeRos2Aimdk_msgsMsgUpperBodyCommandArray(scratch[:n])
}

// @brief Call the selected aimdk_msgs/srv/AbandonAudioFocus service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvAbandonAudioFocus_Request, response=Ros2Aimdk_msgsSrvAbandonAudioFocus_Response.
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
func CallRos2Aimdk_msgsSrvAbandonAudioFocus(o *ros.Capability, q Ros2Aimdk_msgsSrvAbandonAudioFocus_Request, output []byte) (Ros2Aimdk_msgsSrvAbandonAudioFocus_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvAbandonAudioFocus_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvAbandonAudioFocus_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvAbandonAudioFocus_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/ExecuteActionResource service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvExecuteActionResource_Request, response=Ros2Aimdk_msgsSrvExecuteActionResource_Response.
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
func CallRos2Aimdk_msgsSrvExecuteActionResource(o *ros.Capability, q Ros2Aimdk_msgsSrvExecuteActionResource_Request, output []byte) (Ros2Aimdk_msgsSrvExecuteActionResource_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvExecuteActionResource_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvExecuteActionResource_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvExecuteActionResource_Response(output[:n])
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

// @brief Call the selected aimdk_msgs/srv/GetHdsEventHistory service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetHdsEventHistory_Request, response=Ros2Aimdk_msgsSrvGetHdsEventHistory_Response.
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
func CallRos2Aimdk_msgsSrvGetHdsEventHistory(o *ros.Capability, q Ros2Aimdk_msgsSrvGetHdsEventHistory_Request, output []byte) (Ros2Aimdk_msgsSrvGetHdsEventHistory_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvGetHdsEventHistory_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvGetHdsEventHistory_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvGetHdsEventHistory_Response(output[:n])
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

// @brief Call the selected aimdk_msgs/srv/GetMcLocomotionSpeedStatus service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request,
// response=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response.
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
func CallRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus(o *ros.Capability, q Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request, output []byte) (Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/GetMcPresetMotionState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request,
// response=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response.
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
func CallRos2Aimdk_msgsSrvGetMcPresetMotionState(o *ros.Capability, q Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request, output []byte) (Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvGetMcPresetMotionState_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/GetMicSourceRequest service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetMicSourceRequest_Request, response=Ros2Aimdk_msgsSrvGetMicSourceRequest_Response.
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
func CallRos2Aimdk_msgsSrvGetMicSourceRequest(o *ros.Capability, q Ros2Aimdk_msgsSrvGetMicSourceRequest_Request, output []byte) (Ros2Aimdk_msgsSrvGetMicSourceRequest_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvGetMicSourceRequest_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvGetMicSourceRequest_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvGetMicSourceRequest_Response(output[:n])
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

// @brief Call the selected aimdk_msgs/srv/GetRobotResources service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetRobotResources_Request, response=Ros2Aimdk_msgsSrvGetRobotResources_Response.
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
func CallRos2Aimdk_msgsSrvGetRobotResources(o *ros.Capability, q Ros2Aimdk_msgsSrvGetRobotResources_Request, output []byte) (Ros2Aimdk_msgsSrvGetRobotResources_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvGetRobotResources_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvGetRobotResources_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvGetRobotResources_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/GetStoredMapByName service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetStoredMapByName_Request, response=Ros2Aimdk_msgsSrvGetStoredMapByName_Response.
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
func CallRos2Aimdk_msgsSrvGetStoredMapByName(o *ros.Capability, q Ros2Aimdk_msgsSrvGetStoredMapByName_Request, output []byte) (Ros2Aimdk_msgsSrvGetStoredMapByName_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvGetStoredMapByName_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvGetStoredMapByName_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvGetStoredMapByName_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/GetSystemState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetSystemState_Request, response=Ros2Aimdk_msgsSrvGetSystemState_Response.
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
func CallRos2Aimdk_msgsSrvGetSystemState(o *ros.Capability, q Ros2Aimdk_msgsSrvGetSystemState_Request, output []byte) (Ros2Aimdk_msgsSrvGetSystemState_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvGetSystemState_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvGetSystemState_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvGetSystemState_Response(output[:n])
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

// @brief Call the selected aimdk_msgs/srv/GroupControlTimeSync service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGroupControlTimeSync_Request, response=Ros2Aimdk_msgsSrvGroupControlTimeSync_Response.
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
func CallRos2Aimdk_msgsSrvGroupControlTimeSync(o *ros.Capability, q Ros2Aimdk_msgsSrvGroupControlTimeSync_Request, output []byte) (Ros2Aimdk_msgsSrvGroupControlTimeSync_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvGroupControlTimeSync_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvGroupControlTimeSync_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvGroupControlTimeSync_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/MigrateSystemState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvMigrateSystemState_Request, response=Ros2Aimdk_msgsSrvMigrateSystemState_Response.
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
func CallRos2Aimdk_msgsSrvMigrateSystemState(o *ros.Capability, q Ros2Aimdk_msgsSrvMigrateSystemState_Request, output []byte) (Ros2Aimdk_msgsSrvMigrateSystemState_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvMigrateSystemState_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvMigrateSystemState_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvMigrateSystemState_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/PlayAudioFile service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvPlayAudioFile_Request, response=Ros2Aimdk_msgsSrvPlayAudioFile_Response.
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
func CallRos2Aimdk_msgsSrvPlayAudioFile(o *ros.Capability, q Ros2Aimdk_msgsSrvPlayAudioFile_Request, output []byte) (Ros2Aimdk_msgsSrvPlayAudioFile_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvPlayAudioFile_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvPlayAudioFile_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvPlayAudioFile_Response(output[:n])
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

// @brief Call the selected aimdk_msgs/srv/PlayEmojiGroup service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvPlayEmojiGroup_Request, response=Ros2Aimdk_msgsSrvPlayEmojiGroup_Response.
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
func CallRos2Aimdk_msgsSrvPlayEmojiGroup(o *ros.Capability, q Ros2Aimdk_msgsSrvPlayEmojiGroup_Request, output []byte) (Ros2Aimdk_msgsSrvPlayEmojiGroup_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvPlayEmojiGroup_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvPlayEmojiGroup_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvPlayEmojiGroup_Response(output[:n])
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

// @brief Call the selected aimdk_msgs/srv/PlayVideoGroup service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvPlayVideoGroup_Request, response=Ros2Aimdk_msgsSrvPlayVideoGroup_Response.
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
func CallRos2Aimdk_msgsSrvPlayVideoGroup(o *ros.Capability, q Ros2Aimdk_msgsSrvPlayVideoGroup_Request, output []byte) (Ros2Aimdk_msgsSrvPlayVideoGroup_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvPlayVideoGroup_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvPlayVideoGroup_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvPlayVideoGroup_Response(output[:n])
}

// @brief Call the selected aimdk_msgs/srv/RequestAudioFocus service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvRequestAudioFocus_Request, response=Ros2Aimdk_msgsSrvRequestAudioFocus_Response.
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
func CallRos2Aimdk_msgsSrvRequestAudioFocus(o *ros.Capability, q Ros2Aimdk_msgsSrvRequestAudioFocus_Request, output []byte) (Ros2Aimdk_msgsSrvRequestAudioFocus_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvRequestAudioFocus_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvRequestAudioFocus_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvRequestAudioFocus_Response(output[:n])
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

// @brief Call the selected aimdk_msgs/srv/SetMicSourceRequest service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvSetMicSourceRequest_Request, response=Ros2Aimdk_msgsSrvSetMicSourceRequest_Response.
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
func CallRos2Aimdk_msgsSrvSetMicSourceRequest(o *ros.Capability, q Ros2Aimdk_msgsSrvSetMicSourceRequest_Request, output []byte) (Ros2Aimdk_msgsSrvSetMicSourceRequest_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvSetMicSourceRequest_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvSetMicSourceRequest_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvSetMicSourceRequest_Response(output[:n])
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

// @brief Call the selected aimdk_msgs/srv/SetPmuLed service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvSetPmuLed_Request, response=Ros2Aimdk_msgsSrvSetPmuLed_Response.
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
func CallRos2Aimdk_msgsSrvSetPmuLed(o *ros.Capability, q Ros2Aimdk_msgsSrvSetPmuLed_Request, output []byte) (Ros2Aimdk_msgsSrvSetPmuLed_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvSetPmuLed_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvSetPmuLed_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvSetPmuLed_Response(output[:n])
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

// @brief Call the selected aimdk_msgs/srv/StopAudioPlay service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvStopAudioPlay_Request, response=Ros2Aimdk_msgsSrvStopAudioPlay_Response.
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
func CallRos2Aimdk_msgsSrvStopAudioPlay(o *ros.Capability, q Ros2Aimdk_msgsSrvStopAudioPlay_Request, output []byte) (Ros2Aimdk_msgsSrvStopAudioPlay_Response, error) {
	b, e := q.Encode()
	if e != nil {
		return Ros2Aimdk_msgsSrvStopAudioPlay_Response{}, e
	}
	n, e := o.Request(ros.OpServiceCall, b, output)
	if e != nil {
		return Ros2Aimdk_msgsSrvStopAudioPlay_Response{}, e
	}
	return DecodeRos2Aimdk_msgsSrvStopAudioPlay_Response(output[:n])
}
