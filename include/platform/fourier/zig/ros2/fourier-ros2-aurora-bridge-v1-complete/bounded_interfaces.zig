// @file bounded_interfaces.zig
// @brief Full fourier zig codecs and original record metadata.
// @details Complete fourier ros2_aurora_bridge_v1 values in zig. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
//! Generated typed interfaces; explicit owner and storage.
const std=@import("std");
const records=@import("records");
const client=@import("client");
const node=@import("rosnode");
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
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Uwvm_fourier_bridgeMsgGroupState(owner:client.Owner,value:*const records.Ros2Uwvm_fourier_bridgeMsgGroupState,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
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
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Uwvm_fourier_bridgeMsgGroupValues(owner:client.Owner,value:*const records.Ros2Uwvm_fourier_bridgeMsgGroupValues,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
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
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(owner:client.Owner,value:*const records.Ros2Uwvm_fourier_bridgeMsgMotionRecipe,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
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
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Uwvm_fourier_bridgeMsgStatus(owner:client.Owner,value:*const records.Ros2Uwvm_fourier_bridgeMsgStatus,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
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
/// @see share/platform/ros/zig/API-CONTRACT.md
pub fn publish_Ros2Uwvm_fourier_bridgeMsgVelocityCommand(owner:client.Owner,value:*const records.Ros2Uwvm_fourier_bridgeMsgVelocityCommand,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvExecuteMove(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetBaseData(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetCartesianState(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetContactData(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvGetContactData_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvGetContactData_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvGetContactData_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetFsmName(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetFsmState(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetGroupState(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetSnapshot(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetStandPose(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvSetFsmState(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvSetStandPose(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvSetVelocity(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response,o,q,input,output,allocator);
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete(o:client.Owner,q:*const records.Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response) {
    return node.callValue(records.Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response,o,q,input,output,allocator);
}
