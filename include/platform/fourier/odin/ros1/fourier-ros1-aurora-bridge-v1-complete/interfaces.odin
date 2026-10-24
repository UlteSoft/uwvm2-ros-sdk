// @file interfaces.odin
// @brief Full fourier odin codecs and original record metadata.
// @details Complete fourier ros1_aurora_bridge_v1 values in odin. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
package roswasm
// Generated typed interfaces; explicit owner and caller buffers.
import "base:runtime"
// @brief Call the selected uwvm_fourier_bridge/ExecuteMove service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeExecuteMoveRequest, response=Ros1Uwvm_fourier_bridgeExecuteMoveResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeExecuteMove :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeExecuteMoveRequest,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeExecuteMoveResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeExecuteMoveRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeExecuteMoveResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeExecuteMoveResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeExecuteMoveResponse(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/GetBaseData service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetBaseDataRequest, response=Ros1Uwvm_fourier_bridgeGetBaseDataResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeGetBaseData :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeGetBaseDataRequest,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeGetBaseDataResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeGetBaseDataRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeGetBaseDataResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeGetBaseDataResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeGetBaseDataResponse(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/GetCartesianState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetCartesianStateRequest,
// response=Ros1Uwvm_fourier_bridgeGetCartesianStateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeGetCartesianState :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeGetCartesianStateRequest,
    input,output:[]u8,allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeGetCartesianStateResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeGetCartesianStateRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeGetCartesianStateResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeGetCartesianStateResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeGetCartesianStateResponse(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/GetContactData service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetContactDataRequest, response=Ros1Uwvm_fourier_bridgeGetContactDataResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeGetContactData :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeGetContactDataRequest,input,
    output:[]u8,allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeGetContactDataResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeGetContactDataRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeGetContactDataResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeGetContactDataResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeGetContactDataResponse(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/GetFsmName service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetFsmNameRequest, response=Ros1Uwvm_fourier_bridgeGetFsmNameResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeGetFsmName :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeGetFsmNameRequest,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeGetFsmNameResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeGetFsmNameRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeGetFsmNameResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeGetFsmNameResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeGetFsmNameResponse(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/GetFsmState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetFsmStateRequest, response=Ros1Uwvm_fourier_bridgeGetFsmStateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeGetFsmState :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeGetFsmStateRequest,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeGetFsmStateResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeGetFsmStateRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeGetFsmStateResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeGetFsmStateResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeGetFsmStateResponse(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/GetGroupMotionState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest,
// response=Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeGetGroupMotionState :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest,
    input,output:[]u8,allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/GetGroupMotorCfg service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest, response=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeGetGroupMotorCfg :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest,input,
    output:[]u8,allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/GetGroupState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetGroupStateRequest, response=Ros1Uwvm_fourier_bridgeGetGroupStateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeGetGroupState :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeGetGroupStateRequest,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeGetGroupStateResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeGetGroupStateRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeGetGroupStateResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeGetGroupStateResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeGetGroupStateResponse(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/GetSnapshot service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetSnapshotRequest, response=Ros1Uwvm_fourier_bridgeGetSnapshotResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeGetSnapshot :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeGetSnapshotRequest,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeGetSnapshotResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeGetSnapshotRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeGetSnapshotResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeGetSnapshotResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeGetSnapshotResponse(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/GetStandPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetStandPoseRequest, response=Ros1Uwvm_fourier_bridgeGetStandPoseResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeGetStandPose :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeGetStandPoseRequest,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeGetStandPoseResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeGetStandPoseRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeGetStandPoseResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeGetStandPoseResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeGetStandPoseResponse(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/GetUpperFsmName service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest, response=Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeGetUpperFsmName :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest,input,
    output:[]u8,allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/GetUpperFsmState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest, response=Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeGetUpperFsmState :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest,input,
    output:[]u8,allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/GetVelocitySource service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest,
// response=Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeGetVelocitySource :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest,
    input,output:[]u8,allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/GetVelocitySourceName service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest,
// response=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeGetVelocitySourceName :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest,
    input,output:[]u8,allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(r.data,allocator)
}
// @brief Publish one complete uwvm_fourier_bridge/GroupState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Uwvm_fourier_bridgeGroupState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
publish_Ros1Uwvm_fourier_bridgeGroupState :: proc(o:Owner,v:^Ros1Uwvm_fourier_bridgeGroupState,scratch:[]u8)->u32 {
    b,c:=encode_Ros1Uwvm_fourier_bridgeGroupState(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete uwvm_fourier_bridge/GroupState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Uwvm_fourier_bridgeGroupState.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
poll_Ros1Uwvm_fourier_bridgeGroupState :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeGroupState,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeGroupState {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeGroupState(r.data,allocator)
}
// @brief Publish one complete uwvm_fourier_bridge/GroupValues message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Uwvm_fourier_bridgeGroupValues.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
publish_Ros1Uwvm_fourier_bridgeGroupValues :: proc(o:Owner,v:^Ros1Uwvm_fourier_bridgeGroupValues,scratch:[]u8)->u32 {
    b,c:=encode_Ros1Uwvm_fourier_bridgeGroupValues(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete uwvm_fourier_bridge/GroupValues message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Uwvm_fourier_bridgeGroupValues.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
poll_Ros1Uwvm_fourier_bridgeGroupValues :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeGroupValues,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeGroupValues {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeGroupValues(r.data,allocator)
}
// @brief Publish one complete uwvm_fourier_bridge/MotionRecipe message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Uwvm_fourier_bridgeMotionRecipe.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
publish_Ros1Uwvm_fourier_bridgeMotionRecipe :: proc(o:Owner,v:^Ros1Uwvm_fourier_bridgeMotionRecipe,scratch:[]u8)->u32 {
    b,c:=encode_Ros1Uwvm_fourier_bridgeMotionRecipe(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete uwvm_fourier_bridge/MotionRecipe message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Uwvm_fourier_bridgeMotionRecipe.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
poll_Ros1Uwvm_fourier_bridgeMotionRecipe :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeMotionRecipe,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeMotionRecipe {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeMotionRecipe(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/SetFsmState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeSetFsmStateRequest, response=Ros1Uwvm_fourier_bridgeSetFsmStateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeSetFsmState :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeSetFsmStateRequest,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeSetFsmStateResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeSetFsmStateRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeSetFsmStateResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeSetFsmStateResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeSetFsmStateResponse(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/SetGroupCommand service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeSetGroupCommandRequest, response=Ros1Uwvm_fourier_bridgeSetGroupCommandResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeSetGroupCommand :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeSetGroupCommandRequest,input,
    output:[]u8,allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeSetGroupCommandResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeSetGroupCommandRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeSetGroupCommandResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeSetGroupCommandResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeSetGroupCommandResponse(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/SetMotorCfgPd service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest, response=Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeSetMotorCfgPd :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/SetStandPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeSetStandPoseRequest, response=Ros1Uwvm_fourier_bridgeSetStandPoseResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeSetStandPose :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeSetStandPoseRequest,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeSetStandPoseResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeSetStandPoseRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeSetStandPoseResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeSetStandPoseResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeSetStandPoseResponse(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/SetUpperFsmState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest, response=Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeSetUpperFsmState :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest,input,
    output:[]u8,allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/SetVelocity service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeSetVelocityRequest, response=Ros1Uwvm_fourier_bridgeSetVelocityResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeSetVelocity :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeSetVelocityRequest,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeSetVelocityResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeSetVelocityRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeSetVelocityResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeSetVelocityResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeSetVelocityResponse(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/SetVelocitySource service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest,
// response=Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeSetVelocitySource :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest,
    input,output:[]u8,allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse(r.data,allocator)
}
// @brief Publish one complete uwvm_fourier_bridge/Status message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros1Uwvm_fourier_bridgeStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
publish_Ros1Uwvm_fourier_bridgeStatus :: proc(o:Owner,v:^Ros1Uwvm_fourier_bridgeStatus,scratch:[]u8)->u32 {
    b,c:=encode_Ros1Uwvm_fourier_bridgeStatus(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete uwvm_fourier_bridge/Status message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros1Uwvm_fourier_bridgeStatus.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
poll_Ros1Uwvm_fourier_bridgeStatus :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeStatus,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeStatus {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeStatus(r.data,allocator)
}
// @brief Publish one complete uwvm_fourier_bridge/VelocityCommand message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros1Uwvm_fourier_bridgeVelocityCommand.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] v Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
publish_Ros1Uwvm_fourier_bridgeVelocityCommand :: proc(o:Owner,v:^Ros1Uwvm_fourier_bridgeVelocityCommand,scratch:[]u8)->u32 {
    b,c:=encode_Ros1Uwvm_fourier_bridgeVelocityCommand(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete uwvm_fourier_bridge/VelocityCommand message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros1Uwvm_fourier_bridgeVelocityCommand.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[out] scratch Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
poll_Ros1Uwvm_fourier_bridgeVelocityCommand :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeVelocityCommand,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeVelocityCommand {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeVelocityCommand(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/WaitGroupsMotionComplete service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest,
// response=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse.
// @return The typed operation result on success; language error/status on refusal.
// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
// @param[out] input Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded
// views borrow them.
// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
// decoded views borrow them.
// @param[in] allocator Caller allocator owning decoded sequences/nested allocations; retain its region and the wire
// input.
// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
// quota and trusted deadline grant. Source generation grants none.
// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
// errors; publish no successful typed value after a failed decode.
// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
// additionally borrow the documented decode storage.
// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
// @see share/platform/ros/odin/API-CONTRACT.md
call_Ros1Uwvm_fourier_bridgeWaitGroupsMotionComplete :: proc(o:Owner,q:^Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest,
    input,output:[]u8,allocator:runtime.Allocator)->(Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse,u32) {
    b,c:=encode_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(q,input);
    if c!=0 {
        return Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse {
        },r.code
    };
    return decode_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(r.data,allocator)
}
