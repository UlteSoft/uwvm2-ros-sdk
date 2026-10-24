// @file interfaces.d
// @brief Full agibot d codecs and original record metadata.
// @details Complete agibot ros2_sdk_v1_0_0_rl values in d. 19 original records retain 71 fields and 19 interface
// descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
// Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
// manual under document/platform/agibot/en_US/catalog/.
module roswasm.interfaces;
import roswasm;
import roswasm.records;
import roswasm.wire;
import typed=roswasm.typed;
@nogc nothrow:
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgModuleChannelInfo(Owner owner,const ref Ros2Aimdk_msgsMsgModuleChannelInfo value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/ModuleChannelInfo message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgModuleChannelInfo.
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
uint pollRos2Aimdk_msgsMsgModuleChannelInfo(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgModuleChannelInfo value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgModuleChannelInfo.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgModuleResourceInfo(Owner owner,const ref Ros2Aimdk_msgsMsgModuleResourceInfo value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/ModuleResourceInfo message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgModuleResourceInfo.
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
uint pollRos2Aimdk_msgsMsgModuleResourceInfo(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgModuleResourceInfo value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgModuleResourceInfo.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgModuleRpcInfo(Owner owner,const ref Ros2Aimdk_msgsMsgModuleRpcInfo value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/ModuleRpcInfo message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgModuleRpcInfo.
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
uint pollRos2Aimdk_msgsMsgModuleRpcInfo(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgModuleRpcInfo value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgModuleRpcInfo.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgProcessInfo(Owner owner,const ref Ros2Aimdk_msgsMsgProcessInfo value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/ProcessInfo message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgProcessInfo.
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
uint pollRos2Aimdk_msgsMsgProcessInfo(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgProcessInfo value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgProcessInfo.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgProcessResourceInfo(Owner owner,const ref Ros2Aimdk_msgsMsgProcessResourceInfo value,
    ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/ProcessResourceInfo message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgProcessResourceInfo.
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
uint pollRos2Aimdk_msgsMsgProcessResourceInfo(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgProcessResourceInfo value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgProcessResourceInfo.decode(r.data,arena,value);
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
/// @see share/platform/ros/d/API-CONTRACT.md
uint publishRos2Aimdk_msgsMsgThreadResourceInfo(Owner owner,const ref Ros2Aimdk_msgsMsgThreadResourceInfo value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete aimdk_msgs/msg/ThreadResourceInfo message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgThreadResourceInfo.
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
uint pollRos2Aimdk_msgsMsgThreadResourceInfo(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Aimdk_msgsMsgThreadResourceInfo value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Aimdk_msgsMsgThreadResourceInfo.decode(r.data,arena,value);
}
