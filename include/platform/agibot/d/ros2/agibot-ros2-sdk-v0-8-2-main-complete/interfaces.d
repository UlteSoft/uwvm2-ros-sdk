// @file interfaces.d
// @brief Full agibot d codecs and original record metadata.
// @details Complete agibot ros2_sdk_v0_8_2_main values in d. 72 original records retain 227 fields and 55 interface
// descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
// Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
// manual under document/platform/agibot/en_US/catalog/.
module roswasm.interfaces;
import roswasm;
import roswasm.records;
import roswasm.wire;
import typed=roswasm.typed;
@nogc nothrow:
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgAgentProperties(Owner owner,const ref Ros2Aimdk_msgsMsgAgentProperties value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AgentProperties message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgAgentProperties.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgAgentProperties(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgAgentProperties value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgAgentProperties.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgAgentPropertiesValue(Owner owner,const ref Ros2Aimdk_msgsMsgAgentPropertiesValue value,
    ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AgentPropertiesValue message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgAgentPropertiesValue.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgAgentPropertiesValue(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgAgentPropertiesValue value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgAgentPropertiesValue.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgAgentPropertyIdType(Owner owner,const ref Ros2Aimdk_msgsMsgAgentPropertyIdType value,
    ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AgentPropertyIdType message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgAgentPropertyIdType.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgAgentPropertyIdType(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgAgentPropertyIdType value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgAgentPropertyIdType.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgAudioVadStateType(Owner owner,const ref Ros2Aimdk_msgsMsgAudioVadStateType value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AudioVadStateType message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgAudioVadStateType.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgAudioVadStateType(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgAudioVadStateType value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgAudioVadStateType.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgCommonRequest(Owner owner,const ref Ros2Aimdk_msgsMsgCommonRequest value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/CommonRequest message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgCommonRequest.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgCommonRequest(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgCommonRequest value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgCommonRequest.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgCommonResponse(Owner owner,const ref Ros2Aimdk_msgsMsgCommonResponse value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/CommonResponse message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgCommonResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgCommonResponse(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgCommonResponse value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgCommonResponse.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgCommonState(Owner owner,const ref Ros2Aimdk_msgsMsgCommonState value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/CommonState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgCommonState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgCommonState(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgCommonState value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgCommonState.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgCommonTaskResponse(Owner owner,const ref Ros2Aimdk_msgsMsgCommonTaskResponse value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/CommonTaskResponse message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgCommonTaskResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgCommonTaskResponse(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgCommonTaskResponse value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgCommonTaskResponse.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgFaceEmojiStatus(Owner owner,const ref Ros2Aimdk_msgsMsgFaceEmojiStatus value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/FaceEmojiStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgFaceEmojiStatus.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgFaceEmojiStatus(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgFaceEmojiStatus value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgFaceEmojiStatus.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgHandCommand(Owner owner,const ref Ros2Aimdk_msgsMsgHandCommand value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/HandCommand message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgHandCommand.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgHandCommand(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgHandCommand value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgHandCommand.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgHandCommandArray(Owner owner,const ref Ros2Aimdk_msgsMsgHandCommandArray value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/HandCommandArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgHandCommandArray.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgHandCommandArray(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgHandCommandArray value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgHandCommandArray.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgHandState(Owner owner,const ref Ros2Aimdk_msgsMsgHandState value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/HandState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHandState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgHandState(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgHandState value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgHandState.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgHandStateArray(Owner owner,const ref Ros2Aimdk_msgsMsgHandStateArray value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/HandStateArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgHandStateArray.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgHandStateArray(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgHandStateArray value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgHandStateArray.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgHandType(Owner owner,const ref Ros2Aimdk_msgsMsgHandType value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/HandType message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHandType.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgHandType(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgHandType value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgHandType.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgJointCommand(Owner owner,const ref Ros2Aimdk_msgsMsgJointCommand value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/JointCommand message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgJointCommand.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgJointCommand(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgJointCommand value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgJointCommand.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgJointCommandArray(Owner owner,const ref Ros2Aimdk_msgsMsgJointCommandArray value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/JointCommandArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgJointCommandArray.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgJointCommandArray(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgJointCommandArray value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgJointCommandArray.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgJointState(Owner owner,const ref Ros2Aimdk_msgsMsgJointState value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/JointState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgJointState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgJointState(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgJointState value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgJointState.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgJointStateArray(Owner owner,const ref Ros2Aimdk_msgsMsgJointStateArray value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/JointStateArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgJointStateArray.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgJointStateArray(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgJointStateArray value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgJointStateArray.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMcAction(Owner owner,const ref Ros2Aimdk_msgsMsgMcAction value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McAction message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcAction.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgMcAction(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMcAction value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMcAction.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMcActionCommand(Owner owner,const ref Ros2Aimdk_msgsMsgMcActionCommand value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McActionCommand message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcActionCommand.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgMcActionCommand(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMcActionCommand value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMcActionCommand.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMcActionInfo(Owner owner,const ref Ros2Aimdk_msgsMsgMcActionInfo value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McActionInfo message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcActionInfo.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgMcActionInfo(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMcActionInfo value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMcActionInfo.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMcActionStatus(Owner owner,const ref Ros2Aimdk_msgsMsgMcActionStatus value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McActionStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcActionStatus.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgMcActionStatus(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMcActionStatus value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMcActionStatus.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMcControlArea(Owner owner,const ref Ros2Aimdk_msgsMsgMcControlArea value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McControlArea message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcControlArea.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgMcControlArea(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMcControlArea value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMcControlArea.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMcInputAction(Owner owner,const ref Ros2Aimdk_msgsMsgMcInputAction value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McInputAction message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcInputAction.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgMcInputAction(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMcInputAction value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMcInputAction.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMcInputSource(Owner owner,const ref Ros2Aimdk_msgsMsgMcInputSource value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McInputSource message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcInputSource.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgMcInputSource(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMcInputSource value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMcInputSource.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMcLocomotionVelocity(Owner owner,const ref Ros2Aimdk_msgsMsgMcLocomotionVelocity value,
    ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McLocomotionVelocity message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcLocomotionVelocity.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgMcLocomotionVelocity(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMcLocomotionVelocity value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMcLocomotionVelocity.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMcPresetMotion(Owner owner,const ref Ros2Aimdk_msgsMsgMcPresetMotion value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McPresetMotion message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcPresetMotion.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgMcPresetMotion(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMcPresetMotion value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMcPresetMotion.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMessageHeader(Owner owner,const ref Ros2Aimdk_msgsMsgMessageHeader value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/MessageHeader message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMessageHeader.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgMessageHeader(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMessageHeader value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMessageHeader.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgPlayMediaFileRequest(Owner owner,const ref Ros2Aimdk_msgsMsgPlayMediaFileRequest value,
    ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PlayMediaFileRequest message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgPlayMediaFileRequest.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgPlayMediaFileRequest(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgPlayMediaFileRequest value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgPlayMediaFileRequest.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgPlayTtsRequest(Owner owner,const ref Ros2Aimdk_msgsMsgPlayTtsRequest value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PlayTtsRequest message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgPlayTtsRequest.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgPlayTtsRequest(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgPlayTtsRequest value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgPlayTtsRequest.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgPlayTtsResponse(Owner owner,const ref Ros2Aimdk_msgsMsgPlayTtsResponse value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PlayTtsResponse message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgPlayTtsResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgPlayTtsResponse(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgPlayTtsResponse value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgPlayTtsResponse.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgPmuState(Owner owner,const ref Ros2Aimdk_msgsMsgPmuState value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PmuState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPmuState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgPmuState(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgPmuState value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgPmuState.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgProcessedAudioOutput(Owner owner,const ref Ros2Aimdk_msgsMsgProcessedAudioOutput value,
    ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/ProcessedAudioOutput message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgProcessedAudioOutput.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgProcessedAudioOutput(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgProcessedAudioOutput value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgProcessedAudioOutput.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgRequestHeader(Owner owner,const ref Ros2Aimdk_msgsMsgRequestHeader value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/RequestHeader message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgRequestHeader.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgRequestHeader(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgRequestHeader value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgRequestHeader.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgResponseHeader(Owner owner,const ref Ros2Aimdk_msgsMsgResponseHeader value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/ResponseHeader message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgResponseHeader.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgResponseHeader(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgResponseHeader value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgResponseHeader.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgTouchState(Owner owner,const ref Ros2Aimdk_msgsMsgTouchState value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/TouchState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgTouchState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgTouchState(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgTouchState value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgTouchState.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgTtsPriorityLevel(Owner owner,const ref Ros2Aimdk_msgsMsgTtsPriorityLevel value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/TtsPriorityLevel message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgTtsPriorityLevel.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] value Complete decoded message; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint pollRos2Aimdk_msgsMsgTtsPriorityLevel(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgTtsPriorityLevel value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgTtsPriorityLevel.decode(r.data,arena,value);
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
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] s Complete decoded response; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint callRos2Aimdk_msgsSrvGetAllJointState(Owner o,const ref Ros2Aimdk_msgsSrvGetAllJointState_Request q,ubyte[] input,
    ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvGetAllJointState_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] s Complete decoded response; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint callRos2Aimdk_msgsSrvGetCurrentInputSource(Owner o,const ref Ros2Aimdk_msgsSrvGetCurrentInputSource_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvGetCurrentInputSource_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] s Complete decoded response; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint callRos2Aimdk_msgsSrvGetHandType(Owner o,const ref Ros2Aimdk_msgsSrvGetHandType_Request q,ubyte[] input,ubyte[] output,
    ref Arena arena,out Ros2Aimdk_msgsSrvGetHandType_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] s Complete decoded response; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint callRos2Aimdk_msgsSrvGetMcAction(Owner o,const ref Ros2Aimdk_msgsSrvGetMcAction_Request q,ubyte[] input,ubyte[] output,
    ref Arena arena,out Ros2Aimdk_msgsSrvGetMcAction_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] s Complete decoded response; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint callRos2Aimdk_msgsSrvGetMute(Owner o,const ref Ros2Aimdk_msgsSrvGetMute_Request q,ubyte[] input,ubyte[] output,
    ref Arena arena,out Ros2Aimdk_msgsSrvGetMute_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] s Complete decoded response; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint callRos2Aimdk_msgsSrvGetVolume(Owner o,const ref Ros2Aimdk_msgsSrvGetVolume_Request q,ubyte[] input,ubyte[] output,
    ref Arena arena,out Ros2Aimdk_msgsSrvGetVolume_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] s Complete decoded response; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint callRos2Aimdk_msgsSrvLedStripCommand(Owner o,const ref Ros2Aimdk_msgsSrvLedStripCommand_Request q,ubyte[] input,
    ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvLedStripCommand_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] s Complete decoded response; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint callRos2Aimdk_msgsSrvPlayEmoji(Owner o,const ref Ros2Aimdk_msgsSrvPlayEmoji_Request q,ubyte[] input,ubyte[] output,
    ref Arena arena,out Ros2Aimdk_msgsSrvPlayEmoji_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] s Complete decoded response; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint callRos2Aimdk_msgsSrvPlayMediaFile(Owner o,const ref Ros2Aimdk_msgsSrvPlayMediaFile_Request q,ubyte[] input,
    ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvPlayMediaFile_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] s Complete decoded response; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint callRos2Aimdk_msgsSrvPlayTts(Owner o,const ref Ros2Aimdk_msgsSrvPlayTts_Request q,ubyte[] input,ubyte[] output,
    ref Arena arena,out Ros2Aimdk_msgsSrvPlayTts_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] s Complete decoded response; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint callRos2Aimdk_msgsSrvPlayVideo(Owner o,const ref Ros2Aimdk_msgsSrvPlayVideo_Request q,ubyte[] input,ubyte[] output,
    ref Arena arena,out Ros2Aimdk_msgsSrvPlayVideo_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] s Complete decoded response; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint callRos2Aimdk_msgsSrvSetAgentPropertiesRequest(Owner o,const ref Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] s Complete decoded response; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint callRos2Aimdk_msgsSrvSetMcAction(Owner o,const ref Ros2Aimdk_msgsSrvSetMcAction_Request q,ubyte[] input,ubyte[] output,
    ref Arena arena,out Ros2Aimdk_msgsSrvSetMcAction_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] s Complete decoded response; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint callRos2Aimdk_msgsSrvSetMcInputSource(Owner o,const ref Ros2Aimdk_msgsSrvSetMcInputSource_Request q,ubyte[] input,
    ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvSetMcInputSource_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] s Complete decoded response; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint callRos2Aimdk_msgsSrvSetMcPresetMotion(Owner o,const ref Ros2Aimdk_msgsSrvSetMcPresetMotion_Request q,ubyte[] input,
    ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvSetMcPresetMotion_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] s Complete decoded response; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint callRos2Aimdk_msgsSrvSetMute(Owner o,const ref Ros2Aimdk_msgsSrvSetMute_Request q,ubyte[] input,ubyte[] output,
    ref Arena arena,out Ros2Aimdk_msgsSrvSetMute_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
/// @param[in,out] arena Dedicated decode arena region; retain with returned values and discard after any partial
/// refusal.
/// @param[out] s Complete decoded response; inspect only after successful status 0.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/d/API-CONTRACT.md
uint callRos2Aimdk_msgsSrvSetVolume(Owner o,const ref Ros2Aimdk_msgsSrvSetVolume_Request q,ubyte[] input,ubyte[] output,
    ref Arena arena,out Ros2Aimdk_msgsSrvSetVolume_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
