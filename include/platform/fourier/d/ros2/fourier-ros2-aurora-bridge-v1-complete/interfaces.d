// @file interfaces.d
// @brief Full fourier d codecs and original record metadata.
// @details Complete fourier ros2_aurora_bridge_v1 values in d. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
module roswasm.interfaces;
import roswasm;
import roswasm.records;
import roswasm.wire;
import typed=roswasm.typed;
@nogc nothrow:
/// @brief Publish one complete uwvm_fourier_bridge/msg/GroupState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Uwvm_fourier_bridgeMsgGroupState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
uint publishRos2Uwvm_fourier_bridgeMsgGroupState(Owner owner,const ref Ros2Uwvm_fourier_bridgeMsgGroupState value,
    ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete uwvm_fourier_bridge/msg/GroupState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Uwvm_fourier_bridgeMsgGroupState.
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
uint pollRos2Uwvm_fourier_bridgeMsgGroupState(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Uwvm_fourier_bridgeMsgGroupState value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Uwvm_fourier_bridgeMsgGroupState.decode(r.data,arena,value);
}
/// @brief Publish one complete uwvm_fourier_bridge/msg/GroupValues message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Uwvm_fourier_bridgeMsgGroupValues.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
uint publishRos2Uwvm_fourier_bridgeMsgGroupValues(Owner owner,const ref Ros2Uwvm_fourier_bridgeMsgGroupValues value,
    ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete uwvm_fourier_bridge/msg/GroupValues message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Uwvm_fourier_bridgeMsgGroupValues.
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
uint pollRos2Uwvm_fourier_bridgeMsgGroupValues(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Uwvm_fourier_bridgeMsgGroupValues value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Uwvm_fourier_bridgeMsgGroupValues.decode(r.data,arena,value);
}
/// @brief Publish one complete uwvm_fourier_bridge/msg/MotionRecipe message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Uwvm_fourier_bridgeMsgMotionRecipe.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
uint publishRos2Uwvm_fourier_bridgeMsgMotionRecipe(Owner owner,const ref Ros2Uwvm_fourier_bridgeMsgMotionRecipe value,
    ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete uwvm_fourier_bridge/msg/MotionRecipe message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Uwvm_fourier_bridgeMsgMotionRecipe.
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
uint pollRos2Uwvm_fourier_bridgeMsgMotionRecipe(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Uwvm_fourier_bridgeMsgMotionRecipe value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Uwvm_fourier_bridgeMsgMotionRecipe.decode(r.data,arena,value);
}
/// @brief Publish one complete uwvm_fourier_bridge/msg/Status message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Uwvm_fourier_bridgeMsgStatus.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
uint publishRos2Uwvm_fourier_bridgeMsgStatus(Owner owner,const ref Ros2Uwvm_fourier_bridgeMsgStatus value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete uwvm_fourier_bridge/msg/Status message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Uwvm_fourier_bridgeMsgStatus.
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
uint pollRos2Uwvm_fourier_bridgeMsgStatus(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Uwvm_fourier_bridgeMsgStatus value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Uwvm_fourier_bridgeMsgStatus.decode(r.data,arena,value);
}
/// @brief Publish one complete uwvm_fourier_bridge/msg/VelocityCommand message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Uwvm_fourier_bridgeMsgVelocityCommand.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
uint publishRos2Uwvm_fourier_bridgeMsgVelocityCommand(Owner owner,const ref Ros2Uwvm_fourier_bridgeMsgVelocityCommand value,
    ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete uwvm_fourier_bridge/msg/VelocityCommand message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Uwvm_fourier_bridgeMsgVelocityCommand.
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
uint pollRos2Uwvm_fourier_bridgeMsgVelocityCommand(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Uwvm_fourier_bridgeMsgVelocityCommand value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Uwvm_fourier_bridgeMsgVelocityCommand.decode(r.data,arena,value);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/ExecuteMove service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvExecuteMove(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetBaseData service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvGetBaseData(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetCartesianState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvGetCartesianState(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetContactData service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetContactData_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetContactData_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvGetContactData(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvGetContactData_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvGetContactData_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetFsmName service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvGetFsmName(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request q,ubyte[] input,
    ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetFsmState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvGetFsmState(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetGroupMotionState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvGetGroupMotionState(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetGroupMotorCfg service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetGroupState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvGetGroupState(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetSnapshot service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvGetSnapshot(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetStandPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvGetStandPose(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetUpperFsmName service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvGetUpperFsmName(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetUpperFsmState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvGetUpperFsmState(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetVelocitySource service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvGetVelocitySource(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetVelocitySourceName service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/SetFsmState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvSetFsmState(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/SetGroupCommand service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvSetGroupCommand(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/SetMotorCfgPd service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/SetStandPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvSetStandPose(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/SetUpperFsmState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvSetUpperFsmState(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/SetVelocity service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvSetVelocity(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/SetVelocitySource service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvSetVelocitySource(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
/// @brief Call the selected uwvm_fourier_bridge/srv/WaitGroupsMotionComplete service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response.
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
uint callRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete(Owner o,const ref Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request q,
    ubyte[] input,ubyte[] output,ref Arena arena,out Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response s) {
    return typed.callValue(o,q,input,output,arena,s);
}
