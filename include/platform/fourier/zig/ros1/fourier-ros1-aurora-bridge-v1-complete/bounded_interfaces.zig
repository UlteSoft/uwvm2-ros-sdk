// @file bounded_interfaces.zig
// @brief Full fourier zig codecs and original record metadata.
// @details Complete fourier ros1_aurora_bridge_v1 values in zig. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
//! Generated typed interfaces; explicit owner and storage.
const std=@import("std");
const records=@import("records");
const client=@import("client");
const node=@import("rosnode");
/// @brief Call the selected uwvm_fourier_bridge/ExecuteMove service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeExecuteMoveRequest,
/// response=Ros1Uwvm_fourier_bridgeExecuteMoveResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeExecuteMove(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeExecuteMoveRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeExecuteMoveResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeExecuteMoveResponse,o,q,input,output,allocator);
}
/// @brief Call the selected uwvm_fourier_bridge/GetBaseData service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetBaseDataRequest,
/// response=Ros1Uwvm_fourier_bridgeGetBaseDataResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetBaseData(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeGetBaseDataRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeGetBaseDataResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeGetBaseDataResponse,o,q,input,output,allocator);
}
/// @brief Call the selected uwvm_fourier_bridge/GetCartesianState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetCartesianStateRequest,
/// response=Ros1Uwvm_fourier_bridgeGetCartesianStateResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetCartesianState(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeGetCartesianStateRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeGetCartesianStateResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeGetCartesianStateResponse,o,q,input,output,allocator);
}
/// @brief Call the selected uwvm_fourier_bridge/GetContactData service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetContactDataRequest,
/// response=Ros1Uwvm_fourier_bridgeGetContactDataResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetContactData(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeGetContactDataRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeGetContactDataResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeGetContactDataResponse,o,q,input,output,allocator);
}
/// @brief Call the selected uwvm_fourier_bridge/GetFsmName service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetFsmNameRequest,
/// response=Ros1Uwvm_fourier_bridgeGetFsmNameResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetFsmName(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeGetFsmNameRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeGetFsmNameResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeGetFsmNameResponse,o,q,input,output,allocator);
}
/// @brief Call the selected uwvm_fourier_bridge/GetFsmState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetFsmStateRequest,
/// response=Ros1Uwvm_fourier_bridgeGetFsmStateResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetFsmState(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeGetFsmStateRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeGetFsmStateResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeGetFsmStateResponse,o,q,input,output,allocator);
}
/// @brief Call the selected uwvm_fourier_bridge/GetGroupMotionState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest,
/// response=Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetGroupMotionState(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse,o,q,input,output,allocator);
}
/// @brief Call the selected uwvm_fourier_bridge/GetGroupMotorCfg service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest,
/// response=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetGroupMotorCfg(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse,o,q,input,output,allocator);
}
/// @brief Call the selected uwvm_fourier_bridge/GetGroupState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetGroupStateRequest,
/// response=Ros1Uwvm_fourier_bridgeGetGroupStateResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetGroupState(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeGetGroupStateRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeGetGroupStateResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeGetGroupStateResponse,o,q,input,output,allocator);
}
/// @brief Call the selected uwvm_fourier_bridge/GetSnapshot service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetSnapshotRequest,
/// response=Ros1Uwvm_fourier_bridgeGetSnapshotResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetSnapshot(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeGetSnapshotRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeGetSnapshotResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeGetSnapshotResponse,o,q,input,output,allocator);
}
/// @brief Call the selected uwvm_fourier_bridge/GetStandPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetStandPoseRequest,
/// response=Ros1Uwvm_fourier_bridgeGetStandPoseResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetStandPose(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeGetStandPoseRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeGetStandPoseResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeGetStandPoseResponse,o,q,input,output,allocator);
}
/// @brief Call the selected uwvm_fourier_bridge/GetUpperFsmName service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest,
/// response=Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetUpperFsmName(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse,o,q,input,output,allocator);
}
/// @brief Call the selected uwvm_fourier_bridge/GetUpperFsmState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest,
/// response=Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetUpperFsmState(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse,o,q,input,output,allocator);
}
/// @brief Call the selected uwvm_fourier_bridge/GetVelocitySource service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest,
/// response=Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetVelocitySource(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse,o,q,input,output,allocator);
}
/// @brief Call the selected uwvm_fourier_bridge/GetVelocitySourceName service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest,
/// response=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetVelocitySourceName(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete uwvm_fourier_bridge/GroupState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Uwvm_fourier_bridgeGroupState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Uwvm_fourier_bridgeGroupState(owner:client.Owner,value:*const records.Ros1Uwvm_fourier_bridgeGroupState,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete uwvm_fourier_bridge/GroupValues message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Uwvm_fourier_bridgeGroupValues.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Uwvm_fourier_bridgeGroupValues(owner:client.Owner,value:*const records.Ros1Uwvm_fourier_bridgeGroupValues,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete uwvm_fourier_bridge/MotionRecipe message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Uwvm_fourier_bridgeMotionRecipe.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Uwvm_fourier_bridgeMotionRecipe(owner:client.Owner,value:*const records.Ros1Uwvm_fourier_bridgeMotionRecipe,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected uwvm_fourier_bridge/SetFsmState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeSetFsmStateRequest,
/// response=Ros1Uwvm_fourier_bridgeSetFsmStateResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeSetFsmState(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeSetFsmStateRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeSetFsmStateResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeSetFsmStateResponse,o,q,input,output,allocator);
}
/// @brief Call the selected uwvm_fourier_bridge/SetGroupCommand service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeSetGroupCommandRequest,
/// response=Ros1Uwvm_fourier_bridgeSetGroupCommandResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeSetGroupCommand(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeSetGroupCommandRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeSetGroupCommandResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeSetGroupCommandResponse,o,q,input,output,allocator);
}
/// @brief Call the selected uwvm_fourier_bridge/SetMotorCfgPd service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest,
/// response=Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeSetMotorCfgPd(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse,o,q,input,output,allocator);
}
/// @brief Call the selected uwvm_fourier_bridge/SetStandPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeSetStandPoseRequest,
/// response=Ros1Uwvm_fourier_bridgeSetStandPoseResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeSetStandPose(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeSetStandPoseRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeSetStandPoseResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeSetStandPoseResponse,o,q,input,output,allocator);
}
/// @brief Call the selected uwvm_fourier_bridge/SetUpperFsmState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest,
/// response=Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeSetUpperFsmState(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse,o,q,input,output,allocator);
}
/// @brief Call the selected uwvm_fourier_bridge/SetVelocity service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeSetVelocityRequest,
/// response=Ros1Uwvm_fourier_bridgeSetVelocityResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeSetVelocity(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeSetVelocityRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeSetVelocityResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeSetVelocityResponse,o,q,input,output,allocator);
}
/// @brief Call the selected uwvm_fourier_bridge/SetVelocitySource service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest,
/// response=Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeSetVelocitySource(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete uwvm_fourier_bridge/Status message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Uwvm_fourier_bridgeStatus.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Uwvm_fourier_bridgeStatus(owner:client.Owner,value:*const records.Ros1Uwvm_fourier_bridgeStatus,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete uwvm_fourier_bridge/VelocityCommand message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Uwvm_fourier_bridgeVelocityCommand.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Uwvm_fourier_bridgeVelocityCommand(owner:client.Owner,value:*const records.Ros1Uwvm_fourier_bridgeVelocityCommand,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected uwvm_fourier_bridge/WaitGroupsMotionComplete service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest,
/// response=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeWaitGroupsMotionComplete(o:client.Owner,q:*const records.Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse) {
    return node.callValue(records.Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse,o,q,input,output,allocator);
}
