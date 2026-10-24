// @file interfaces.d
// @brief Full agibot d codecs and original record metadata.
// @details Complete agibot ros2_sdk_v1_1_0_main values in d. 166 original records retain 552 fields and 133
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/agibot/en_US/catalog/.
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgAlertCode(Owner owner,const ref Ros2Aimdk_msgsMsgAlertCode value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AlertCode message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAlertCode.
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
uint pollRos2Aimdk_msgsMsgAlertCode(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgAlertCode value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgAlertCode.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgAlertCodeArray(Owner owner,const ref Ros2Aimdk_msgsMsgAlertCodeArray value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AlertCodeArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgAlertCodeArray.
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
uint pollRos2Aimdk_msgsMsgAlertCodeArray(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgAlertCodeArray value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgAlertCodeArray.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgAudioCapture(Owner owner,const ref Ros2Aimdk_msgsMsgAudioCapture value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AudioCapture message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgAudioCapture.
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
uint pollRos2Aimdk_msgsMsgAudioCapture(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgAudioCapture value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgAudioCapture.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgAudioData(Owner owner,const ref Ros2Aimdk_msgsMsgAudioData value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AudioData message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAudioData.
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
uint pollRos2Aimdk_msgsMsgAudioData(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgAudioData value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgAudioData.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgAudioFile(Owner owner,const ref Ros2Aimdk_msgsMsgAudioFile value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AudioFile message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAudioFile.
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
uint pollRos2Aimdk_msgsMsgAudioFile(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgAudioFile value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgAudioFile.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgAudioInfo(Owner owner,const ref Ros2Aimdk_msgsMsgAudioInfo value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AudioInfo message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAudioInfo.
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
uint pollRos2Aimdk_msgsMsgAudioInfo(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgAudioInfo value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgAudioInfo.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgAudioPlayback(Owner owner,const ref Ros2Aimdk_msgsMsgAudioPlayback value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AudioPlayback message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgAudioPlayback.
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
uint pollRos2Aimdk_msgsMsgAudioPlayback(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgAudioPlayback value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgAudioPlayback.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgCommonTaskRequest(Owner owner,const ref Ros2Aimdk_msgsMsgCommonTaskRequest value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/CommonTaskRequest message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgCommonTaskRequest.
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
uint pollRos2Aimdk_msgsMsgCommonTaskRequest(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgCommonTaskRequest value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgCommonTaskRequest.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgCurrentVersion(Owner owner,const ref Ros2Aimdk_msgsMsgCurrentVersion value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/CurrentVersion message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgCurrentVersion.
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
uint pollRos2Aimdk_msgsMsgCurrentVersion(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgCurrentVersion value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgCurrentVersion.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgDiagnosticInfo(Owner owner,const ref Ros2Aimdk_msgsMsgDiagnosticInfo value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/DiagnosticInfo message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgDiagnosticInfo.
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
uint pollRos2Aimdk_msgsMsgDiagnosticInfo(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgDiagnosticInfo value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgDiagnosticInfo.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgDiagnosticInfoArray(Owner owner,const ref Ros2Aimdk_msgsMsgDiagnosticInfoArray value,
    ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/DiagnosticInfoArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgDiagnosticInfoArray.
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
uint pollRos2Aimdk_msgsMsgDiagnosticInfoArray(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgDiagnosticInfoArray value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgDiagnosticInfoArray.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgDiagnosticType(Owner owner,const ref Ros2Aimdk_msgsMsgDiagnosticType value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/DiagnosticType message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgDiagnosticType.
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
uint pollRos2Aimdk_msgsMsgDiagnosticType(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgDiagnosticType value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgDiagnosticType.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgDomainErrorState(Owner owner,const ref Ros2Aimdk_msgsMsgDomainErrorState value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/DomainErrorState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgDomainErrorState.
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
uint pollRos2Aimdk_msgsMsgDomainErrorState(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgDomainErrorState value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgDomainErrorState.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgFixLineIntroState(Owner owner,const ref Ros2Aimdk_msgsMsgFixLineIntroState value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/FixLineIntroState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgFixLineIntroState.
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
uint pollRos2Aimdk_msgsMsgFixLineIntroState(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgFixLineIntroState value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgFixLineIntroState.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgFocusRequester(Owner owner,const ref Ros2Aimdk_msgsMsgFocusRequester value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/FocusRequester message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgFocusRequester.
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
uint pollRos2Aimdk_msgsMsgFocusRequester(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgFocusRequester value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgFocusRequester.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgFocusResponse(Owner owner,const ref Ros2Aimdk_msgsMsgFocusResponse value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/FocusResponse message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgFocusResponse.
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
uint pollRos2Aimdk_msgsMsgFocusResponse(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgFocusResponse value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgFocusResponse.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgHRPoint(Owner owner,const ref Ros2Aimdk_msgsMsgHRPoint value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/HRPoint message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHRPoint.
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
uint pollRos2Aimdk_msgsMsgHRPoint(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgHRPoint value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgHRPoint.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgHandTouchSensorData(Owner owner,const ref Ros2Aimdk_msgsMsgHandTouchSensorData value,
    ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/HandTouchSensorData message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgHandTouchSensorData.
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
uint pollRos2Aimdk_msgsMsgHandTouchSensorData(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgHandTouchSensorData value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgHandTouchSensorData.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgHdsEventQuery(Owner owner,const ref Ros2Aimdk_msgsMsgHdsEventQuery value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/HdsEventQuery message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgHdsEventQuery.
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
uint pollRos2Aimdk_msgsMsgHdsEventQuery(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgHdsEventQuery value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgHdsEventQuery.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgHdsEventRecord(Owner owner,const ref Ros2Aimdk_msgsMsgHdsEventRecord value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/HdsEventRecord message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgHdsEventRecord.
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
uint pollRos2Aimdk_msgsMsgHdsEventRecord(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgHdsEventRecord value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgHdsEventRecord.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMcBodyPoseStatus(Owner owner,const ref Ros2Aimdk_msgsMsgMcBodyPoseStatus value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McBodyPoseStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcBodyPoseStatus.
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
uint pollRos2Aimdk_msgsMsgMcBodyPoseStatus(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMcBodyPoseStatus value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMcBodyPoseStatus.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMcCommonState(Owner owner,const ref Ros2Aimdk_msgsMsgMcCommonState value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McCommonState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcCommonState.
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
uint pollRos2Aimdk_msgsMsgMcCommonState(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMcCommonState value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMcCommonState.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMcFsmState(Owner owner,const ref Ros2Aimdk_msgsMsgMcFsmState value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McFsmState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcFsmState.
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
uint pollRos2Aimdk_msgsMsgMcFsmState(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMcFsmState value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMcFsmState.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMcHandStatus(Owner owner,const ref Ros2Aimdk_msgsMsgMcHandStatus value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McHandStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcHandStatus.
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
uint pollRos2Aimdk_msgsMsgMcHandStatus(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMcHandStatus value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMcHandStatus.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(Owner owner,const ref Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds value,
    ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McLocomotionSpeedBounds message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds.
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
uint pollRos2Aimdk_msgsMsgMcLocomotionSpeedBounds(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMcLocomotionSpeedMode(Owner owner,const ref Ros2Aimdk_msgsMsgMcLocomotionSpeedMode value,
    ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McLocomotionSpeedMode message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedMode.
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
uint pollRos2Aimdk_msgsMsgMcLocomotionSpeedMode(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMcLocomotionSpeedMode value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMcLocomotionSpeedMode.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(Owner owner,const ref Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus value,
    ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McLocomotionSpeedStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.
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
uint pollRos2Aimdk_msgsMsgMcLocomotionSpeedStatus(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMcMotionStatus(Owner owner,const ref Ros2Aimdk_msgsMsgMcMotionStatus value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McMotionStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcMotionStatus.
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
uint pollRos2Aimdk_msgsMsgMcMotionStatus(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMcMotionStatus value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMcMotionStatus.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMcMotionType(Owner owner,const ref Ros2Aimdk_msgsMsgMcMotionType value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McMotionType message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcMotionType.
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
uint pollRos2Aimdk_msgsMsgMcMotionType(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMcMotionType value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMcMotionType.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMcPlayerState(Owner owner,const ref Ros2Aimdk_msgsMsgMcPlayerState value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McPlayerState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcPlayerState.
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
uint pollRos2Aimdk_msgsMsgMcPlayerState(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMcPlayerState value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMcPlayerState.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMcRuntimeModel(Owner owner,const ref Ros2Aimdk_msgsMsgMcRuntimeModel value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McRuntimeModel message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcRuntimeModel.
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
uint pollRos2Aimdk_msgsMsgMcRuntimeModel(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMcRuntimeModel value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMcRuntimeModel.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgMcServoStatus(Owner owner,const ref Ros2Aimdk_msgsMsgMcServoStatus value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McServoStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcServoStatus.
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
uint pollRos2Aimdk_msgsMsgMcServoStatus(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgMcServoStatus value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgMcServoStatus.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgNaviPoint(Owner owner,const ref Ros2Aimdk_msgsMsgNaviPoint value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/NaviPoint message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgNaviPoint.
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
uint pollRos2Aimdk_msgsMsgNaviPoint(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgNaviPoint value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgNaviPoint.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgPath(Owner owner,const ref Ros2Aimdk_msgsMsgPath value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/Path message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPath.
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
uint pollRos2Aimdk_msgsMsgPath(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgPath value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgPath.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgPilotState(Owner owner,const ref Ros2Aimdk_msgsMsgPilotState value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PilotState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgPilotState.
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
uint pollRos2Aimdk_msgsMsgPilotState(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgPilotState value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgPilotState.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgPlayStateChange(Owner owner,const ref Ros2Aimdk_msgsMsgPlayStateChange value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PlayStateChange message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgPlayStateChange.
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
uint pollRos2Aimdk_msgsMsgPlayStateChange(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgPlayStateChange value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgPlayStateChange.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgPlayStateType(Owner owner,const ref Ros2Aimdk_msgsMsgPlayStateType value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PlayStateType message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgPlayStateType.
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
uint pollRos2Aimdk_msgsMsgPlayStateType(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgPlayStateType value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgPlayStateType.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgPmuLedState(Owner owner,const ref Ros2Aimdk_msgsMsgPmuLedState value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PmuLedState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgPmuLedState.
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
uint pollRos2Aimdk_msgsMsgPmuLedState(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgPmuLedState value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgPmuLedState.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgPncTaskRequest(Owner owner,const ref Ros2Aimdk_msgsMsgPncTaskRequest value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PncTaskRequest message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgPncTaskRequest.
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
uint pollRos2Aimdk_msgsMsgPncTaskRequest(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgPncTaskRequest value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgPncTaskRequest.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgPncTaskResponse(Owner owner,const ref Ros2Aimdk_msgsMsgPncTaskResponse value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PncTaskResponse message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgPncTaskResponse.
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
uint pollRos2Aimdk_msgsMsgPncTaskResponse(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgPncTaskResponse value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgPncTaskResponse.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgPostProcSig(Owner owner,const ref Ros2Aimdk_msgsMsgPostProcSig value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PostProcSig message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgPostProcSig.
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
uint pollRos2Aimdk_msgsMsgPostProcSig(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgPostProcSig value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgPostProcSig.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgPostProcSigArray(Owner owner,const ref Ros2Aimdk_msgsMsgPostProcSigArray value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PostProcSigArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgPostProcSigArray.
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
uint pollRos2Aimdk_msgsMsgPostProcSigArray(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgPostProcSigArray value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgPostProcSigArray.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgQRCode(Owner owner,const ref Ros2Aimdk_msgsMsgQRCode value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/QRCode message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgQRCode.
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
uint pollRos2Aimdk_msgsMsgQRCode(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgQRCode value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgQRCode.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgQRPoint(Owner owner,const ref Ros2Aimdk_msgsMsgQRPoint value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/QRPoint message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgQRPoint.
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
uint pollRos2Aimdk_msgsMsgQRPoint(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgQRPoint value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgQRPoint.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgRegion(Owner owner,const ref Ros2Aimdk_msgsMsgRegion value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/Region message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgRegion.
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
uint pollRos2Aimdk_msgsMsgRegion(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgRegion value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgRegion.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgRobotResource(Owner owner,const ref Ros2Aimdk_msgsMsgRobotResource value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/RobotResource message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgRobotResource.
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
uint pollRos2Aimdk_msgsMsgRobotResource(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgRobotResource value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgRobotResource.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgSigSet(Owner owner,const ref Ros2Aimdk_msgsMsgSigSet value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/SigSet message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgSigSet.
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
uint pollRos2Aimdk_msgsMsgSigSet(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgSigSet value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgSigSet.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgSlaveDevice(Owner owner,const ref Ros2Aimdk_msgsMsgSlaveDevice value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/SlaveDevice message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgSlaveDevice.
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
uint pollRos2Aimdk_msgsMsgSlaveDevice(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgSlaveDevice value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgSlaveDevice.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgSmSystemState(Owner owner,const ref Ros2Aimdk_msgsMsgSmSystemState value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/SmSystemState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgSmSystemState.
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
uint pollRos2Aimdk_msgsMsgSmSystemState(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgSmSystemState value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgSmSystemState.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgSystemStatus(Owner owner,const ref Ros2Aimdk_msgsMsgSystemStatus value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/SystemStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgSystemStatus.
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
uint pollRos2Aimdk_msgsMsgSystemStatus(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgSystemStatus value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgSystemStatus.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgTaskMasterState(Owner owner,const ref Ros2Aimdk_msgsMsgTaskMasterState value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/TaskMasterState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgTaskMasterState.
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
uint pollRos2Aimdk_msgsMsgTaskMasterState(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgTaskMasterState value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgTaskMasterState.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgUpperBodyCommandArray(Owner owner,const ref Ros2Aimdk_msgsMsgUpperBodyCommandArray value,
    ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/UpperBodyCommandArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgUpperBodyCommandArray.
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
uint pollRos2Aimdk_msgsMsgUpperBodyCommandArray(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgUpperBodyCommandArray value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgUpperBodyCommandArray.decode(r.data,arena,value);
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
uint callRos2Aimdk_msgsSrvAbandonAudioFocus(Owner o,const ref Ros2Aimdk_msgsSrvAbandonAudioFocus_Request q,ubyte[] input,
    ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvAbandonAudioFocus_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
uint callRos2Aimdk_msgsSrvExecuteActionResource(Owner o,const ref Ros2Aimdk_msgsSrvExecuteActionResource_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvExecuteActionResource_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
uint callRos2Aimdk_msgsSrvGetHdsEventHistory(Owner o,const ref Ros2Aimdk_msgsSrvGetHdsEventHistory_Request q,ubyte[] input,
    ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvGetHdsEventHistory_Response s) {
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
uint callRos2Aimdk_msgsSrvGetMcLocomotionSpeedStatus(Owner o,const ref Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
uint callRos2Aimdk_msgsSrvGetMcPresetMotionState(Owner o,const ref Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
uint callRos2Aimdk_msgsSrvGetMicSourceRequest(Owner o,const ref Ros2Aimdk_msgsSrvGetMicSourceRequest_Request q,ubyte[] input,
    ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvGetMicSourceRequest_Response s) {
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
uint callRos2Aimdk_msgsSrvGetRobotResources(Owner o,const ref Ros2Aimdk_msgsSrvGetRobotResources_Request q,ubyte[] input,
    ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvGetRobotResources_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
uint callRos2Aimdk_msgsSrvGetStoredMapByName(Owner o,const ref Ros2Aimdk_msgsSrvGetStoredMapByName_Request q,ubyte[] input,
    ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvGetStoredMapByName_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
uint callRos2Aimdk_msgsSrvGetSystemState(Owner o,const ref Ros2Aimdk_msgsSrvGetSystemState_Request q,ubyte[] input,
    ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvGetSystemState_Response s) {
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
uint callRos2Aimdk_msgsSrvGroupControlTimeSync(Owner o,const ref Ros2Aimdk_msgsSrvGroupControlTimeSync_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvGroupControlTimeSync_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
uint callRos2Aimdk_msgsSrvMigrateSystemState(Owner o,const ref Ros2Aimdk_msgsSrvMigrateSystemState_Request q,ubyte[] input,
    ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvMigrateSystemState_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
uint callRos2Aimdk_msgsSrvPlayAudioFile(Owner o,const ref Ros2Aimdk_msgsSrvPlayAudioFile_Request q,ubyte[] input,
    ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvPlayAudioFile_Response s) {
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
uint callRos2Aimdk_msgsSrvPlayEmojiGroup(Owner o,const ref Ros2Aimdk_msgsSrvPlayEmojiGroup_Request q,ubyte[] input,
    ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvPlayEmojiGroup_Response s) {
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
uint callRos2Aimdk_msgsSrvPlayVideoGroup(Owner o,const ref Ros2Aimdk_msgsSrvPlayVideoGroup_Request q,ubyte[] input,
    ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvPlayVideoGroup_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
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
uint callRos2Aimdk_msgsSrvRequestAudioFocus(Owner o,const ref Ros2Aimdk_msgsSrvRequestAudioFocus_Request q,ubyte[] input,
    ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvRequestAudioFocus_Response s) {
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
uint callRos2Aimdk_msgsSrvSetMicSourceRequest(Owner o,const ref Ros2Aimdk_msgsSrvSetMicSourceRequest_Request q,ubyte[] input,
    ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvSetMicSourceRequest_Response s) {
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
uint callRos2Aimdk_msgsSrvSetPmuLed(Owner o,const ref Ros2Aimdk_msgsSrvSetPmuLed_Request q,ubyte[] input,ubyte[] output,
    ref Arena arena,out Ros2Aimdk_msgsSrvSetPmuLed_Response s) {
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
uint callRos2Aimdk_msgsSrvStopAudioPlay(Owner o,const ref Ros2Aimdk_msgsSrvStopAudioPlay_Request q,ubyte[] input,
    ubyte[] output,ref Arena arena,out Ros2Aimdk_msgsSrvStopAudioPlay_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
