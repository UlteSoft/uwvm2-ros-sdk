// @file bounded_interfaces.zig
// @brief Full agibot zig codecs and original record metadata.
// @details Complete agibot ros2_sdk_v1_1_0_main values in zig. 166 original records retain 552 fields and 133
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/agibot/en_US/catalog/.
//! Generated typed interfaces; explicit owner and storage.
const std=@import("std");
const records=@import("records");
const client=@import("client");
const node=@import("rosnode");
/// @brief Publish one complete aimdk_msgs/msg/AgentProperties message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAgentProperties.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgAgentProperties(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgAgentProperties,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/AgentPropertiesValue message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgAgentPropertiesValue.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgAgentPropertiesValue(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgAgentPropertiesValue,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/AgentPropertyIdType message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgAgentPropertyIdType.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgAgentPropertyIdType(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgAgentPropertyIdType,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/AlertCode message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAlertCode.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgAlertCode(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgAlertCode,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/AlertCodeArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAlertCodeArray.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgAlertCodeArray(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgAlertCodeArray,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/AudioCapture message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioCapture.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgAudioCapture(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgAudioCapture,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/AudioData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioData.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgAudioData(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgAudioData,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/AudioFile message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioFile.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgAudioFile(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgAudioFile,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/AudioInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioInfo.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgAudioInfo(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgAudioInfo,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/AudioPlayback message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioPlayback.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgAudioPlayback(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgAudioPlayback,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/AudioVadStateType message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioVadStateType.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgAudioVadStateType(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgAudioVadStateType,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/CommonRequest message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonRequest.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgCommonRequest(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgCommonRequest,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/CommonResponse message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgCommonResponse(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgCommonResponse,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/CommonState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgCommonState(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgCommonState,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/CommonTaskRequest message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonTaskRequest.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgCommonTaskRequest(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgCommonTaskRequest,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/CommonTaskResponse message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgCommonTaskResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgCommonTaskResponse(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgCommonTaskResponse,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/CurrentVersion message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCurrentVersion.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgCurrentVersion(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgCurrentVersion,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/DiagnosticInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgDiagnosticInfo.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgDiagnosticInfo(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgDiagnosticInfo,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/DiagnosticInfoArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgDiagnosticInfoArray.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgDiagnosticInfoArray(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgDiagnosticInfoArray,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/DiagnosticType message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgDiagnosticType.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgDiagnosticType(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgDiagnosticType,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/DomainErrorState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgDomainErrorState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgDomainErrorState(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgDomainErrorState,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/FaceEmojiStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFaceEmojiStatus.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgFaceEmojiStatus(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgFaceEmojiStatus,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/FixLineIntroState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFixLineIntroState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgFixLineIntroState(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgFixLineIntroState,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/FocusRequester message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFocusRequester.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgFocusRequester(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgFocusRequester,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/FocusResponse message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFocusResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgFocusResponse(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgFocusResponse,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/HRPoint message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHRPoint.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgHRPoint(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgHRPoint,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/HandCommand message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandCommand.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgHandCommand(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgHandCommand,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/HandCommandArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandCommandArray.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgHandCommandArray(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgHandCommandArray,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/HandState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgHandState(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgHandState,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/HandStateArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandStateArray.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgHandStateArray(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgHandStateArray,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/HandTouchSensorData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgHandTouchSensorData.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgHandTouchSensorData(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgHandTouchSensorData,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/HandType message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandType.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgHandType(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgHandType,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/HdsEventQuery message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHdsEventQuery.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgHdsEventQuery(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgHdsEventQuery,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/HdsEventRecord message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHdsEventRecord.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgHdsEventRecord(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgHdsEventRecord,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/JointCommand message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointCommand.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgJointCommand(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgJointCommand,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/JointCommandArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointCommandArray.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgJointCommandArray(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgJointCommandArray,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/JointState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgJointState(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgJointState,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/JointStateArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointStateArray.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgJointStateArray(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgJointStateArray,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/McAction message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcAction.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMcAction(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMcAction,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/McActionCommand message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcActionCommand.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMcActionCommand(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMcActionCommand,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/McActionInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcActionInfo.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMcActionInfo(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMcActionInfo,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/McActionStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcActionStatus.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMcActionStatus(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMcActionStatus,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/McBodyPoseStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcBodyPoseStatus.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMcBodyPoseStatus(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMcBodyPoseStatus,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/McCommonState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcCommonState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMcCommonState(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMcCommonState,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/McControlArea message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcControlArea.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMcControlArea(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMcControlArea,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/McFsmState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcFsmState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMcFsmState(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMcFsmState,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/McHandStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcHandStatus.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMcHandStatus(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMcHandStatus,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/McInputAction message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcInputAction.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMcInputAction(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMcInputAction,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/McInputSource message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcInputSource.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMcInputSource(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMcInputSource,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/McLocomotionSpeedBounds message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/McLocomotionSpeedMode message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedMode.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMcLocomotionSpeedMode(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMcLocomotionSpeedMode,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/McLocomotionSpeedStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/McLocomotionVelocity message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgMcLocomotionVelocity.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMcLocomotionVelocity(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMcLocomotionVelocity,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/McMotionStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcMotionStatus.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMcMotionStatus(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMcMotionStatus,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/McMotionType message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcMotionType.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMcMotionType(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMcMotionType,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/McPlayerState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcPlayerState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMcPlayerState(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMcPlayerState,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/McPresetMotion message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcPresetMotion.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMcPresetMotion(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMcPresetMotion,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/McRuntimeModel message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcRuntimeModel.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMcRuntimeModel(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMcRuntimeModel,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/McServoStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcServoStatus.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMcServoStatus(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMcServoStatus,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/MessageHeader message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMessageHeader.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgMessageHeader(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgMessageHeader,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/NaviPoint message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgNaviPoint.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgNaviPoint(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgNaviPoint,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/Path message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPath.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgPath(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgPath,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/PilotState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPilotState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgPilotState(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgPilotState,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/PlayStateChange message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayStateChange.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgPlayStateChange(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgPlayStateChange,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/PlayStateType message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayStateType.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgPlayStateType(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgPlayStateType,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/PlayTtsRequest message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayTtsRequest.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgPlayTtsRequest(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgPlayTtsRequest,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/PlayTtsResponse message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayTtsResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgPlayTtsResponse(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgPlayTtsResponse,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/PmuLedState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPmuLedState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgPmuLedState(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgPmuLedState,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/PmuState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPmuState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgPmuState(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgPmuState,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/PncTaskRequest message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPncTaskRequest.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgPncTaskRequest(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgPncTaskRequest,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/PncTaskResponse message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPncTaskResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgPncTaskResponse(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgPncTaskResponse,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/PostProcSig message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPostProcSig.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgPostProcSig(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgPostProcSig,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/PostProcSigArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPostProcSigArray.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgPostProcSigArray(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgPostProcSigArray,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/ProcessedAudioOutput message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgProcessedAudioOutput.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgProcessedAudioOutput(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgProcessedAudioOutput,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/QRCode message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgQRCode.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgQRCode(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgQRCode,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/QRPoint message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgQRPoint.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgQRPoint(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgQRPoint,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/Region message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgRegion.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgRegion(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgRegion,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/RequestHeader message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgRequestHeader.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgRequestHeader(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgRequestHeader,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/ResponseHeader message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgResponseHeader.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgResponseHeader(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgResponseHeader,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/RobotResource message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgRobotResource.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgRobotResource(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgRobotResource,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/SigSet message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSigSet.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgSigSet(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgSigSet,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/SlaveDevice message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSlaveDevice.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgSlaveDevice(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgSlaveDevice,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/SmSystemState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSmSystemState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgSmSystemState(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgSmSystemState,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/SystemStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSystemStatus.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgSystemStatus(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgSystemStatus,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/TaskMasterState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgTaskMasterState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgTaskMasterState(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgTaskMasterState,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/TouchState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgTouchState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgTouchState(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgTouchState,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/TtsPriorityLevel message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgTtsPriorityLevel.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgTtsPriorityLevel(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgTtsPriorityLevel,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/UpperBodyCommandArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgUpperBodyCommandArray.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Aimdk_msgsMsgUpperBodyCommandArray(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgUpperBodyCommandArray,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected aimdk_msgs/srv/AbandonAudioFocus service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvAbandonAudioFocus_Request,
/// response=Ros2Aimdk_msgsSrvAbandonAudioFocus_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvAbandonAudioFocus(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvAbandonAudioFocus_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvAbandonAudioFocus_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvAbandonAudioFocus_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/ExecuteActionResource service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvExecuteActionResource_Request,
/// response=Ros2Aimdk_msgsSrvExecuteActionResource_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvExecuteActionResource(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvExecuteActionResource_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvExecuteActionResource_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvExecuteActionResource_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/GetAllJointState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetAllJointState_Request,
/// response=Ros2Aimdk_msgsSrvGetAllJointState_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvGetAllJointState(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvGetAllJointState_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvGetAllJointState_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvGetAllJointState_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/GetCurrentInputSource service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetCurrentInputSource_Request,
/// response=Ros2Aimdk_msgsSrvGetCurrentInputSource_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvGetCurrentInputSource(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvGetCurrentInputSource_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvGetCurrentInputSource_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvGetCurrentInputSource_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/GetHandType service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetHandType_Request, response=Ros2Aimdk_msgsSrvGetHandType_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvGetHandType(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvGetHandType_Request,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvGetHandType_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvGetHandType_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/GetHdsEventHistory service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetHdsEventHistory_Request,
/// response=Ros2Aimdk_msgsSrvGetHdsEventHistory_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvGetHdsEventHistory(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvGetHdsEventHistory_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvGetHdsEventHistory_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvGetHdsEventHistory_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/GetMcAction service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetMcAction_Request, response=Ros2Aimdk_msgsSrvGetMcAction_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvGetMcAction(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvGetMcAction_Request,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvGetMcAction_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvGetMcAction_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/GetMcLocomotionSpeedStatus service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request,
/// response=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/GetMcPresetMotionState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request,
/// response=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvGetMcPresetMotionState(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/GetMicSourceRequest service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetMicSourceRequest_Request,
/// response=Ros2Aimdk_msgsSrvGetMicSourceRequest_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvGetMicSourceRequest(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvGetMicSourceRequest_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvGetMicSourceRequest_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvGetMicSourceRequest_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/GetMute service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetMute_Request, response=Ros2Aimdk_msgsSrvGetMute_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvGetMute(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvGetMute_Request,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvGetMute_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvGetMute_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/GetRobotResources service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetRobotResources_Request,
/// response=Ros2Aimdk_msgsSrvGetRobotResources_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvGetRobotResources(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvGetRobotResources_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvGetRobotResources_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvGetRobotResources_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/GetStoredMapByName service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetStoredMapByName_Request,
/// response=Ros2Aimdk_msgsSrvGetStoredMapByName_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvGetStoredMapByName(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvGetStoredMapByName_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvGetStoredMapByName_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvGetStoredMapByName_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/GetSystemState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetSystemState_Request, response=Ros2Aimdk_msgsSrvGetSystemState_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvGetSystemState(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvGetSystemState_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvGetSystemState_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvGetSystemState_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/GetVolume service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetVolume_Request, response=Ros2Aimdk_msgsSrvGetVolume_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvGetVolume(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvGetVolume_Request,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvGetVolume_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvGetVolume_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/GroupControlTimeSync service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGroupControlTimeSync_Request,
/// response=Ros2Aimdk_msgsSrvGroupControlTimeSync_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvGroupControlTimeSync(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvGroupControlTimeSync_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvGroupControlTimeSync_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvGroupControlTimeSync_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/MigrateSystemState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvMigrateSystemState_Request,
/// response=Ros2Aimdk_msgsSrvMigrateSystemState_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvMigrateSystemState(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvMigrateSystemState_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvMigrateSystemState_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvMigrateSystemState_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/PlayAudioFile service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvPlayAudioFile_Request, response=Ros2Aimdk_msgsSrvPlayAudioFile_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvPlayAudioFile(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvPlayAudioFile_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvPlayAudioFile_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvPlayAudioFile_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/PlayEmoji service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvPlayEmoji_Request, response=Ros2Aimdk_msgsSrvPlayEmoji_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvPlayEmoji(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvPlayEmoji_Request,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvPlayEmoji_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvPlayEmoji_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/PlayEmojiGroup service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvPlayEmojiGroup_Request, response=Ros2Aimdk_msgsSrvPlayEmojiGroup_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvPlayEmojiGroup(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvPlayEmojiGroup_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvPlayEmojiGroup_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvPlayEmojiGroup_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/PlayTts service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvPlayTts_Request, response=Ros2Aimdk_msgsSrvPlayTts_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvPlayTts(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvPlayTts_Request,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvPlayTts_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvPlayTts_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/PlayVideo service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvPlayVideo_Request, response=Ros2Aimdk_msgsSrvPlayVideo_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvPlayVideo(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvPlayVideo_Request,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvPlayVideo_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvPlayVideo_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/PlayVideoGroup service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvPlayVideoGroup_Request, response=Ros2Aimdk_msgsSrvPlayVideoGroup_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvPlayVideoGroup(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvPlayVideoGroup_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvPlayVideoGroup_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvPlayVideoGroup_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/RequestAudioFocus service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvRequestAudioFocus_Request,
/// response=Ros2Aimdk_msgsSrvRequestAudioFocus_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvRequestAudioFocus(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvRequestAudioFocus_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvRequestAudioFocus_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvRequestAudioFocus_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/SetAgentPropertiesRequest service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request,
/// response=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/SetMcAction service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvSetMcAction_Request, response=Ros2Aimdk_msgsSrvSetMcAction_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvSetMcAction(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvSetMcAction_Request,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvSetMcAction_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvSetMcAction_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/SetMcInputSource service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvSetMcInputSource_Request,
/// response=Ros2Aimdk_msgsSrvSetMcInputSource_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvSetMcInputSource(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvSetMcInputSource_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvSetMcInputSource_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvSetMcInputSource_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/SetMcPresetMotion service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvSetMcPresetMotion_Request,
/// response=Ros2Aimdk_msgsSrvSetMcPresetMotion_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvSetMcPresetMotion(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvSetMcPresetMotion_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvSetMcPresetMotion_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvSetMcPresetMotion_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/SetMicSourceRequest service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvSetMicSourceRequest_Request,
/// response=Ros2Aimdk_msgsSrvSetMicSourceRequest_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvSetMicSourceRequest(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvSetMicSourceRequest_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvSetMicSourceRequest_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvSetMicSourceRequest_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/SetMute service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvSetMute_Request, response=Ros2Aimdk_msgsSrvSetMute_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvSetMute(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvSetMute_Request,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvSetMute_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvSetMute_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/SetPmuLed service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvSetPmuLed_Request, response=Ros2Aimdk_msgsSrvSetPmuLed_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvSetPmuLed(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvSetPmuLed_Request,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvSetPmuLed_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvSetPmuLed_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/SetVolume service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvSetVolume_Request, response=Ros2Aimdk_msgsSrvSetVolume_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvSetVolume(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvSetVolume_Request,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvSetVolume_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvSetVolume_Response,o,q,input,output,allocator);
}
/// @brief Call the selected aimdk_msgs/srv/StopAudioPlay service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvStopAudioPlay_Request, response=Ros2Aimdk_msgsSrvStopAudioPlay_Response.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the
/// wire input.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn call_Ros2Aimdk_msgsSrvStopAudioPlay(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvStopAudioPlay_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvStopAudioPlay_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvStopAudioPlay_Response,o,q,input,output,allocator);
}
