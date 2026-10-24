// @file bounded_interfaces.zig
// @brief Full agibot zig codecs and original record metadata.
// @details Complete agibot ros2_sdk_v1_0_0_rl values in zig. 19 original records retain 71 fields and 19 interface
// descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
// Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
// manual under document/platform/agibot/en_US/catalog/.
//! Generated typed interfaces; explicit owner and storage.
const std=@import("std");
const records=@import("records");
const client=@import("client");
const node=@import("rosnode");
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
/// @brief Publish one complete aimdk_msgs/msg/ModuleChannelInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgModuleChannelInfo.
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
pub fn publish_Ros2Aimdk_msgsMsgModuleChannelInfo(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgModuleChannelInfo,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/ModuleResourceInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgModuleResourceInfo.
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
pub fn publish_Ros2Aimdk_msgsMsgModuleResourceInfo(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgModuleResourceInfo,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/ModuleRpcInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgModuleRpcInfo.
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
pub fn publish_Ros2Aimdk_msgsMsgModuleRpcInfo(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgModuleRpcInfo,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/ProcessInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgProcessInfo.
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
pub fn publish_Ros2Aimdk_msgsMsgProcessInfo(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgProcessInfo,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aimdk_msgs/msg/ProcessResourceInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgProcessResourceInfo.
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
pub fn publish_Ros2Aimdk_msgsMsgProcessResourceInfo(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgProcessResourceInfo,
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
/// @brief Publish one complete aimdk_msgs/msg/ThreadResourceInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgThreadResourceInfo.
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
pub fn publish_Ros2Aimdk_msgsMsgThreadResourceInfo(owner:client.Owner,value:*const records.Ros2Aimdk_msgsMsgThreadResourceInfo,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
