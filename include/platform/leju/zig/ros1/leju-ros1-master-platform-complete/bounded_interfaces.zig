// @file bounded_interfaces.zig
// @brief Full leju zig codecs and original record metadata.
// @details Complete leju ros1_master_platform values in zig. 532 original records retain 1587 fields and 378
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/leju/en_US/catalog/.
//! Generated typed interfaces; explicit owner and storage.
const std=@import("std");
const records=@import("records");
const client=@import("client");
const node=@import("rosnode");
/// @brief Publish one complete aruco_msgs/Marker message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Aruco_msgsMarker.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Aruco_msgsMarker(owner:client.Owner,value:*const records.Ros1Aruco_msgsMarker,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete aruco_msgs/MarkerArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Aruco_msgsMarkerArray.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Aruco_msgsMarkerArray(owner:client.Owner,value:*const records.Ros1Aruco_msgsMarkerArray,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected easy_handeye_msgs/CheckStartingPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Easy_handeye_msgsCheckStartingPoseRequest,
/// response=Ros1Easy_handeye_msgsCheckStartingPoseResponse.
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
pub fn call_Ros1Easy_handeye_msgsCheckStartingPose(o:client.Owner,q:*const records.Ros1Easy_handeye_msgsCheckStartingPoseRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Easy_handeye_msgsCheckStartingPoseResponse) {
    return node.callValue(records.Ros1Easy_handeye_msgsCheckStartingPoseResponse,o,q,input,output,allocator);
}
/// @brief Call the selected easy_handeye_msgs/ComputeCalibration service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Easy_handeye_msgsComputeCalibrationRequest,
/// response=Ros1Easy_handeye_msgsComputeCalibrationResponse.
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
pub fn call_Ros1Easy_handeye_msgsComputeCalibration(o:client.Owner,q:*const records.Ros1Easy_handeye_msgsComputeCalibrationRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Easy_handeye_msgsComputeCalibrationResponse) {
    return node.callValue(records.Ros1Easy_handeye_msgsComputeCalibrationResponse,o,q,input,output,allocator);
}
/// @brief Call the selected easy_handeye_msgs/EnumerateTargetPoses service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Easy_handeye_msgsEnumerateTargetPosesRequest,
/// response=Ros1Easy_handeye_msgsEnumerateTargetPosesResponse.
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
pub fn call_Ros1Easy_handeye_msgsEnumerateTargetPoses(o:client.Owner,q:*const records.Ros1Easy_handeye_msgsEnumerateTargetPosesRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Easy_handeye_msgsEnumerateTargetPosesResponse) {
    return node.callValue(records.Ros1Easy_handeye_msgsEnumerateTargetPosesResponse,o,q,input,output,allocator);
}
/// @brief Call the selected easy_handeye_msgs/ExecutePlan service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Easy_handeye_msgsExecutePlanRequest, response=Ros1Easy_handeye_msgsExecutePlanResponse.
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
pub fn call_Ros1Easy_handeye_msgsExecutePlan(o:client.Owner,q:*const records.Ros1Easy_handeye_msgsExecutePlanRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Easy_handeye_msgsExecutePlanResponse) {
    return node.callValue(records.Ros1Easy_handeye_msgsExecutePlanResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete easy_handeye_msgs/HandeyeCalibration message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Easy_handeye_msgsHandeyeCalibration.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Easy_handeye_msgsHandeyeCalibration(owner:client.Owner,value:*const records.Ros1Easy_handeye_msgsHandeyeCalibration,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected easy_handeye_msgs/ListAlgorithms service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Easy_handeye_msgsListAlgorithmsRequest,
/// response=Ros1Easy_handeye_msgsListAlgorithmsResponse.
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
pub fn call_Ros1Easy_handeye_msgsListAlgorithms(o:client.Owner,q:*const records.Ros1Easy_handeye_msgsListAlgorithmsRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Easy_handeye_msgsListAlgorithmsResponse) {
    return node.callValue(records.Ros1Easy_handeye_msgsListAlgorithmsResponse,o,q,input,output,allocator);
}
/// @brief Call the selected easy_handeye_msgs/PlanToSelectedTargetPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest,
/// response=Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse.
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
pub fn call_Ros1Easy_handeye_msgsPlanToSelectedTargetPose(o:client.Owner,q:*const records.Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse) {
    return node.callValue(records.Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse,o,q,input,output,allocator);
}
/// @brief Call the selected easy_handeye_msgs/RemoveSample service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Easy_handeye_msgsRemoveSampleRequest,
/// response=Ros1Easy_handeye_msgsRemoveSampleResponse.
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
pub fn call_Ros1Easy_handeye_msgsRemoveSample(o:client.Owner,q:*const records.Ros1Easy_handeye_msgsRemoveSampleRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Easy_handeye_msgsRemoveSampleResponse) {
    return node.callValue(records.Ros1Easy_handeye_msgsRemoveSampleResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete easy_handeye_msgs/SampleList message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Easy_handeye_msgsSampleList.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Easy_handeye_msgsSampleList(owner:client.Owner,value:*const records.Ros1Easy_handeye_msgsSampleList,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected easy_handeye_msgs/SelectTargetPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Easy_handeye_msgsSelectTargetPoseRequest,
/// response=Ros1Easy_handeye_msgsSelectTargetPoseResponse.
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
pub fn call_Ros1Easy_handeye_msgsSelectTargetPose(o:client.Owner,q:*const records.Ros1Easy_handeye_msgsSelectTargetPoseRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Easy_handeye_msgsSelectTargetPoseResponse) {
    return node.callValue(records.Ros1Easy_handeye_msgsSelectTargetPoseResponse,o,q,input,output,allocator);
}
/// @brief Call the selected easy_handeye_msgs/SetAlgorithm service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Easy_handeye_msgsSetAlgorithmRequest,
/// response=Ros1Easy_handeye_msgsSetAlgorithmResponse.
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
pub fn call_Ros1Easy_handeye_msgsSetAlgorithm(o:client.Owner,q:*const records.Ros1Easy_handeye_msgsSetAlgorithmRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Easy_handeye_msgsSetAlgorithmResponse) {
    return node.callValue(records.Ros1Easy_handeye_msgsSetAlgorithmResponse,o,q,input,output,allocator);
}
/// @brief Call the selected easy_handeye_msgs/TakeSample service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Easy_handeye_msgsTakeSampleRequest, response=Ros1Easy_handeye_msgsTakeSampleResponse.
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
pub fn call_Ros1Easy_handeye_msgsTakeSample(o:client.Owner,q:*const records.Ros1Easy_handeye_msgsTakeSampleRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Easy_handeye_msgsTakeSampleResponse) {
    return node.callValue(records.Ros1Easy_handeye_msgsTakeSampleResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete easy_handeye_msgs/TargetPoseList message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Easy_handeye_msgsTargetPoseList.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Easy_handeye_msgsTargetPoseList(owner:client.Owner,value:*const records.Ros1Easy_handeye_msgsTargetPoseList,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected grid_map_msgs/GetGridMap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Grid_map_msgsGetGridMapRequest, response=Ros1Grid_map_msgsGetGridMapResponse.
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
pub fn call_Ros1Grid_map_msgsGetGridMap(o:client.Owner,q:*const records.Ros1Grid_map_msgsGetGridMapRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Grid_map_msgsGetGridMapResponse) {
    return node.callValue(records.Ros1Grid_map_msgsGetGridMapResponse,o,q,input,output,allocator);
}
/// @brief Call the selected grid_map_msgs/GetGridMapInfo service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Grid_map_msgsGetGridMapInfoRequest, response=Ros1Grid_map_msgsGetGridMapInfoResponse.
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
pub fn call_Ros1Grid_map_msgsGetGridMapInfo(o:client.Owner,q:*const records.Ros1Grid_map_msgsGetGridMapInfoRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Grid_map_msgsGetGridMapInfoResponse) {
    return node.callValue(records.Ros1Grid_map_msgsGetGridMapInfoResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete grid_map_msgs/GridMap message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Grid_map_msgsGridMap.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Grid_map_msgsGridMap(owner:client.Owner,value:*const records.Ros1Grid_map_msgsGridMap,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete grid_map_msgs/GridMapInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Grid_map_msgsGridMapInfo.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Grid_map_msgsGridMapInfo(owner:client.Owner,value:*const records.Ros1Grid_map_msgsGridMapInfo,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected grid_map_msgs/ProcessFile service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Grid_map_msgsProcessFileRequest, response=Ros1Grid_map_msgsProcessFileResponse.
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
pub fn call_Ros1Grid_map_msgsProcessFile(o:client.Owner,q:*const records.Ros1Grid_map_msgsProcessFileRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Grid_map_msgsProcessFileResponse) {
    return node.callValue(records.Ros1Grid_map_msgsProcessFileResponse,o,q,input,output,allocator);
}
/// @brief Call the selected grid_map_msgs/SetGridMap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Grid_map_msgsSetGridMapRequest, response=Ros1Grid_map_msgsSetGridMapResponse.
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
pub fn call_Ros1Grid_map_msgsSetGridMap(o:client.Owner,q:*const records.Ros1Grid_map_msgsSetGridMapRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Grid_map_msgsSetGridMapResponse) {
    return node.callValue(records.Ros1Grid_map_msgsSetGridMapResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete h12pro_controller_node/ECJointMotordata message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1H12pro_controller_nodeECJointMotordata.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1H12pro_controller_nodeECJointMotordata(owner:client.Owner,value:*const records.Ros1H12pro_controller_nodeECJointMotordata,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected h12pro_controller_node/ExecuteArmAction service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1H12pro_controller_nodeExecuteArmActionRequest,
/// response=Ros1H12pro_controller_nodeExecuteArmActionResponse.
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
pub fn call_Ros1H12pro_controller_nodeExecuteArmAction(o:client.Owner,q:*const records.Ros1H12pro_controller_nodeExecuteArmActionRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1H12pro_controller_nodeExecuteArmActionResponse) {
    return node.callValue(records.Ros1H12pro_controller_nodeExecuteArmActionResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete h12pro_controller_node/RobotActionState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1H12pro_controller_nodeRobotActionState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1H12pro_controller_nodeRobotActionState(owner:client.Owner,value:*const records.Ros1H12pro_controller_nodeRobotActionState,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete h12pro_controller_node/UpdateH12CustomizeConfig message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1H12pro_controller_nodeUpdateH12CustomizeConfig.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1H12pro_controller_nodeUpdateH12CustomizeConfig(owner:client.Owner,value:*const records.Ros1H12pro_controller_nodeUpdateH12CustomizeConfig,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected h12pro_controller_node/changeAMBACCtrlMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest,
/// response=Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse.
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
pub fn call_Ros1H12pro_controller_nodeChangeAMBACCtrlMode(o:client.Owner,q:*const records.Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse) {
    return node.callValue(records.Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse,o,q,input,output,allocator);
}
/// @brief Call the selected h12pro_controller_node/changeArmCtrlMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1H12pro_controller_nodeChangeArmCtrlModeRequest,
/// response=Ros1H12pro_controller_nodeChangeArmCtrlModeResponse.
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
pub fn call_Ros1H12pro_controller_nodeChangeArmCtrlMode(o:client.Owner,q:*const records.Ros1H12pro_controller_nodeChangeArmCtrlModeRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1H12pro_controller_nodeChangeArmCtrlModeResponse) {
    return node.callValue(records.Ros1H12pro_controller_nodeChangeArmCtrlModeResponse,o,q,input,output,allocator);
}
/// @brief Call the selected h12pro_controller_node/changeHandArmPosesByConfigName service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest,
/// response=Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse.
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
pub fn call_Ros1H12pro_controller_nodeChangeHandArmPosesByConfigName(o:client.Owner,q:*const records.Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse) {
    return node.callValue(records.Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse,o,q,input,output,
        allocator);
}
/// @brief Publish one complete h12pro_controller_node/h12proRemoteControllerChannel message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1H12pro_controller_nodeH12proRemoteControllerChannel.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1H12pro_controller_nodeH12proRemoteControllerChannel(owner:client.Owner,value:*const records.Ros1H12pro_controller_nodeH12proRemoteControllerChannel,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected h12pro_controller_node/playmusic service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1H12pro_controller_nodePlaymusicRequest,
/// response=Ros1H12pro_controller_nodePlaymusicResponse.
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
pub fn call_Ros1H12pro_controller_nodePlaymusic(o:client.Owner,q:*const records.Ros1H12pro_controller_nodePlaymusicRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1H12pro_controller_nodePlaymusicResponse) {
    return node.callValue(records.Ros1H12pro_controller_nodePlaymusicResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete h12pro_controller_node/robotPhase message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1H12pro_controller_nodeRobotPhase.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1H12pro_controller_nodeRobotPhase(owner:client.Owner,value:*const records.Ros1H12pro_controller_nodeRobotPhase,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete h12pro_controller_node/robotQVTau message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1H12pro_controller_nodeRobotQVTau.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1H12pro_controller_nodeRobotQVTau(owner:client.Owner,value:*const records.Ros1H12pro_controller_nodeRobotQVTau,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete h12pro_controller_node/robotTorsoState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1H12pro_controller_nodeRobotTorsoState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1H12pro_controller_nodeRobotTorsoState(owner:client.Owner,value:*const records.Ros1H12pro_controller_nodeRobotTorsoState,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected h12pro_controller_node/srvChangePhases service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1H12pro_controller_nodeSrvChangePhasesRequest,
/// response=Ros1H12pro_controller_nodeSrvChangePhasesResponse.
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
pub fn call_Ros1H12pro_controller_nodeSrvChangePhases(o:client.Owner,q:*const records.Ros1H12pro_controller_nodeSrvChangePhasesRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1H12pro_controller_nodeSrvChangePhasesResponse) {
    return node.callValue(records.Ros1H12pro_controller_nodeSrvChangePhasesResponse,o,q,input,output,allocator);
}
/// @brief Call the selected h12pro_controller_node/srvClearPositionCMD service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1H12pro_controller_nodeSrvClearPositionCMDRequest,
/// response=Ros1H12pro_controller_nodeSrvClearPositionCMDResponse.
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
pub fn call_Ros1H12pro_controller_nodeSrvClearPositionCMD(o:client.Owner,q:*const records.Ros1H12pro_controller_nodeSrvClearPositionCMDRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1H12pro_controller_nodeSrvClearPositionCMDResponse) {
    return node.callValue(records.Ros1H12pro_controller_nodeSrvClearPositionCMDResponse,o,q,input,output,allocator);
}
/// @brief Call the selected h12pro_controller_node/srvchangeCtlMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1H12pro_controller_nodeSrvchangeCtlModeRequest,
/// response=Ros1H12pro_controller_nodeSrvchangeCtlModeResponse.
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
pub fn call_Ros1H12pro_controller_nodeSrvchangeCtlMode(o:client.Owner,q:*const records.Ros1H12pro_controller_nodeSrvchangeCtlModeRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1H12pro_controller_nodeSrvchangeCtlModeResponse) {
    return node.callValue(records.Ros1H12pro_controller_nodeSrvchangeCtlModeResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete h12pro_controller_node/walkCommand message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1H12pro_controller_nodeWalkCommand.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1H12pro_controller_nodeWalkCommand(owner:client.Owner,value:*const records.Ros1H12pro_controller_nodeWalkCommand,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete handcontrollerdemorosnode/armPoseWithTimeStamp message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp(owner:client.Owner,value:*const records.Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected handcontrollerdemorosnode/changeHandTrackingMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest,
/// response=Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse.
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
pub fn call_Ros1HandcontrollerdemorosnodeChangeHandTrackingMode(o:client.Owner,q:*const records.Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse) {
    return node.callValue(records.Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse,o,q,input,output,allocator);
}
/// @brief Call the selected handcontrollerdemorosnode/controlEndHand service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1HandcontrollerdemorosnodeControlEndHandRequest,
/// response=Ros1HandcontrollerdemorosnodeControlEndHandResponse.
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
pub fn call_Ros1HandcontrollerdemorosnodeControlEndHand(o:client.Owner,q:*const records.Ros1HandcontrollerdemorosnodeControlEndHandRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1HandcontrollerdemorosnodeControlEndHandResponse) {
    return node.callValue(records.Ros1HandcontrollerdemorosnodeControlEndHandResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete handcontrollerdemorosnode/handRotationEular message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1HandcontrollerdemorosnodeHandRotationEular.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1HandcontrollerdemorosnodeHandRotationEular(owner:client.Owner,value:*const records.Ros1HandcontrollerdemorosnodeHandRotationEular,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete handcontrollerdemorosnode/robotArmPose message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1HandcontrollerdemorosnodeRobotArmPose.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1HandcontrollerdemorosnodeRobotArmPose(owner:client.Owner,value:*const records.Ros1HandcontrollerdemorosnodeRobotArmPose,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete handcontrollerdemorosnode/robotHandPosition message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1HandcontrollerdemorosnodeRobotHandPosition.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1HandcontrollerdemorosnodeRobotHandPosition(owner:client.Owner,value:*const records.Ros1HandcontrollerdemorosnodeRobotHandPosition,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected handcontrollerdemorosnode/srvArmIK service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1HandcontrollerdemorosnodeSrvArmIKRequest,
/// response=Ros1HandcontrollerdemorosnodeSrvArmIKResponse.
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
pub fn call_Ros1HandcontrollerdemorosnodeSrvArmIK(o:client.Owner,q:*const records.Ros1HandcontrollerdemorosnodeSrvArmIKRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1HandcontrollerdemorosnodeSrvArmIKResponse) {
    return node.callValue(records.Ros1HandcontrollerdemorosnodeSrvArmIKResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete hardware_node/horizontalMotionByStep message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Hardware_nodeHorizontalMotionByStep.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Hardware_nodeHorizontalMotionByStep(owner:client.Owner,value:*const records.Ros1Hardware_nodeHorizontalMotionByStep,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete hardware_node/robotHeadMotionData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Hardware_nodeRobotHeadMotionData.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Hardware_nodeRobotHeadMotionData(owner:client.Owner,value:*const records.Ros1Hardware_nodeRobotHeadMotionData,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected humanoid_arm_control/armControl service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Humanoid_arm_controlArmControlRequest,
/// response=Ros1Humanoid_arm_controlArmControlResponse.
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
pub fn call_Ros1Humanoid_arm_controlArmControl(o:client.Owner,q:*const records.Ros1Humanoid_arm_controlArmControlRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Humanoid_arm_controlArmControlResponse) {
    return node.callValue(records.Ros1Humanoid_arm_controlArmControlResponse,o,q,input,output,allocator);
}
/// @brief Call the selected humanoid_arm_control/handUpAndGrab service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Humanoid_arm_controlHandUpAndGrabRequest,
/// response=Ros1Humanoid_arm_controlHandUpAndGrabResponse.
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
pub fn call_Ros1Humanoid_arm_controlHandUpAndGrab(o:client.Owner,q:*const records.Ros1Humanoid_arm_controlHandUpAndGrabRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Humanoid_arm_controlHandUpAndGrabResponse) {
    return node.callValue(records.Ros1Humanoid_arm_controlHandUpAndGrabResponse,o,q,input,output,allocator);
}
/// @brief Call the selected humanoid_plan_arm_trajectory/ExecuteArmAction service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest,
/// response=Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse.
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
pub fn call_Ros1Humanoid_plan_arm_trajectoryExecuteArmAction(o:client.Owner,q:*const records.Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse) {
    return node.callValue(records.Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete humanoid_plan_arm_trajectory/RobotActionState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Humanoid_plan_arm_trajectoryRobotActionState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Humanoid_plan_arm_trajectoryRobotActionState(owner:client.Owner,value:*const records.Ros1Humanoid_plan_arm_trajectoryRobotActionState,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete humanoid_plan_arm_trajectory/bezierCurveCubicPoint message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint(owner:client.Owner,value:*const records.Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete humanoid_plan_arm_trajectory/jointBezierTrajectory message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory(owner:client.Owner,value:*const records.Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete humanoid_plan_arm_trajectory/planArmState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Humanoid_plan_arm_trajectoryPlanArmState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Humanoid_plan_arm_trajectoryPlanArmState(owner:client.Owner,value:*const records.Ros1Humanoid_plan_arm_trajectoryPlanArmState,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurve service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest,
/// response=Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse.
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
pub fn call_Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurve(o:client.Owner,q:*const records.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse) {
    return node.callValue(records.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse,o,q,input,
        output,allocator);
}
/// @brief Call the selected humanoid_plan_arm_trajectory/planArmTrajectoryCubicSpline service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest,
/// response=Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse.
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
pub fn call_Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSpline(o:client.Owner,q:*const records.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse) {
    return node.callValue(records.Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse,o,q,input,
        output,allocator);
}
/// @brief Publish one complete kindr_msgs/VectorAtPosition message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kindr_msgsVectorAtPosition.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kindr_msgsVectorAtPosition(owner:client.Owner,value:*const records.Ros1Kindr_msgsVectorAtPosition,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_audio_player/audio_status service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_audio_playerAudio_statusRequest,
/// response=Ros1Kuavo_audio_playerAudio_statusResponse.
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
pub fn call_Ros1Kuavo_audio_playerAudio_status(o:client.Owner,q:*const records.Ros1Kuavo_audio_playerAudio_statusRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_audio_playerAudio_statusResponse) {
    return node.callValue(records.Ros1Kuavo_audio_playerAudio_statusResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_audio_player/playmusic service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_audio_playerPlaymusicRequest, response=Ros1Kuavo_audio_playerPlaymusicResponse.
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
pub fn call_Ros1Kuavo_audio_playerPlaymusic(o:client.Owner,q:*const records.Ros1Kuavo_audio_playerPlaymusicRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_audio_playerPlaymusicResponse) {
    return node.callValue(records.Ros1Kuavo_audio_playerPlaymusicResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_mapping/DeleteMap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingDeleteMapRequest, response=Ros1Kuavo_mappingDeleteMapResponse.
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
pub fn call_Ros1Kuavo_mappingDeleteMap(o:client.Owner,q:*const records.Ros1Kuavo_mappingDeleteMapRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_mappingDeleteMapResponse) {
    return node.callValue(records.Ros1Kuavo_mappingDeleteMapResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_mapping/EditMap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingEditMapRequest, response=Ros1Kuavo_mappingEditMapResponse.
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
pub fn call_Ros1Kuavo_mappingEditMap(o:client.Owner,q:*const records.Ros1Kuavo_mappingEditMapRequest,input:[]u8,output:[]u8,
    allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_mappingEditMapResponse) {
    return node.callValue(records.Ros1Kuavo_mappingEditMapResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_mapping/GetAllMaps service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingGetAllMapsRequest, response=Ros1Kuavo_mappingGetAllMapsResponse.
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
pub fn call_Ros1Kuavo_mappingGetAllMaps(o:client.Owner,q:*const records.Ros1Kuavo_mappingGetAllMapsRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_mappingGetAllMapsResponse) {
    return node.callValue(records.Ros1Kuavo_mappingGetAllMapsResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_mapping/GetCurrentMap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingGetCurrentMapRequest, response=Ros1Kuavo_mappingGetCurrentMapResponse.
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
pub fn call_Ros1Kuavo_mappingGetCurrentMap(o:client.Owner,q:*const records.Ros1Kuavo_mappingGetCurrentMapRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_mappingGetCurrentMapResponse) {
    return node.callValue(records.Ros1Kuavo_mappingGetCurrentMapResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_mapping/InitialPoseWithTaskPoint service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingInitialPoseWithTaskPointRequest,
/// response=Ros1Kuavo_mappingInitialPoseWithTaskPointResponse.
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
pub fn call_Ros1Kuavo_mappingInitialPoseWithTaskPoint(o:client.Owner,q:*const records.Ros1Kuavo_mappingInitialPoseWithTaskPointRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_mappingInitialPoseWithTaskPointResponse) {
    return node.callValue(records.Ros1Kuavo_mappingInitialPoseWithTaskPointResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_mapping/LoadMap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingLoadMapRequest, response=Ros1Kuavo_mappingLoadMapResponse.
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
pub fn call_Ros1Kuavo_mappingLoadMap(o:client.Owner,q:*const records.Ros1Kuavo_mappingLoadMapRequest,input:[]u8,output:[]u8,
    allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_mappingLoadMapResponse) {
    return node.callValue(records.Ros1Kuavo_mappingLoadMapResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_mapping/NavigateToTaskPoint service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingNavigateToTaskPointRequest,
/// response=Ros1Kuavo_mappingNavigateToTaskPointResponse.
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
pub fn call_Ros1Kuavo_mappingNavigateToTaskPoint(o:client.Owner,q:*const records.Ros1Kuavo_mappingNavigateToTaskPointRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_mappingNavigateToTaskPointResponse) {
    return node.callValue(records.Ros1Kuavo_mappingNavigateToTaskPointResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_mapping/RenameMap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingRenameMapRequest, response=Ros1Kuavo_mappingRenameMapResponse.
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
pub fn call_Ros1Kuavo_mappingRenameMap(o:client.Owner,q:*const records.Ros1Kuavo_mappingRenameMapRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_mappingRenameMapResponse) {
    return node.callValue(records.Ros1Kuavo_mappingRenameMapResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_mapping/SaveMap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingSaveMapRequest, response=Ros1Kuavo_mappingSaveMapResponse.
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
pub fn call_Ros1Kuavo_mappingSaveMap(o:client.Owner,q:*const records.Ros1Kuavo_mappingSaveMapRequest,input:[]u8,output:[]u8,
    allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_mappingSaveMapResponse) {
    return node.callValue(records.Ros1Kuavo_mappingSaveMapResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_mapping/SetInitialPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingSetInitialPoseRequest, response=Ros1Kuavo_mappingSetInitialPoseResponse.
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
pub fn call_Ros1Kuavo_mappingSetInitialPose(o:client.Owner,q:*const records.Ros1Kuavo_mappingSetInitialPoseRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_mappingSetInitialPoseResponse) {
    return node.callValue(records.Ros1Kuavo_mappingSetInitialPoseResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_mapping/StartMapping service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingStartMappingRequest, response=Ros1Kuavo_mappingStartMappingResponse.
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
pub fn call_Ros1Kuavo_mappingStartMapping(o:client.Owner,q:*const records.Ros1Kuavo_mappingStartMappingRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_mappingStartMappingResponse) {
    return node.callValue(records.Ros1Kuavo_mappingStartMappingResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_mapping/StopMapping service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingStopMappingRequest, response=Ros1Kuavo_mappingStopMappingResponse.
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
pub fn call_Ros1Kuavo_mappingStopMapping(o:client.Owner,q:*const records.Ros1Kuavo_mappingStopMappingRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_mappingStopMappingResponse) {
    return node.callValue(records.Ros1Kuavo_mappingStopMappingResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_mapping/TaskPoint message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_mappingTaskPoint.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_mappingTaskPoint(owner:client.Owner,value:*const records.Ros1Kuavo_mappingTaskPoint,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_mapping/TaskPointOperation service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingTaskPointOperationRequest,
/// response=Ros1Kuavo_mappingTaskPointOperationResponse.
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
pub fn call_Ros1Kuavo_mappingTaskPointOperation(o:client.Owner,q:*const records.Ros1Kuavo_mappingTaskPointOperationRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_mappingTaskPointOperationResponse) {
    return node.callValue(records.Ros1Kuavo_mappingTaskPointOperationResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/AprilTagDetection message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsAprilTagDetection.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsAprilTagDetection(owner:client.Owner,value:*const records.Ros1Kuavo_msgsAprilTagDetection,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/AprilTagDetectionArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsAprilTagDetectionArray.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsAprilTagDetectionArray(owner:client.Owner,value:*const records.Ros1Kuavo_msgsAprilTagDetectionArray,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/AudioPlaybackStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsAudioPlaybackStatus.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsAudioPlaybackStatus(owner:client.Owner,value:*const records.Ros1Kuavo_msgsAudioPlaybackStatus,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/AudioReceiverData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsAudioReceiverData.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsAudioReceiverData(owner:client.Owner,value:*const records.Ros1Kuavo_msgsAudioReceiverData,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/BatteryInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsBatteryInfo.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsBatteryInfo(owner:client.Owner,value:*const records.Ros1Kuavo_msgsBatteryInfo,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/Color message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsColor.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsColor(owner:client.Owner,value:*const records.Ros1Kuavo_msgsColor,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/ControllerSwitchEvent message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsControllerSwitchEvent.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsControllerSwitchEvent(owner:client.Owner,value:*const records.Ros1Kuavo_msgsControllerSwitchEvent,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/CreatePath service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsCreatePathRequest, response=Ros1Kuavo_msgsCreatePathResponse.
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
pub fn call_Ros1Kuavo_msgsCreatePath(o:client.Owner,q:*const records.Ros1Kuavo_msgsCreatePathRequest,input:[]u8,output:[]u8,
    allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsCreatePathResponse) {
    return node.callValue(records.Ros1Kuavo_msgsCreatePathResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/DanceTrajectoryState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsDanceTrajectoryState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsDanceTrajectoryState(owner:client.Owner,value:*const records.Ros1Kuavo_msgsDanceTrajectoryState,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/ExecuteArmAction service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsExecuteArmActionRequest, response=Ros1Kuavo_msgsExecuteArmActionResponse.
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
pub fn call_Ros1Kuavo_msgsExecuteArmAction(o:client.Owner,q:*const records.Ros1Kuavo_msgsExecuteArmActionRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsExecuteArmActionResponse) {
    return node.callValue(records.Ros1Kuavo_msgsExecuteArmActionResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/FTsensorData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFTsensorData.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsFTsensorData(owner:client.Owner,value:*const records.Ros1Kuavo_msgsFTsensorData,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/FaceBoundingBox message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFaceBoundingBox.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsFaceBoundingBox(owner:client.Owner,value:*const records.Ros1Kuavo_msgsFaceBoundingBox,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/FallStandCommand service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsFallStandCommandRequest, response=Ros1Kuavo_msgsFallStandCommandResponse.
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
pub fn call_Ros1Kuavo_msgsFallStandCommand(o:client.Owner,q:*const records.Ros1Kuavo_msgsFallStandCommandRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsFallStandCommandResponse) {
    return node.callValue(records.Ros1Kuavo_msgsFallStandCommandResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/Float32MultiArrayStamped message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsFloat32MultiArrayStamped.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsFloat32MultiArrayStamped(owner:client.Owner,value:*const records.Ros1Kuavo_msgsFloat32MultiArrayStamped,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/GetAllMaps service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetAllMapsRequest, response=Ros1Kuavo_msgsGetAllMapsResponse.
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
pub fn call_Ros1Kuavo_msgsGetAllMaps(o:client.Owner,q:*const records.Ros1Kuavo_msgsGetAllMapsRequest,input:[]u8,output:[]u8,
    allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsGetAllMapsResponse) {
    return node.callValue(records.Ros1Kuavo_msgsGetAllMapsResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/GetBatteryInfo service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetBatteryInfoRequest, response=Ros1Kuavo_msgsGetBatteryInfoResponse.
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
pub fn call_Ros1Kuavo_msgsGetBatteryInfo(o:client.Owner,q:*const records.Ros1Kuavo_msgsGetBatteryInfoRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsGetBatteryInfoResponse) {
    return node.callValue(records.Ros1Kuavo_msgsGetBatteryInfoResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/GetCurrentMap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetCurrentMapRequest, response=Ros1Kuavo_msgsGetCurrentMapResponse.
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
pub fn call_Ros1Kuavo_msgsGetCurrentMap(o:client.Owner,q:*const records.Ros1Kuavo_msgsGetCurrentMapRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsGetCurrentMapResponse) {
    return node.callValue(records.Ros1Kuavo_msgsGetCurrentMapResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/GetPowerBoardStatus service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetPowerBoardStatusRequest,
/// response=Ros1Kuavo_msgsGetPowerBoardStatusResponse.
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
pub fn call_Ros1Kuavo_msgsGetPowerBoardStatus(o:client.Owner,q:*const records.Ros1Kuavo_msgsGetPowerBoardStatusRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsGetPowerBoardStatusResponse) {
    return node.callValue(records.Ros1Kuavo_msgsGetPowerBoardStatusResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/GetStringList service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetStringListRequest, response=Ros1Kuavo_msgsGetStringListResponse.
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
pub fn call_Ros1Kuavo_msgsGetStringList(o:client.Owner,q:*const records.Ros1Kuavo_msgsGetStringListRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsGetStringListResponse) {
    return node.callValue(records.Ros1Kuavo_msgsGetStringListResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/GetTargetPartPoseInCamera service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest,
/// response=Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse.
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
pub fn call_Ros1Kuavo_msgsGetTargetPartPoseInCamera(o:client.Owner,q:*const records.Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse) {
    return node.callValue(records.Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/InitialPoseWithTaskPoint service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsInitialPoseWithTaskPointRequest,
/// response=Ros1Kuavo_msgsInitialPoseWithTaskPointResponse.
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
pub fn call_Ros1Kuavo_msgsInitialPoseWithTaskPoint(o:client.Owner,q:*const records.Ros1Kuavo_msgsInitialPoseWithTaskPointRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsInitialPoseWithTaskPointResponse) {
    return node.callValue(records.Ros1Kuavo_msgsInitialPoseWithTaskPointResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/JoySticks message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsJoySticks.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsJoySticks(owner:client.Owner,value:*const records.Ros1Kuavo_msgsJoySticks,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/LoadMap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsLoadMapRequest, response=Ros1Kuavo_msgsLoadMapResponse.
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
pub fn call_Ros1Kuavo_msgsLoadMap(o:client.Owner,q:*const records.Ros1Kuavo_msgsLoadMapRequest,input:[]u8,output:[]u8,
    allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsLoadMapResponse) {
    return node.callValue(records.Ros1Kuavo_msgsLoadMapResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/Metadata message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMetadata.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsMetadata(owner:client.Owner,value:*const records.Ros1Kuavo_msgsMetadata,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/MmDetectionMsg message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMmDetectionMsg.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsMmDetectionMsg(owner:client.Owner,value:*const records.Ros1Kuavo_msgsMmDetectionMsg,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/MocapPoseRetarget message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMocapPoseRetarget.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsMocapPoseRetarget(owner:client.Owner,value:*const records.Ros1Kuavo_msgsMocapPoseRetarget,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/NavigateToTaskPoint service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsNavigateToTaskPointRequest,
/// response=Ros1Kuavo_msgsNavigateToTaskPointResponse.
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
pub fn call_Ros1Kuavo_msgsNavigateToTaskPoint(o:client.Owner,q:*const records.Ros1Kuavo_msgsNavigateToTaskPointRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsNavigateToTaskPointResponse) {
    return node.callValue(records.Ros1Kuavo_msgsNavigateToTaskPointResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/PlayMusicImmediate service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsPlayMusicImmediateRequest, response=Ros1Kuavo_msgsPlayMusicImmediateResponse.
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
pub fn call_Ros1Kuavo_msgsPlayMusicImmediate(o:client.Owner,q:*const records.Ros1Kuavo_msgsPlayMusicImmediateRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsPlayMusicImmediateResponse) {
    return node.callValue(records.Ros1Kuavo_msgsPlayMusicImmediateResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/PowerBoardStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsPowerBoardStatus.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsPowerBoardStatus(owner:client.Owner,value:*const records.Ros1Kuavo_msgsPowerBoardStatus,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/RelaySelectChannel service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsRelaySelectChannelRequest, response=Ros1Kuavo_msgsRelaySelectChannelResponse.
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
pub fn call_Ros1Kuavo_msgsRelaySelectChannel(o:client.Owner,q:*const records.Ros1Kuavo_msgsRelaySelectChannelRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsRelaySelectChannelResponse) {
    return node.callValue(records.Ros1Kuavo_msgsRelaySelectChannelResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/RepublishTFs service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsRepublishTFsRequest, response=Ros1Kuavo_msgsRepublishTFsResponse.
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
pub fn call_Ros1Kuavo_msgsRepublishTFs(o:client.Owner,q:*const records.Ros1Kuavo_msgsRepublishTFsRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsRepublishTFsResponse) {
    return node.callValue(records.Ros1Kuavo_msgsRepublishTFsResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/RigidBodyDescription message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRigidBodyDescription.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsRigidBodyDescription(owner:client.Owner,value:*const records.Ros1Kuavo_msgsRigidBodyDescription,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/RigidBodyFrame message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRigidBodyFrame.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsRigidBodyFrame(owner:client.Owner,value:*const records.Ros1Kuavo_msgsRigidBodyFrame,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/RobotActionState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotActionState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsRobotActionState(owner:client.Owner,value:*const records.Ros1Kuavo_msgsRobotActionState,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/SetHeadControlMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetHeadControlModeRequest, response=Ros1Kuavo_msgsSetHeadControlModeResponse.
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
pub fn call_Ros1Kuavo_msgsSetHeadControlMode(o:client.Owner,q:*const records.Ros1Kuavo_msgsSetHeadControlModeRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsSetHeadControlModeResponse) {
    return node.callValue(records.Ros1Kuavo_msgsSetHeadControlModeResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/SetIncrementalArmTrajLink service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest,
/// response=Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse.
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
pub fn call_Ros1Kuavo_msgsSetIncrementalArmTrajLink(o:client.Owner,q:*const records.Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse) {
    return node.callValue(records.Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/SetInitialPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetInitialPoseRequest, response=Ros1Kuavo_msgsSetInitialPoseResponse.
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
pub fn call_Ros1Kuavo_msgsSetInitialPose(o:client.Owner,q:*const records.Ros1Kuavo_msgsSetInitialPoseRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsSetInitialPoseResponse) {
    return node.callValue(records.Ros1Kuavo_msgsSetInitialPoseResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/SetJoyTopic service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetJoyTopicRequest, response=Ros1Kuavo_msgsSetJoyTopicResponse.
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
pub fn call_Ros1Kuavo_msgsSetJoyTopic(o:client.Owner,q:*const records.Ros1Kuavo_msgsSetJoyTopicRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsSetJoyTopicResponse) {
    return node.callValue(records.Ros1Kuavo_msgsSetJoyTopicResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/SetLEDMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetLEDModeRequest, response=Ros1Kuavo_msgsSetLEDModeResponse.
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
pub fn call_Ros1Kuavo_msgsSetLEDMode(o:client.Owner,q:*const records.Ros1Kuavo_msgsSetLEDModeRequest,input:[]u8,output:[]u8,
    allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsSetLEDModeResponse) {
    return node.callValue(records.Ros1Kuavo_msgsSetLEDModeResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/SetLEDMode_free service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetLEDMode_freeRequest, response=Ros1Kuavo_msgsSetLEDMode_freeResponse.
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
pub fn call_Ros1Kuavo_msgsSetLEDMode_free(o:client.Owner,q:*const records.Ros1Kuavo_msgsSetLEDMode_freeRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsSetLEDMode_freeResponse) {
    return node.callValue(records.Ros1Kuavo_msgsSetLEDMode_freeResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/SetString service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetStringRequest, response=Ros1Kuavo_msgsSetStringResponse.
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
pub fn call_Ros1Kuavo_msgsSetString(o:client.Owner,q:*const records.Ros1Kuavo_msgsSetStringRequest,input:[]u8,output:[]u8,
    allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsSetStringResponse) {
    return node.callValue(records.Ros1Kuavo_msgsSetStringResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/SkeletonFrame message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsSkeletonFrame.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsSkeletonFrame(owner:client.Owner,value:*const records.Ros1Kuavo_msgsSkeletonFrame,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/SpeechSynthesis service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSpeechSynthesisRequest, response=Ros1Kuavo_msgsSpeechSynthesisResponse.
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
pub fn call_Ros1Kuavo_msgsSpeechSynthesis(o:client.Owner,q:*const records.Ros1Kuavo_msgsSpeechSynthesisRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsSpeechSynthesisResponse) {
    return node.callValue(records.Ros1Kuavo_msgsSpeechSynthesisResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/TFArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTFArray.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsTFArray(owner:client.Owner,value:*const records.Ros1Kuavo_msgsTFArray,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/TaskPoint message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTaskPoint.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsTaskPoint(owner:client.Owner,value:*const records.Ros1Kuavo_msgsTaskPoint,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/TaskPointOperation service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsTaskPointOperationRequest, response=Ros1Kuavo_msgsTaskPointOperationResponse.
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
pub fn call_Ros1Kuavo_msgsTaskPointOperation(o:client.Owner,q:*const records.Ros1Kuavo_msgsTaskPointOperationRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsTaskPointOperationResponse) {
    return node.callValue(records.Ros1Kuavo_msgsTaskPointOperationResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/TransportModeCommand service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsTransportModeCommandRequest,
/// response=Ros1Kuavo_msgsTransportModeCommandResponse.
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
pub fn call_Ros1Kuavo_msgsTransportModeCommand(o:client.Owner,q:*const records.Ros1Kuavo_msgsTransportModeCommandRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsTransportModeCommandResponse) {
    return node.callValue(records.Ros1Kuavo_msgsTransportModeCommandResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/VMPTrajectoryState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsVMPTrajectoryState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsVMPTrajectoryState(owner:client.Owner,value:*const records.Ros1Kuavo_msgsVMPTrajectoryState,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/accessIkSolve service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsAccessIkSolveRequest, response=Ros1Kuavo_msgsAccessIkSolveResponse.
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
pub fn call_Ros1Kuavo_msgsAccessIkSolve(o:client.Owner,q:*const records.Ros1Kuavo_msgsAccessIkSolveRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsAccessIkSolveResponse) {
    return node.callValue(records.Ros1Kuavo_msgsAccessIkSolveResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/adjustZeroPoint service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsAdjustZeroPointRequest, response=Ros1Kuavo_msgsAdjustZeroPointResponse.
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
pub fn call_Ros1Kuavo_msgsAdjustZeroPoint(o:client.Owner,q:*const records.Ros1Kuavo_msgsAdjustZeroPointRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsAdjustZeroPointResponse) {
    return node.callValue(records.Ros1Kuavo_msgsAdjustZeroPointResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/armCollisionCheckInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsArmCollisionCheckInfo.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsArmCollisionCheckInfo(owner:client.Owner,value:*const records.Ros1Kuavo_msgsArmCollisionCheckInfo,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/armHandPose message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsArmHandPose.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsArmHandPose(owner:client.Owner,value:*const records.Ros1Kuavo_msgsArmHandPose,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/armHandPoseFree message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsArmHandPoseFree.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsArmHandPoseFree(owner:client.Owner,value:*const records.Ros1Kuavo_msgsArmHandPoseFree,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/armPoseWithTimeStamp message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsArmPoseWithTimeStamp.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsArmPoseWithTimeStamp(owner:client.Owner,value:*const records.Ros1Kuavo_msgsArmPoseWithTimeStamp,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/armTargetPoses message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsArmTargetPoses.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsArmTargetPoses(owner:client.Owner,value:*const records.Ros1Kuavo_msgsArmTargetPoses,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/bezierCurveCubicPoint message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsBezierCurveCubicPoint.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsBezierCurveCubicPoint(owner:client.Owner,value:*const records.Ros1Kuavo_msgsBezierCurveCubicPoint,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/changeArmCtrlMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsChangeArmCtrlModeRequest, response=Ros1Kuavo_msgsChangeArmCtrlModeResponse.
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
pub fn call_Ros1Kuavo_msgsChangeArmCtrlMode(o:client.Owner,q:*const records.Ros1Kuavo_msgsChangeArmCtrlModeRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsChangeArmCtrlModeResponse) {
    return node.callValue(records.Ros1Kuavo_msgsChangeArmCtrlModeResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/changeArmCtrlModeKuavo service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest,
/// response=Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse.
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
pub fn call_Ros1Kuavo_msgsChangeArmCtrlModeKuavo(o:client.Owner,q:*const records.Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse) {
    return node.callValue(records.Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/changeLbMpcObsUpdateModeSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest,
/// response=Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse.
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
pub fn call_Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrv(o:client.Owner,q:*const records.Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse) {
    return node.callValue(records.Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/changeLbQuickModeSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsChangeLbQuickModeSrvRequest,
/// response=Ros1Kuavo_msgsChangeLbQuickModeSrvResponse.
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
pub fn call_Ros1Kuavo_msgsChangeLbQuickModeSrv(o:client.Owner,q:*const records.Ros1Kuavo_msgsChangeLbQuickModeSrvRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsChangeLbQuickModeSrvResponse) {
    return node.callValue(records.Ros1Kuavo_msgsChangeLbQuickModeSrvResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/changeMotorParam service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsChangeMotorParamRequest, response=Ros1Kuavo_msgsChangeMotorParamResponse.
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
pub fn call_Ros1Kuavo_msgsChangeMotorParam(o:client.Owner,q:*const records.Ros1Kuavo_msgsChangeMotorParamRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsChangeMotorParamResponse) {
    return node.callValue(records.Ros1Kuavo_msgsChangeMotorParamResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/changeTorsoCtrlMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsChangeTorsoCtrlModeRequest,
/// response=Ros1Kuavo_msgsChangeTorsoCtrlModeResponse.
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
pub fn call_Ros1Kuavo_msgsChangeTorsoCtrlMode(o:client.Owner,q:*const records.Ros1Kuavo_msgsChangeTorsoCtrlModeRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsChangeTorsoCtrlModeResponse) {
    return node.callValue(records.Ros1Kuavo_msgsChangeTorsoCtrlModeResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/changeWaistCtrlMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsChangeWaistCtrlModeRequest,
/// response=Ros1Kuavo_msgsChangeWaistCtrlModeResponse.
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
pub fn call_Ros1Kuavo_msgsChangeWaistCtrlMode(o:client.Owner,q:*const records.Ros1Kuavo_msgsChangeWaistCtrlModeRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsChangeWaistCtrlModeResponse) {
    return node.callValue(records.Ros1Kuavo_msgsChangeWaistCtrlModeResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/chassisPoseCmdSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsChassisPoseCmdSrvRequest, response=Ros1Kuavo_msgsChassisPoseCmdSrvResponse.
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
pub fn call_Ros1Kuavo_msgsChassisPoseCmdSrv(o:client.Owner,q:*const records.Ros1Kuavo_msgsChassisPoseCmdSrvRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsChassisPoseCmdSrvResponse) {
    return node.callValue(records.Ros1Kuavo_msgsChassisPoseCmdSrvResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/controlLejuClaw service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsControlLejuClawRequest, response=Ros1Kuavo_msgsControlLejuClawResponse.
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
pub fn call_Ros1Kuavo_msgsControlLejuClaw(o:client.Owner,q:*const records.Ros1Kuavo_msgsControlLejuClawRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsControlLejuClawResponse) {
    return node.callValue(records.Ros1Kuavo_msgsControlLejuClawResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/dexhandCommand message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsDexhandCommand.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsDexhandCommand(owner:client.Owner,value:*const records.Ros1Kuavo_msgsDexhandCommand,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/dexhandTouchState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsDexhandTouchState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsDexhandTouchState(owner:client.Owner,value:*const records.Ros1Kuavo_msgsDexhandTouchState,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/eePoseReachError service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsEePoseReachErrorRequest, response=Ros1Kuavo_msgsEePoseReachErrorResponse.
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
pub fn call_Ros1Kuavo_msgsEePoseReachError(o:client.Owner,q:*const records.Ros1Kuavo_msgsEePoseReachErrorRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsEePoseReachErrorResponse) {
    return node.callValue(records.Ros1Kuavo_msgsEePoseReachErrorResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/enableHandTouchSensor service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsEnableHandTouchSensorRequest,
/// response=Ros1Kuavo_msgsEnableHandTouchSensorResponse.
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
pub fn call_Ros1Kuavo_msgsEnableHandTouchSensor(o:client.Owner,q:*const records.Ros1Kuavo_msgsEnableHandTouchSensorRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsEnableHandTouchSensorResponse) {
    return node.callValue(records.Ros1Kuavo_msgsEnableHandTouchSensorResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/endEffectorData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsEndEffectorData.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsEndEffectorData(owner:client.Owner,value:*const records.Ros1Kuavo_msgsEndEffectorData,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/fkSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsFkSrvRequest, response=Ros1Kuavo_msgsFkSrvResponse.
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
pub fn call_Ros1Kuavo_msgsFkSrv(o:client.Owner,q:*const records.Ros1Kuavo_msgsFkSrvRequest,input:[]u8,output:[]u8,
    allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsFkSrvResponse) {
    return node.callValue(records.Ros1Kuavo_msgsFkSrvResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/fkSrvWithReferFrame service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsFkSrvWithReferFrameRequest,
/// response=Ros1Kuavo_msgsFkSrvWithReferFrameResponse.
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
pub fn call_Ros1Kuavo_msgsFkSrvWithReferFrame(o:client.Owner,q:*const records.Ros1Kuavo_msgsFkSrvWithReferFrameRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsFkSrvWithReferFrameResponse) {
    return node.callValue(records.Ros1Kuavo_msgsFkSrvWithReferFrameResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/footPose message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFootPose.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsFootPose(owner:client.Owner,value:*const records.Ros1Kuavo_msgsFootPose,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/footPose6D message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFootPose6D.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsFootPose6D(owner:client.Owner,value:*const records.Ros1Kuavo_msgsFootPose6D,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/footPose6DTargetTrajectories message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsFootPose6DTargetTrajectories.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsFootPose6DTargetTrajectories(owner:client.Owner,value:*const records.Ros1Kuavo_msgsFootPose6DTargetTrajectories,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/footPose6DTargetTrajectoriesSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest,
/// response=Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse.
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
pub fn call_Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrv(o:client.Owner,q:*const records.Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse) {
    return node.callValue(records.Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/footPoseTargetTrajectories message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsFootPoseTargetTrajectories.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsFootPoseTargetTrajectories(owner:client.Owner,value:*const records.Ros1Kuavo_msgsFootPoseTargetTrajectories,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/footPoseTargetTrajectoriesSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest,
/// response=Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse.
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
pub fn call_Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrv(o:client.Owner,q:*const records.Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse) {
    return node.callValue(records.Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/footPoseWithVision message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFootPoseWithVision.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsFootPoseWithVision(owner:client.Owner,value:*const records.Ros1Kuavo_msgsFootPoseWithVision,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/footPoseWithVisionArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsFootPoseWithVisionArray.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsFootPoseWithVisionArray(owner:client.Owner,value:*const records.Ros1Kuavo_msgsFootPoseWithVisionArray,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/footPoses message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFootPoses.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsFootPoses(owner:client.Owner,value:*const records.Ros1Kuavo_msgsFootPoses,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/footPoses6D message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFootPoses6D.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsFootPoses6D(owner:client.Owner,value:*const records.Ros1Kuavo_msgsFootPoses6D,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/fullBodyTargetTrajectories message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsFullBodyTargetTrajectories.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsFullBodyTargetTrajectories(owner:client.Owner,value:*const records.Ros1Kuavo_msgsFullBodyTargetTrajectories,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/gaitTimeName message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsGaitTimeName.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsGaitTimeName(owner:client.Owner,value:*const records.Ros1Kuavo_msgsGaitTimeName,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/gestureExecute service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGestureExecuteRequest, response=Ros1Kuavo_msgsGestureExecuteResponse.
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
pub fn call_Ros1Kuavo_msgsGestureExecute(o:client.Owner,q:*const records.Ros1Kuavo_msgsGestureExecuteRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsGestureExecuteResponse) {
    return node.callValue(records.Ros1Kuavo_msgsGestureExecuteResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/gestureExecuteState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGestureExecuteStateRequest,
/// response=Ros1Kuavo_msgsGestureExecuteStateResponse.
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
pub fn call_Ros1Kuavo_msgsGestureExecuteState(o:client.Owner,q:*const records.Ros1Kuavo_msgsGestureExecuteStateRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsGestureExecuteStateResponse) {
    return node.callValue(records.Ros1Kuavo_msgsGestureExecuteStateResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/gestureInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsGestureInfo.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsGestureInfo(owner:client.Owner,value:*const records.Ros1Kuavo_msgsGestureInfo,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/gestureList service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGestureListRequest, response=Ros1Kuavo_msgsGestureListResponse.
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
pub fn call_Ros1Kuavo_msgsGestureList(o:client.Owner,q:*const records.Ros1Kuavo_msgsGestureListRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsGestureListResponse) {
    return node.callValue(records.Ros1Kuavo_msgsGestureListResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/gestureTask message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsGestureTask.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsGestureTask(owner:client.Owner,value:*const records.Ros1Kuavo_msgsGestureTask,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/getControllerList service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetControllerListRequest, response=Ros1Kuavo_msgsGetControllerListResponse.
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
pub fn call_Ros1Kuavo_msgsGetControllerList(o:client.Owner,q:*const records.Ros1Kuavo_msgsGetControllerListRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsGetControllerListResponse) {
    return node.callValue(records.Ros1Kuavo_msgsGetControllerListResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/getCurrentGaitName service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetCurrentGaitNameRequest, response=Ros1Kuavo_msgsGetCurrentGaitNameResponse.
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
pub fn call_Ros1Kuavo_msgsGetCurrentGaitName(o:client.Owner,q:*const records.Ros1Kuavo_msgsGetCurrentGaitNameRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsGetCurrentGaitNameResponse) {
    return node.callValue(records.Ros1Kuavo_msgsGetCurrentGaitNameResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/getLbTorsoInitialPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest,
/// response=Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse.
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
pub fn call_Ros1Kuavo_msgsGetLbTorsoInitialPose(o:client.Owner,q:*const records.Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse) {
    return node.callValue(records.Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/getMotorParam service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetMotorParamRequest, response=Ros1Kuavo_msgsGetMotorParamResponse.
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
pub fn call_Ros1Kuavo_msgsGetMotorParam(o:client.Owner,q:*const records.Ros1Kuavo_msgsGetMotorParamRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsGetMotorParamResponse) {
    return node.callValue(records.Ros1Kuavo_msgsGetMotorParamResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/getMotorZeroPoints service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetMotorZeroPointsRequest, response=Ros1Kuavo_msgsGetMotorZeroPointsResponse.
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
pub fn call_Ros1Kuavo_msgsGetMotorZeroPoints(o:client.Owner,q:*const records.Ros1Kuavo_msgsGetMotorZeroPointsRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsGetMotorZeroPointsResponse) {
    return node.callValue(records.Ros1Kuavo_msgsGetMotorZeroPointsResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/goToZeroPoint service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGoToZeroPointRequest, response=Ros1Kuavo_msgsGoToZeroPointResponse.
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
pub fn call_Ros1Kuavo_msgsGoToZeroPoint(o:client.Owner,q:*const records.Ros1Kuavo_msgsGoToZeroPointRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsGoToZeroPointResponse) {
    return node.callValue(records.Ros1Kuavo_msgsGoToZeroPointResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/handForceLevel service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsHandForceLevelRequest, response=Ros1Kuavo_msgsHandForceLevelResponse.
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
pub fn call_Ros1Kuavo_msgsHandForceLevel(o:client.Owner,q:*const records.Ros1Kuavo_msgsHandForceLevelRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsHandForceLevelResponse) {
    return node.callValue(records.Ros1Kuavo_msgsHandForceLevelResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/handPose message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsHandPose.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsHandPose(owner:client.Owner,value:*const records.Ros1Kuavo_msgsHandPose,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/headBodyPose message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsHeadBodyPose.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsHeadBodyPose(owner:client.Owner,value:*const records.Ros1Kuavo_msgsHeadBodyPose,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/headCtrlMode message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsHeadCtrlMode.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsHeadCtrlMode(owner:client.Owner,value:*const records.Ros1Kuavo_msgsHeadCtrlMode,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/ikSolveError message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsIkSolveError.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsIkSolveError(owner:client.Owner,value:*const records.Ros1Kuavo_msgsIkSolveError,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/ikSolveParam message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsIkSolveParam.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsIkSolveParam(owner:client.Owner,value:*const records.Ros1Kuavo_msgsIkSolveParam,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/imuData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsImuData.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsImuData(owner:client.Owner,value:*const records.Ros1Kuavo_msgsImuData,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/jointBezierTrajectory message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsJointBezierTrajectory.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsJointBezierTrajectory(owner:client.Owner,value:*const records.Ros1Kuavo_msgsJointBezierTrajectory,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/jointCmd message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsJointCmd.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsJointCmd(owner:client.Owner,value:*const records.Ros1Kuavo_msgsJointCmd,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/jointData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsJointData.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsJointData(owner:client.Owner,value:*const records.Ros1Kuavo_msgsJointData,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/jointMoveTo service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsJointMoveToRequest, response=Ros1Kuavo_msgsJointMoveToResponse.
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
pub fn call_Ros1Kuavo_msgsJointMoveTo(o:client.Owner,q:*const records.Ros1Kuavo_msgsJointMoveToRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsJointMoveToResponse) {
    return node.callValue(records.Ros1Kuavo_msgsJointMoveToResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/kuavoModeSchedule message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsKuavoModeSchedule.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsKuavoModeSchedule(owner:client.Owner,value:*const records.Ros1Kuavo_msgsKuavoModeSchedule,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/lbBaseLinkPoseCmdSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest,
/// response=Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse.
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
pub fn call_Ros1Kuavo_msgsLbBaseLinkPoseCmdSrv(o:client.Owner,q:*const records.Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse) {
    return node.callValue(records.Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/lbLegControlSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsLbLegControlSrvRequest, response=Ros1Kuavo_msgsLbLegControlSrvResponse.
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
pub fn call_Ros1Kuavo_msgsLbLegControlSrv(o:client.Owner,q:*const records.Ros1Kuavo_msgsLbLegControlSrvRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsLbLegControlSrvResponse) {
    return node.callValue(records.Ros1Kuavo_msgsLbLegControlSrvResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/lbMultiTimedOfflineTraj service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest,
/// response=Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse.
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
pub fn call_Ros1Kuavo_msgsLbMultiTimedOfflineTraj(o:client.Owner,q:*const records.Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse) {
    return node.callValue(records.Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/lbMultiTimedPosCmd service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsLbMultiTimedPosCmdRequest, response=Ros1Kuavo_msgsLbMultiTimedPosCmdResponse.
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
pub fn call_Ros1Kuavo_msgsLbMultiTimedPosCmd(o:client.Owner,q:*const records.Ros1Kuavo_msgsLbMultiTimedPosCmdRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsLbMultiTimedPosCmdResponse) {
    return node.callValue(records.Ros1Kuavo_msgsLbMultiTimedPosCmdResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/lbTimedOfflineTraj message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsLbTimedOfflineTraj.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsLbTimedOfflineTraj(owner:client.Owner,value:*const records.Ros1Kuavo_msgsLbTimedOfflineTraj,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/lbTimedPosCmd service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsLbTimedPosCmdRequest, response=Ros1Kuavo_msgsLbTimedPosCmdResponse.
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
pub fn call_Ros1Kuavo_msgsLbTimedPosCmd(o:client.Owner,q:*const records.Ros1Kuavo_msgsLbTimedPosCmdRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsLbTimedPosCmdResponse) {
    return node.callValue(records.Ros1Kuavo_msgsLbTimedPosCmdResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/lejuClawCommand message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsLejuClawCommand.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsLejuClawCommand(owner:client.Owner,value:*const records.Ros1Kuavo_msgsLejuClawCommand,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/lejuClawRecovery service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsLejuClawRecoveryRequest, response=Ros1Kuavo_msgsLejuClawRecoveryResponse.
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
pub fn call_Ros1Kuavo_msgsLejuClawRecovery(o:client.Owner,q:*const records.Ros1Kuavo_msgsLejuClawRecoveryRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsLejuClawRecoveryResponse) {
    return node.callValue(records.Ros1Kuavo_msgsLejuClawRecoveryResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/lejuClawState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsLejuClawState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsLejuClawState(owner:client.Owner,value:*const records.Ros1Kuavo_msgsLejuClawState,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/lejuClawTarget message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsLejuClawTarget.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsLejuClawTarget(owner:client.Owner,value:*const records.Ros1Kuavo_msgsLejuClawTarget,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/motorParam message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMotorParam.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsMotorParam(owner:client.Owner,value:*const records.Ros1Kuavo_msgsMotorParam,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/mpc_input message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMpc_input.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsMpc_input(owner:client.Owner,value:*const records.Ros1Kuavo_msgsMpc_input,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/mpc_state message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMpc_state.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsMpc_state(owner:client.Owner,value:*const records.Ros1Kuavo_msgsMpc_state,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/mpc_target_trajectories message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsMpc_target_trajectories.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsMpc_target_trajectories(owner:client.Owner,value:*const records.Ros1Kuavo_msgsMpc_target_trajectories,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/picoPoseInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsPicoPoseInfo.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsPicoPoseInfo(owner:client.Owner,value:*const records.Ros1Kuavo_msgsPicoPoseInfo,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/picoPoseInfoList message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsPicoPoseInfoList.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsPicoPoseInfoList(owner:client.Owner,value:*const records.Ros1Kuavo_msgsPicoPoseInfoList,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/picoPoseRetarget message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsPicoPoseRetarget.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsPicoPoseRetarget(owner:client.Owner,value:*const records.Ros1Kuavo_msgsPicoPoseRetarget,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/planArmState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsPlanArmState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsPlanArmState(owner:client.Owner,value:*const records.Ros1Kuavo_msgsPlanArmState,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/planArmTrajectoryBezierCurve service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest,
/// response=Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse.
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
pub fn call_Ros1Kuavo_msgsPlanArmTrajectoryBezierCurve(o:client.Owner,q:*const records.Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse) {
    return node.callValue(records.Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/planArmTrajectoryCubicSpline service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest,
/// response=Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse.
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
pub fn call_Ros1Kuavo_msgsPlanArmTrajectoryCubicSpline(o:client.Owner,q:*const records.Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse) {
    return node.callValue(records.Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/playmusic service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsPlaymusicRequest, response=Ros1Kuavo_msgsPlaymusicResponse.
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
pub fn call_Ros1Kuavo_msgsPlaymusic(o:client.Owner,q:*const records.Ros1Kuavo_msgsPlaymusicRequest,input:[]u8,output:[]u8,
    allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsPlaymusicResponse) {
    return node.callValue(records.Ros1Kuavo_msgsPlaymusicResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/qv message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsQv.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsQv(owner:client.Owner,value:*const records.Ros1Kuavo_msgsQv,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/recordArmHandPose message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRecordArmHandPose.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsRecordArmHandPose(owner:client.Owner,value:*const records.Ros1Kuavo_msgsRecordArmHandPose,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/recordmusic service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsRecordmusicRequest, response=Ros1Kuavo_msgsRecordmusicResponse.
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
pub fn call_Ros1Kuavo_msgsRecordmusic(o:client.Owner,q:*const records.Ros1Kuavo_msgsRecordmusicRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsRecordmusicResponse) {
    return node.callValue(records.Ros1Kuavo_msgsRecordmusicResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/robotArmQVVD message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotArmQVVD.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsRobotArmQVVD(owner:client.Owner,value:*const records.Ros1Kuavo_msgsRobotArmQVVD,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/robotBodyMatrices message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotBodyMatrices.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsRobotBodyMatrices(owner:client.Owner,value:*const records.Ros1Kuavo_msgsRobotBodyMatrices,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/robotHandPosition message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotHandPosition.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsRobotHandPosition(owner:client.Owner,value:*const records.Ros1Kuavo_msgsRobotHandPosition,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/robotHeadMotionData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotHeadMotionData.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsRobotHeadMotionData(owner:client.Owner,value:*const records.Ros1Kuavo_msgsRobotHeadMotionData,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/robotState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsRobotState(owner:client.Owner,value:*const records.Ros1Kuavo_msgsRobotState,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/robotSwitchPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsRobotSwitchPoseRequest, response=Ros1Kuavo_msgsRobotSwitchPoseResponse.
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
pub fn call_Ros1Kuavo_msgsRobotSwitchPose(o:client.Owner,q:*const records.Ros1Kuavo_msgsRobotSwitchPoseRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsRobotSwitchPoseResponse) {
    return node.callValue(records.Ros1Kuavo_msgsRobotSwitchPoseResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/robotWaistControl message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotWaistControl.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsRobotWaistControl(owner:client.Owner,value:*const records.Ros1Kuavo_msgsRobotWaistControl,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/sensorsData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsSensorsData.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsSensorsData(owner:client.Owner,value:*const records.Ros1Kuavo_msgsSensorsData,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/setContactForceInterpParams service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetContactForceInterpParamsRequest,
/// response=Ros1Kuavo_msgsSetContactForceInterpParamsResponse.
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
pub fn call_Ros1Kuavo_msgsSetContactForceInterpParams(o:client.Owner,q:*const records.Ros1Kuavo_msgsSetContactForceInterpParamsRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsSetContactForceInterpParamsResponse) {
    return node.callValue(records.Ros1Kuavo_msgsSetContactForceInterpParamsResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/setHwIntialState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetHwIntialStateRequest, response=Ros1Kuavo_msgsSetHwIntialStateResponse.
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
pub fn call_Ros1Kuavo_msgsSetHwIntialState(o:client.Owner,q:*const records.Ros1Kuavo_msgsSetHwIntialStateRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsSetHwIntialStateResponse) {
    return node.callValue(records.Ros1Kuavo_msgsSetHwIntialStateResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/setMmCtrlFrame service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetMmCtrlFrameRequest, response=Ros1Kuavo_msgsSetMmCtrlFrameResponse.
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
pub fn call_Ros1Kuavo_msgsSetMmCtrlFrame(o:client.Owner,q:*const records.Ros1Kuavo_msgsSetMmCtrlFrameRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsSetMmCtrlFrameResponse) {
    return node.callValue(records.Ros1Kuavo_msgsSetMmCtrlFrameResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/setMotorEncoderRoundService service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest,
/// response=Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse.
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
pub fn call_Ros1Kuavo_msgsSetMotorEncoderRoundService(o:client.Owner,q:*const records.Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse) {
    return node.callValue(records.Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/setRuckigPlannerParams service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetRuckigPlannerParamsRequest,
/// response=Ros1Kuavo_msgsSetRuckigPlannerParamsResponse.
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
pub fn call_Ros1Kuavo_msgsSetRuckigPlannerParams(o:client.Owner,q:*const records.Ros1Kuavo_msgsSetRuckigPlannerParamsRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsSetRuckigPlannerParamsResponse) {
    return node.callValue(records.Ros1Kuavo_msgsSetRuckigPlannerParamsResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/setTagId service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetTagIdRequest, response=Ros1Kuavo_msgsSetTagIdResponse.
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
pub fn call_Ros1Kuavo_msgsSetTagId(o:client.Owner,q:*const records.Ros1Kuavo_msgsSetTagIdRequest,input:[]u8,output:[]u8,
    allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsSetTagIdResponse) {
    return node.callValue(records.Ros1Kuavo_msgsSetTagIdResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/singleStepControl service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSingleStepControlRequest, response=Ros1Kuavo_msgsSingleStepControlResponse.
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
pub fn call_Ros1Kuavo_msgsSingleStepControl(o:client.Owner,q:*const records.Ros1Kuavo_msgsSingleStepControlRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsSingleStepControlResponse) {
    return node.callValue(records.Ros1Kuavo_msgsSingleStepControlResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/stairAlignmentSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsStairAlignmentSrvRequest, response=Ros1Kuavo_msgsStairAlignmentSrvResponse.
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
pub fn call_Ros1Kuavo_msgsStairAlignmentSrv(o:client.Owner,q:*const records.Ros1Kuavo_msgsStairAlignmentSrvRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsStairAlignmentSrvResponse) {
    return node.callValue(records.Ros1Kuavo_msgsStairAlignmentSrvResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/switchController service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSwitchControllerRequest, response=Ros1Kuavo_msgsSwitchControllerResponse.
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
pub fn call_Ros1Kuavo_msgsSwitchController(o:client.Owner,q:*const records.Ros1Kuavo_msgsSwitchControllerRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsSwitchControllerResponse) {
    return node.callValue(records.Ros1Kuavo_msgsSwitchControllerResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/switchGaitByName message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsSwitchGaitByName.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsSwitchGaitByName(owner:client.Owner,value:*const records.Ros1Kuavo_msgsSwitchGaitByName,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/switchToNextController service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSwitchToNextControllerRequest,
/// response=Ros1Kuavo_msgsSwitchToNextControllerResponse.
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
pub fn call_Ros1Kuavo_msgsSwitchToNextController(o:client.Owner,q:*const records.Ros1Kuavo_msgsSwitchToNextControllerRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsSwitchToNextControllerResponse) {
    return node.callValue(records.Ros1Kuavo_msgsSwitchToNextControllerResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/tagDataArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTagDataArray.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsTagDataArray(owner:client.Owner,value:*const records.Ros1Kuavo_msgsTagDataArray,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/timedPoint message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTimedPoint.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsTimedPoint(owner:client.Owner,value:*const records.Ros1Kuavo_msgsTimedPoint,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/timedSingleCmd message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTimedSingleCmd.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsTimedSingleCmd(owner:client.Owner,value:*const records.Ros1Kuavo_msgsTimedSingleCmd,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/touchSensorStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTouchSensorStatus.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsTouchSensorStatus(owner:client.Owner,value:*const records.Ros1Kuavo_msgsTouchSensorStatus,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/twoArmHandPose message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTwoArmHandPose.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsTwoArmHandPose(owner:client.Owner,value:*const records.Ros1Kuavo_msgsTwoArmHandPose,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/twoArmHandPoseCmd message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTwoArmHandPoseCmd.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsTwoArmHandPoseCmd(owner:client.Owner,value:*const records.Ros1Kuavo_msgsTwoArmHandPoseCmd,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/twoArmHandPoseCmdFree message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsTwoArmHandPoseCmdFree.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsTwoArmHandPoseCmdFree(owner:client.Owner,value:*const records.Ros1Kuavo_msgsTwoArmHandPoseCmdFree,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_msgs/twoArmHandPoseCmdFreeSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest,
/// response=Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse.
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
pub fn call_Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrv(o:client.Owner,q:*const records.Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse) {
    return node.callValue(records.Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse,o,q,input,output,allocator);
}
/// @brief Call the selected kuavo_msgs/twoArmHandPoseCmdSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest,
/// response=Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse.
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
pub fn call_Ros1Kuavo_msgsTwoArmHandPoseCmdSrv(o:client.Owner,q:*const records.Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse) {
    return node.callValue(records.Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_msgs/twoArmHandPoseFree message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTwoArmHandPoseFree.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsTwoArmHandPoseFree(owner:client.Owner,value:*const records.Ros1Kuavo_msgsTwoArmHandPoseFree,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/xsensePoseInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsXsensePoseInfo.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsXsensePoseInfo(owner:client.Owner,value:*const records.Ros1Kuavo_msgsXsensePoseInfo,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/xsensePoseInfoList message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsXsensePoseInfoList.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsXsensePoseInfoList(owner:client.Owner,value:*const records.Ros1Kuavo_msgsXsensePoseInfoList,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/xsensePoseRetarget message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsXsensePoseRetarget.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsXsensePoseRetarget(owner:client.Owner,value:*const records.Ros1Kuavo_msgsXsensePoseRetarget,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/yoloDetection message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsYoloDetection.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsYoloDetection(owner:client.Owner,value:*const records.Ros1Kuavo_msgsYoloDetection,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_msgs/yoloOutputData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsYoloOutputData.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_msgsYoloOutputData(owner:client.Owner,value:*const records.Ros1Kuavo_msgsYoloOutputData,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_pico_gmr/AmpJoyRoute service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_pico_gmrAmpJoyRouteRequest, response=Ros1Kuavo_pico_gmrAmpJoyRouteResponse.
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
pub fn call_Ros1Kuavo_pico_gmrAmpJoyRoute(o:client.Owner,q:*const records.Ros1Kuavo_pico_gmrAmpJoyRouteRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_pico_gmrAmpJoyRouteResponse) {
    return node.callValue(records.Ros1Kuavo_pico_gmrAmpJoyRouteResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_ros_interfaces/armTargetPoses message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_ros_interfacesArmTargetPoses.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_ros_interfacesArmTargetPoses(owner:client.Owner,value:*const records.Ros1Kuavo_ros_interfacesArmTargetPoses,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_ros_interfaces/bezierCurveCubicPoint message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_ros_interfacesBezierCurveCubicPoint.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_ros_interfacesBezierCurveCubicPoint(owner:client.Owner,value:*const records.Ros1Kuavo_ros_interfacesBezierCurveCubicPoint,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_ros_interfaces/jointBezierTrajectory message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_ros_interfacesJointBezierTrajectory.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_ros_interfacesJointBezierTrajectory(owner:client.Owner,value:*const records.Ros1Kuavo_ros_interfacesJointBezierTrajectory,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_ros_interfaces/ocs2ChangeArmCtrlMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest,
/// response=Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse.
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
pub fn call_Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlMode(o:client.Owner,q:*const records.Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse) {
    return node.callValue(records.Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_ros_interfaces/planArmState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_ros_interfacesPlanArmState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_ros_interfacesPlanArmState(owner:client.Owner,value:*const records.Ros1Kuavo_ros_interfacesPlanArmState,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_ros_interfaces/planArmTrajectoryBezierCurve service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest,
/// response=Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse.
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
pub fn call_Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurve(o:client.Owner,q:*const records.Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse) {
    return node.callValue(records.Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete kuavo_ros_interfaces/robotHandPosition message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_ros_interfacesRobotHandPosition.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_ros_interfacesRobotHandPosition(owner:client.Owner,value:*const records.Ros1Kuavo_ros_interfacesRobotHandPosition,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete kuavo_ros_interfaces/robotHeadMotionData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_ros_interfacesRobotHeadMotionData.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Kuavo_ros_interfacesRobotHeadMotionData(owner:client.Owner,value:*const records.Ros1Kuavo_ros_interfacesRobotHeadMotionData,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected kuavo_ros_interfaces/stopPlanArmTrajectory service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest,
/// response=Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse.
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
pub fn call_Ros1Kuavo_ros_interfacesStopPlanArmTrajectory(o:client.Owner,q:*const records.Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse) {
    return node.callValue(records.Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete leju_mobile_base_msgs/BMS message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Leju_mobile_base_msgsBMS.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Leju_mobile_base_msgsBMS(owner:client.Owner,value:*const records.Ros1Leju_mobile_base_msgsBMS,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete leju_mobile_base_msgs/BaseCmdVelStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsBaseCmdVelStatus.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Leju_mobile_base_msgsBaseCmdVelStatus(owner:client.Owner,value:*const records.Ros1Leju_mobile_base_msgsBaseCmdVelStatus,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected leju_mobile_base_msgs/BaseMove service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsBaseMoveRequest,
/// response=Ros1Leju_mobile_base_msgsBaseMoveResponse.
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
pub fn call_Ros1Leju_mobile_base_msgsBaseMove(o:client.Owner,q:*const records.Ros1Leju_mobile_base_msgsBaseMoveRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Leju_mobile_base_msgsBaseMoveResponse) {
    return node.callValue(records.Ros1Leju_mobile_base_msgsBaseMoveResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete leju_mobile_base_msgs/Battery message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Leju_mobile_base_msgsBattery.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Leju_mobile_base_msgsBattery(owner:client.Owner,value:*const records.Ros1Leju_mobile_base_msgsBattery,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected leju_mobile_base_msgs/CheckArrived service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsCheckArrivedRequest,
/// response=Ros1Leju_mobile_base_msgsCheckArrivedResponse.
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
pub fn call_Ros1Leju_mobile_base_msgsCheckArrived(o:client.Owner,q:*const records.Ros1Leju_mobile_base_msgsCheckArrivedRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Leju_mobile_base_msgsCheckArrivedResponse) {
    return node.callValue(records.Ros1Leju_mobile_base_msgsCheckArrivedResponse,o,q,input,output,allocator);
}
/// @brief Call the selected leju_mobile_base_msgs/ControlLaserScan service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsControlLaserScanRequest,
/// response=Ros1Leju_mobile_base_msgsControlLaserScanResponse.
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
pub fn call_Ros1Leju_mobile_base_msgsControlLaserScan(o:client.Owner,q:*const records.Ros1Leju_mobile_base_msgsControlLaserScanRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Leju_mobile_base_msgsControlLaserScanResponse) {
    return node.callValue(records.Ros1Leju_mobile_base_msgsControlLaserScanResponse,o,q,input,output,allocator);
}
/// @brief Call the selected leju_mobile_base_msgs/DispatchMove service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsDispatchMoveRequest,
/// response=Ros1Leju_mobile_base_msgsDispatchMoveResponse.
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
pub fn call_Ros1Leju_mobile_base_msgsDispatchMove(o:client.Owner,q:*const records.Ros1Leju_mobile_base_msgsDispatchMoveRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Leju_mobile_base_msgsDispatchMoveResponse) {
    return node.callValue(records.Ros1Leju_mobile_base_msgsDispatchMoveResponse,o,q,input,output,allocator);
}
/// @brief Call the selected leju_mobile_base_msgs/ExecTask service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsExecTaskRequest,
/// response=Ros1Leju_mobile_base_msgsExecTaskResponse.
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
pub fn call_Ros1Leju_mobile_base_msgsExecTask(o:client.Owner,q:*const records.Ros1Leju_mobile_base_msgsExecTaskRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Leju_mobile_base_msgsExecTaskResponse) {
    return node.callValue(records.Ros1Leju_mobile_base_msgsExecTaskResponse,o,q,input,output,allocator);
}
/// @brief Call the selected leju_mobile_base_msgs/GetGlobalOdometer service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest,
/// response=Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse.
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
pub fn call_Ros1Leju_mobile_base_msgsGetGlobalOdometer(o:client.Owner,q:*const records.Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse) {
    return node.callValue(records.Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse,o,q,input,output,allocator);
}
/// @brief Call the selected leju_mobile_base_msgs/GetLaserScanList service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsGetLaserScanListRequest,
/// response=Ros1Leju_mobile_base_msgsGetLaserScanListResponse.
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
pub fn call_Ros1Leju_mobile_base_msgsGetLaserScanList(o:client.Owner,q:*const records.Ros1Leju_mobile_base_msgsGetLaserScanListRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Leju_mobile_base_msgsGetLaserScanListResponse) {
    return node.callValue(records.Ros1Leju_mobile_base_msgsGetLaserScanListResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete leju_mobile_base_msgs/HardwareStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsHardwareStatus.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Leju_mobile_base_msgsHardwareStatus(owner:client.Owner,value:*const records.Ros1Leju_mobile_base_msgsHardwareStatus,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete leju_mobile_base_msgs/Information message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsInformation.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Leju_mobile_base_msgsInformation(owner:client.Owner,value:*const records.Ros1Leju_mobile_base_msgsInformation,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete leju_mobile_base_msgs/LED message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Leju_mobile_base_msgsLED.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Leju_mobile_base_msgsLED(owner:client.Owner,value:*const records.Ros1Leju_mobile_base_msgsLED,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete leju_mobile_base_msgs/LiftControl3Feedback message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsLiftControl3Feedback.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Leju_mobile_base_msgsLiftControl3Feedback(owner:client.Owner,value:*const records.Ros1Leju_mobile_base_msgsLiftControl3Feedback,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete leju_mobile_base_msgs/LiftControl3Goal message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsLiftControl3Goal.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Leju_mobile_base_msgsLiftControl3Goal(owner:client.Owner,value:*const records.Ros1Leju_mobile_base_msgsLiftControl3Goal,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete leju_mobile_base_msgs/LiftControl3Result message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsLiftControl3Result.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Leju_mobile_base_msgsLiftControl3Result(owner:client.Owner,value:*const records.Ros1Leju_mobile_base_msgsLiftControl3Result,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete leju_mobile_base_msgs/LiftStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsLiftStatus.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Leju_mobile_base_msgsLiftStatus(owner:client.Owner,value:*const records.Ros1Leju_mobile_base_msgsLiftStatus,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete leju_mobile_base_msgs/MoveBaseActionGoal message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsMoveBaseActionGoal.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Leju_mobile_base_msgsMoveBaseActionGoal(owner:client.Owner,value:*const records.Ros1Leju_mobile_base_msgsMoveBaseActionGoal,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected leju_mobile_base_msgs/MoveToTarget service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsMoveToTargetRequest,
/// response=Ros1Leju_mobile_base_msgsMoveToTargetResponse.
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
pub fn call_Ros1Leju_mobile_base_msgsMoveToTarget(o:client.Owner,q:*const records.Ros1Leju_mobile_base_msgsMoveToTargetRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Leju_mobile_base_msgsMoveToTargetResponse) {
    return node.callValue(records.Ros1Leju_mobile_base_msgsMoveToTargetResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete leju_mobile_base_msgs/MoveToTargetOptions message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsMoveToTargetOptions.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Leju_mobile_base_msgsMoveToTargetOptions(owner:client.Owner,value:*const records.Ros1Leju_mobile_base_msgsMoveToTargetOptions,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete leju_mobile_base_msgs/NavigationModeGoal message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsNavigationModeGoal.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Leju_mobile_base_msgsNavigationModeGoal(owner:client.Owner,value:*const records.Ros1Leju_mobile_base_msgsNavigationModeGoal,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete leju_mobile_base_msgs/Parameter message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Leju_mobile_base_msgsParameter.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Leju_mobile_base_msgsParameter(owner:client.Owner,value:*const records.Ros1Leju_mobile_base_msgsParameter,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected leju_mobile_base_msgs/ResetTemporaryOdometer service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest,
/// response=Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse.
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
pub fn call_Ros1Leju_mobile_base_msgsResetTemporaryOdometer(o:client.Owner,q:*const records.Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse) {
    return node.callValue(records.Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete leju_mobile_base_msgs/RobotStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsRobotStatus.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Leju_mobile_base_msgsRobotStatus(owner:client.Owner,value:*const records.Ros1Leju_mobile_base_msgsRobotStatus,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected leju_mobile_base_msgs/SetDispatchMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsSetDispatchModeRequest,
/// response=Ros1Leju_mobile_base_msgsSetDispatchModeResponse.
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
pub fn call_Ros1Leju_mobile_base_msgsSetDispatchMode(o:client.Owner,q:*const records.Ros1Leju_mobile_base_msgsSetDispatchModeRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Leju_mobile_base_msgsSetDispatchModeResponse) {
    return node.callValue(records.Ros1Leju_mobile_base_msgsSetDispatchModeResponse,o,q,input,output,allocator);
}
/// @brief Call the selected leju_mobile_base_msgs/SetMapServer service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsSetMapServerRequest,
/// response=Ros1Leju_mobile_base_msgsSetMapServerResponse.
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
pub fn call_Ros1Leju_mobile_base_msgsSetMapServer(o:client.Owner,q:*const records.Ros1Leju_mobile_base_msgsSetMapServerRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Leju_mobile_base_msgsSetMapServerResponse) {
    return node.callValue(records.Ros1Leju_mobile_base_msgsSetMapServerResponse,o,q,input,output,allocator);
}
/// @brief Call the selected leju_mobile_base_msgs/StartLocalization service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsStartLocalizationRequest,
/// response=Ros1Leju_mobile_base_msgsStartLocalizationResponse.
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
pub fn call_Ros1Leju_mobile_base_msgsStartLocalization(o:client.Owner,q:*const records.Ros1Leju_mobile_base_msgsStartLocalizationRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Leju_mobile_base_msgsStartLocalizationResponse) {
    return node.callValue(records.Ros1Leju_mobile_base_msgsStartLocalizationResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete leju_mobile_base_msgs/StepControlGoal message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsStepControlGoal.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Leju_mobile_base_msgsStepControlGoal(owner:client.Owner,value:*const records.Ros1Leju_mobile_base_msgsStepControlGoal,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected leju_mobile_base_msgs/SyncCostmap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsSyncCostmapRequest,
/// response=Ros1Leju_mobile_base_msgsSyncCostmapResponse.
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
pub fn call_Ros1Leju_mobile_base_msgsSyncCostmap(o:client.Owner,q:*const records.Ros1Leju_mobile_base_msgsSyncCostmapRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Leju_mobile_base_msgsSyncCostmapResponse) {
    return node.callValue(records.Ros1Leju_mobile_base_msgsSyncCostmapResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete leju_mobile_base_msgs/TaskDetailStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsTaskDetailStatus.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Leju_mobile_base_msgsTaskDetailStatus(owner:client.Owner,value:*const records.Ros1Leju_mobile_base_msgsTaskDetailStatus,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete motioncapture/ForcePlateData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1MotioncaptureForcePlateData.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1MotioncaptureForcePlateData(owner:client.Owner,value:*const records.Ros1MotioncaptureForcePlateData,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected network_monitor/NetworkPing service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Network_monitorNetworkPingRequest, response=Ros1Network_monitorNetworkPingResponse.
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
pub fn call_Ros1Network_monitorNetworkPing(o:client.Owner,q:*const records.Ros1Network_monitorNetworkPingRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Network_monitorNetworkPingResponse) {
    return node.callValue(records.Ros1Network_monitorNetworkPingResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete network_monitor/NetworkPingMsg message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Network_monitorNetworkPingMsg.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Network_monitorNetworkPingMsg(owner:client.Owner,value:*const records.Ros1Network_monitorNetworkPingMsg,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nimservos_controller/motor_cmd message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nimservos_controllerMotor_cmd.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nimservos_controllerMotor_cmd(owner:client.Owner,value:*const records.Ros1Nimservos_controllerMotor_cmd,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nimservos_controller/motor_state message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nimservos_controllerMotor_state.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nimservos_controllerMotor_state(owner:client.Owner,value:*const records.Ros1Nimservos_controllerMotor_state,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/IotFrame0 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserIotFrame0.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserIotFrame0(owner:client.Owner,value:*const records.Ros1Nlink_parserIotFrame0,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/IotFrame0Node message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserIotFrame0Node.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserIotFrame0Node(owner:client.Owner,value:*const records.Ros1Nlink_parserIotFrame0Node,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/LinktrackAnchorframe0 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserLinktrackAnchorframe0.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserLinktrackAnchorframe0(owner:client.Owner,value:*const records.Ros1Nlink_parserLinktrackAnchorframe0,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/LinktrackAoaNode0 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackAoaNode0.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserLinktrackAoaNode0(owner:client.Owner,value:*const records.Ros1Nlink_parserLinktrackAoaNode0,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/LinktrackAoaNodeframe0 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserLinktrackAoaNodeframe0.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserLinktrackAoaNodeframe0(owner:client.Owner,value:*const records.Ros1Nlink_parserLinktrackAoaNodeframe0,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/LinktrackNode0 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode0.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserLinktrackNode0(owner:client.Owner,value:*const records.Ros1Nlink_parserLinktrackNode0,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/LinktrackNode1 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode1.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserLinktrackNode1(owner:client.Owner,value:*const records.Ros1Nlink_parserLinktrackNode1,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/LinktrackNode2 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode2.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserLinktrackNode2(owner:client.Owner,value:*const records.Ros1Nlink_parserLinktrackNode2,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/LinktrackNode4Anchor message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserLinktrackNode4Anchor.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserLinktrackNode4Anchor(owner:client.Owner,value:*const records.Ros1Nlink_parserLinktrackNode4Anchor,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/LinktrackNode4Tag message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode4Tag.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserLinktrackNode4Tag(owner:client.Owner,value:*const records.Ros1Nlink_parserLinktrackNode4Tag,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/LinktrackNode5 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode5.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserLinktrackNode5(owner:client.Owner,value:*const records.Ros1Nlink_parserLinktrackNode5,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/LinktrackNode6 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode6.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserLinktrackNode6(owner:client.Owner,value:*const records.Ros1Nlink_parserLinktrackNode6,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/LinktrackNodeframe0 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserLinktrackNodeframe0.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserLinktrackNodeframe0(owner:client.Owner,value:*const records.Ros1Nlink_parserLinktrackNodeframe0,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/LinktrackNodeframe1 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserLinktrackNodeframe1.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserLinktrackNodeframe1(owner:client.Owner,value:*const records.Ros1Nlink_parserLinktrackNodeframe1,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/LinktrackNodeframe2 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserLinktrackNodeframe2.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserLinktrackNodeframe2(owner:client.Owner,value:*const records.Ros1Nlink_parserLinktrackNodeframe2,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/LinktrackNodeframe3 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserLinktrackNodeframe3.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserLinktrackNodeframe3(owner:client.Owner,value:*const records.Ros1Nlink_parserLinktrackNodeframe3,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/LinktrackNodeframe4 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserLinktrackNodeframe4.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserLinktrackNodeframe4(owner:client.Owner,value:*const records.Ros1Nlink_parserLinktrackNodeframe4,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/LinktrackNodeframe5 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserLinktrackNodeframe5.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserLinktrackNodeframe5(owner:client.Owner,value:*const records.Ros1Nlink_parserLinktrackNodeframe5,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/LinktrackNodeframe6 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserLinktrackNodeframe6.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserLinktrackNodeframe6(owner:client.Owner,value:*const records.Ros1Nlink_parserLinktrackNodeframe6,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/LinktrackTag message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackTag.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserLinktrackTag(owner:client.Owner,value:*const records.Ros1Nlink_parserLinktrackTag,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/LinktrackTagframe0 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackTagframe0.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserLinktrackTagframe0(owner:client.Owner,value:*const records.Ros1Nlink_parserLinktrackTagframe0,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/TofsenseCascade message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserTofsenseCascade.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserTofsenseCascade(owner:client.Owner,value:*const records.Ros1Nlink_parserTofsenseCascade,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/TofsenseFrame0 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserTofsenseFrame0.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserTofsenseFrame0(owner:client.Owner,value:*const records.Ros1Nlink_parserTofsenseFrame0,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/TofsenseMFrame0 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserTofsenseMFrame0.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserTofsenseMFrame0(owner:client.Owner,value:*const records.Ros1Nlink_parserTofsenseMFrame0,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete nlink_parser/TofsenseMFrame0Pixel message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserTofsenseMFrame0Pixel.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Nlink_parserTofsenseMFrame0Pixel(owner:client.Owner,value:*const records.Ros1Nlink_parserTofsenseMFrame0Pixel,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete noitom_hi5_hand_udp_python/JoySticks message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Noitom_hi5_hand_udp_pythonJoySticks.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Noitom_hi5_hand_udp_pythonJoySticks(owner:client.Owner,value:*const records.Ros1Noitom_hi5_hand_udp_pythonJoySticks,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete noitom_hi5_hand_udp_python/PoseInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Noitom_hi5_hand_udp_pythonPoseInfo.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Noitom_hi5_hand_udp_pythonPoseInfo(owner:client.Owner,value:*const records.Ros1Noitom_hi5_hand_udp_pythonPoseInfo,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete noitom_hi5_hand_udp_python/PoseInfoList message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Noitom_hi5_hand_udp_pythonPoseInfoList.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Noitom_hi5_hand_udp_pythonPoseInfoList(owner:client.Owner,value:*const records.Ros1Noitom_hi5_hand_udp_pythonPoseInfoList,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete noitom_hi5_hand_udp_python/QuaternionArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Noitom_hi5_hand_udp_pythonQuaternionArray.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Noitom_hi5_hand_udp_pythonQuaternionArray(owner:client.Owner,value:*const records.Ros1Noitom_hi5_hand_udp_pythonQuaternionArray,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete noitom_hi5_hand_udp_python/Vector4 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Noitom_hi5_hand_udp_pythonVector4.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Noitom_hi5_hand_udp_pythonVector4(owner:client.Owner,value:*const records.Ros1Noitom_hi5_hand_udp_pythonVector4,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete noitom_hi5_hand_udp_python/handRotation message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Noitom_hi5_hand_udp_pythonHandRotation.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Noitom_hi5_hand_udp_pythonHandRotation(owner:client.Owner,value:*const records.Ros1Noitom_hi5_hand_udp_pythonHandRotation,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete noitom_hi5_hand_udp_python/handRotationEular message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Noitom_hi5_hand_udp_pythonHandRotationEular.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Noitom_hi5_hand_udp_pythonHandRotationEular(owner:client.Owner,value:*const records.Ros1Noitom_hi5_hand_udp_pythonHandRotationEular,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete ocs2_msgs/constraint message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsConstraint.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Ocs2_msgsConstraint(owner:client.Owner,value:*const records.Ros1Ocs2_msgsConstraint,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete ocs2_msgs/controller_data message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsController_data.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Ocs2_msgsController_data(owner:client.Owner,value:*const records.Ros1Ocs2_msgsController_data,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete ocs2_msgs/lagrangian_metrics message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsLagrangian_metrics.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Ocs2_msgsLagrangian_metrics(owner:client.Owner,value:*const records.Ros1Ocs2_msgsLagrangian_metrics,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete ocs2_msgs/mode_schedule message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMode_schedule.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Ocs2_msgsMode_schedule(owner:client.Owner,value:*const records.Ros1Ocs2_msgsMode_schedule,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete ocs2_msgs/mpc_flattened_controller message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Ocs2_msgsMpc_flattened_controller.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Ocs2_msgsMpc_flattened_controller(owner:client.Owner,value:*const records.Ros1Ocs2_msgsMpc_flattened_controller,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete ocs2_msgs/mpc_input message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMpc_input.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Ocs2_msgsMpc_input(owner:client.Owner,value:*const records.Ros1Ocs2_msgsMpc_input,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete ocs2_msgs/mpc_observation message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMpc_observation.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Ocs2_msgsMpc_observation(owner:client.Owner,value:*const records.Ros1Ocs2_msgsMpc_observation,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete ocs2_msgs/mpc_performance_indices message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Ocs2_msgsMpc_performance_indices.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Ocs2_msgsMpc_performance_indices(owner:client.Owner,value:*const records.Ros1Ocs2_msgsMpc_performance_indices,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete ocs2_msgs/mpc_solver_data message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMpc_solver_data.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Ocs2_msgsMpc_solver_data(owner:client.Owner,value:*const records.Ros1Ocs2_msgsMpc_solver_data,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete ocs2_msgs/mpc_state message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMpc_state.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Ocs2_msgsMpc_state(owner:client.Owner,value:*const records.Ros1Ocs2_msgsMpc_state,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete ocs2_msgs/mpc_target_trajectories message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Ocs2_msgsMpc_target_trajectories.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Ocs2_msgsMpc_target_trajectories(owner:client.Owner,value:*const records.Ros1Ocs2_msgsMpc_target_trajectories,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete ocs2_msgs/multiplier message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMultiplier.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Ocs2_msgsMultiplier(owner:client.Owner,value:*const records.Ros1Ocs2_msgsMultiplier,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected ocs2_msgs/pause_resume service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Ocs2_msgsPause_resumeRequest, response=Ros1Ocs2_msgsPause_resumeResponse.
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
pub fn call_Ros1Ocs2_msgsPause_resume(o:client.Owner,q:*const records.Ros1Ocs2_msgsPause_resumeRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Ocs2_msgsPause_resumeResponse) {
    return node.callValue(records.Ros1Ocs2_msgsPause_resumeResponse,o,q,input,output,allocator);
}
/// @brief Call the selected ocs2_msgs/reset service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Ocs2_msgsResetRequest, response=Ros1Ocs2_msgsResetResponse.
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
pub fn call_Ros1Ocs2_msgsReset(o:client.Owner,q:*const records.Ros1Ocs2_msgsResetRequest,input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Ocs2_msgsResetResponse) {
    return node.callValue(records.Ros1Ocs2_msgsResetResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete ocs2_switched_model_msgs/gait message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Ocs2_switched_model_msgsGait.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Ocs2_switched_model_msgsGait(owner:client.Owner,value:*const records.Ros1Ocs2_switched_model_msgsGait,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete ocs2_switched_model_msgs/gait_sequence message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Ocs2_switched_model_msgsGait_sequence.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Ocs2_switched_model_msgsGait_sequence(owner:client.Owner,value:*const records.Ros1Ocs2_switched_model_msgsGait_sequence,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete ocs2_switched_model_msgs/scheduled_gait_sequence message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Ocs2_switched_model_msgsScheduled_gait_sequence.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Ocs2_switched_model_msgsScheduled_gait_sequence(owner:client.Owner,value:*const records.Ros1Ocs2_switched_model_msgsScheduled_gait_sequence,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected ocs2_switched_model_msgs/trajectory_request service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Ocs2_switched_model_msgsTrajectory_requestRequest,
/// response=Ros1Ocs2_switched_model_msgsTrajectory_requestResponse.
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
pub fn call_Ros1Ocs2_switched_model_msgsTrajectory_request(o:client.Owner,q:*const records.Ros1Ocs2_switched_model_msgsTrajectory_requestRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Ocs2_switched_model_msgsTrajectory_requestResponse) {
    return node.callValue(records.Ros1Ocs2_switched_model_msgsTrajectory_requestResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete robot_calibration_msgs/CalibrationData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Robot_calibration_msgsCalibrationData.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Robot_calibration_msgsCalibrationData(owner:client.Owner,value:*const records.Ros1Robot_calibration_msgsCalibrationData,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete robot_calibration_msgs/CameraParameter message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Robot_calibration_msgsCameraParameter.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Robot_calibration_msgsCameraParameter(owner:client.Owner,value:*const records.Ros1Robot_calibration_msgsCameraParameter,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete robot_calibration_msgs/CaptureConfig message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Robot_calibration_msgsCaptureConfig.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Robot_calibration_msgsCaptureConfig(owner:client.Owner,value:*const records.Ros1Robot_calibration_msgsCaptureConfig,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete robot_calibration_msgs/ExtendedCameraInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Robot_calibration_msgsExtendedCameraInfo.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Robot_calibration_msgsExtendedCameraInfo(owner:client.Owner,value:*const records.Ros1Robot_calibration_msgsExtendedCameraInfo,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Submit a complete robot_calibration_msgs/GripperLedCommand Action goal.
/// @details Validate and encode the entire goal before admission. Return its exact nonzero u64 ownership ID;
/// admission is distinct from acceptance, feedback, cancellation and terminal completion. Components:
/// goal=Ros1Robot_calibration_msgsGripperLedCommandGoal, result=Ros1Robot_calibration_msgsGripperLedCommandResult,
/// feedback=Ros1Robot_calibration_msgsGripperLedCommandFeedback.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn send_Ros1Robot_calibration_msgsGripperLedCommand(o:client.Owner,q:*const records.Ros1Robot_calibration_msgsGripperLedCommandGoal,
    scratch:[]u8)node.GoalSubmission {
    return node.sendGoalValue(o,q,scratch);
}
/// @brief Publish one complete robot_calibration_msgs/Observation message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Robot_calibration_msgsObservation.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1Robot_calibration_msgsObservation(owner:client.Owner,value:*const records.Ros1Robot_calibration_msgsObservation,
    scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Call the selected robot_localization/FromLL service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Robot_localizationFromLLRequest, response=Ros1Robot_localizationFromLLResponse.
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
pub fn call_Ros1Robot_localizationFromLL(o:client.Owner,q:*const records.Ros1Robot_localizationFromLLRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Robot_localizationFromLLResponse) {
    return node.callValue(records.Ros1Robot_localizationFromLLResponse,o,q,input,output,allocator);
}
/// @brief Call the selected robot_localization/GetState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Robot_localizationGetStateRequest, response=Ros1Robot_localizationGetStateResponse.
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
pub fn call_Ros1Robot_localizationGetState(o:client.Owner,q:*const records.Ros1Robot_localizationGetStateRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Robot_localizationGetStateResponse) {
    return node.callValue(records.Ros1Robot_localizationGetStateResponse,o,q,input,output,allocator);
}
/// @brief Call the selected robot_localization/SetDatum service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Robot_localizationSetDatumRequest, response=Ros1Robot_localizationSetDatumResponse.
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
pub fn call_Ros1Robot_localizationSetDatum(o:client.Owner,q:*const records.Ros1Robot_localizationSetDatumRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Robot_localizationSetDatumResponse) {
    return node.callValue(records.Ros1Robot_localizationSetDatumResponse,o,q,input,output,allocator);
}
/// @brief Call the selected robot_localization/SetPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Robot_localizationSetPoseRequest, response=Ros1Robot_localizationSetPoseResponse.
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
pub fn call_Ros1Robot_localizationSetPose(o:client.Owner,q:*const records.Ros1Robot_localizationSetPoseRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Robot_localizationSetPoseResponse) {
    return node.callValue(records.Ros1Robot_localizationSetPoseResponse,o,q,input,output,allocator);
}
/// @brief Call the selected robot_localization/SetUTMZone service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Robot_localizationSetUTMZoneRequest, response=Ros1Robot_localizationSetUTMZoneResponse.
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
pub fn call_Ros1Robot_localizationSetUTMZone(o:client.Owner,q:*const records.Ros1Robot_localizationSetUTMZoneRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Robot_localizationSetUTMZoneResponse) {
    return node.callValue(records.Ros1Robot_localizationSetUTMZoneResponse,o,q,input,output,allocator);
}
/// @brief Call the selected robot_localization/ToLL service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Robot_localizationToLLRequest, response=Ros1Robot_localizationToLLResponse.
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
pub fn call_Ros1Robot_localizationToLL(o:client.Owner,q:*const records.Ros1Robot_localizationToLLRequest,input:[]u8,
    output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Robot_localizationToLLResponse) {
    return node.callValue(records.Ros1Robot_localizationToLLResponse,o,q,input,output,allocator);
}
/// @brief Call the selected robot_localization/ToggleFilterProcessing service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Robot_localizationToggleFilterProcessingRequest,
/// response=Ros1Robot_localizationToggleFilterProcessingResponse.
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
pub fn call_Ros1Robot_localizationToggleFilterProcessing(o:client.Owner,q:*const records.Ros1Robot_localizationToggleFilterProcessingRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Robot_localizationToggleFilterProcessingResponse) {
    return node.callValue(records.Ros1Robot_localizationToggleFilterProcessingResponse,o,q,input,output,allocator);
}
/// @brief Call the selected taiji_trigger_node/PerformTaiji service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Taiji_trigger_nodePerformTaijiRequest,
/// response=Ros1Taiji_trigger_nodePerformTaijiResponse.
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
pub fn call_Ros1Taiji_trigger_nodePerformTaiji(o:client.Owner,q:*const records.Ros1Taiji_trigger_nodePerformTaijiRequest,
    input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.Ros1Taiji_trigger_nodePerformTaijiResponse) {
    return node.callValue(records.Ros1Taiji_trigger_nodePerformTaijiResponse,o,q,input,output,allocator);
}
/// @brief Publish one complete user_pkg/piddebug message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1User_pkgPiddebug.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1User_pkgPiddebug(owner:client.Owner,value:*const records.Ros1User_pkgPiddebug,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete user_pkg/uwbdebug message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1User_pkgUwbdebug.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1User_pkgUwbdebug(owner:client.Owner,value:*const records.Ros1User_pkgUwbdebug,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete wiimote/IrSourceInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1WiimoteIrSourceInfo.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1WiimoteIrSourceInfo(owner:client.Owner,value:*const records.Ros1WiimoteIrSourceInfo,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete wiimote/State message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1WiimoteState.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1WiimoteState(owner:client.Owner,value:*const records.Ros1WiimoteState,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
/// @brief Publish one complete wiimote/TimedSwitch message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1WiimoteTimedSwitch.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
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
pub fn publish_Ros1WiimoteTimedSwitch(owner:client.Owner,value:*const records.Ros1WiimoteTimedSwitch,scratch:[]u8)!u32 {
    return node.publishValue(owner,value,scratch);
}
