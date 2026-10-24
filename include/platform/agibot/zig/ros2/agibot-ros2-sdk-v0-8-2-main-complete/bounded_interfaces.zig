// @file bounded_interfaces.zig
// @brief Full agibot zig codecs and original record metadata.
// @details Complete agibot ros2_sdk_v0_8_2_main values in zig. 72 original records retain 227 fields and 55
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
/// @brief Publish one complete aimdk_msgs/msg/PlayMediaFileRequest message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgPlayMediaFileRequest.
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
pub fn publish_Ros2Aimdk_msgsMsgPlayMediaFileRequest(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgPlayMediaFileRequest,
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
/// @brief Call the selected aimdk_msgs/srv/LedStripCommand service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvLedStripCommand_Request,
/// response=Ros2Aimdk_msgsSrvLedStripCommand_Response.
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
pub fn call_Ros2Aimdk_msgsSrvLedStripCommand(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvLedStripCommand_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvLedStripCommand_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvLedStripCommand_Response,o,q,input,output,allocator);
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
/// @brief Call the selected aimdk_msgs/srv/PlayMediaFile service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvPlayMediaFile_Request, response=Ros2Aimdk_msgsSrvPlayMediaFile_Response.
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
pub fn call_Ros2Aimdk_msgsSrvPlayMediaFile(o:client.Owner,q:*const records.Ros2Aimdk_msgsSrvPlayMediaFile_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Aimdk_msgsSrvPlayMediaFile_Response) {
    return node.callValue(records.Ros2Aimdk_msgsSrvPlayMediaFile_Response,o,q,input,output,allocator);
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
