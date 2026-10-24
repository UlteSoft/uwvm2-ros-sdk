// @file interfaces.odin
// @brief Full fourier odin codecs and original record metadata.
// @details Complete fourier ros2_aurora_bridge_v1 values in odin. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
package roswasm
// Generated typed interfaces; explicit owner and caller buffers.
import "base:runtime"
// @brief Publish one complete uwvm_fourier_bridge/msg/GroupState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Uwvm_fourier_bridgeMsgGroupState.
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
publish_Ros2Uwvm_fourier_bridgeMsgGroupState :: proc(o:Owner,v:^Ros2Uwvm_fourier_bridgeMsgGroupState,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Uwvm_fourier_bridgeMsgGroupState(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete uwvm_fourier_bridge/msg/GroupState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Uwvm_fourier_bridgeMsgGroupState.
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
poll_Ros2Uwvm_fourier_bridgeMsgGroupState :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeMsgGroupState,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeMsgGroupState {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeMsgGroupState(r.data,allocator)
}
// @brief Publish one complete uwvm_fourier_bridge/msg/GroupValues message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Uwvm_fourier_bridgeMsgGroupValues.
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
publish_Ros2Uwvm_fourier_bridgeMsgGroupValues :: proc(o:Owner,v:^Ros2Uwvm_fourier_bridgeMsgGroupValues,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Uwvm_fourier_bridgeMsgGroupValues(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete uwvm_fourier_bridge/msg/GroupValues message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Uwvm_fourier_bridgeMsgGroupValues.
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
poll_Ros2Uwvm_fourier_bridgeMsgGroupValues :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeMsgGroupValues,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeMsgGroupValues {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeMsgGroupValues(r.data,allocator)
}
// @brief Publish one complete uwvm_fourier_bridge/msg/MotionRecipe message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Uwvm_fourier_bridgeMsgMotionRecipe.
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
publish_Ros2Uwvm_fourier_bridgeMsgMotionRecipe :: proc(o:Owner,v:^Ros2Uwvm_fourier_bridgeMsgMotionRecipe,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete uwvm_fourier_bridge/msg/MotionRecipe message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Uwvm_fourier_bridgeMsgMotionRecipe.
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
poll_Ros2Uwvm_fourier_bridgeMsgMotionRecipe :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeMsgMotionRecipe,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeMsgMotionRecipe {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(r.data,allocator)
}
// @brief Publish one complete uwvm_fourier_bridge/msg/Status message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Uwvm_fourier_bridgeMsgStatus.
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
publish_Ros2Uwvm_fourier_bridgeMsgStatus :: proc(o:Owner,v:^Ros2Uwvm_fourier_bridgeMsgStatus,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Uwvm_fourier_bridgeMsgStatus(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete uwvm_fourier_bridge/msg/Status message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Uwvm_fourier_bridgeMsgStatus.
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
poll_Ros2Uwvm_fourier_bridgeMsgStatus :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeMsgStatus,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeMsgStatus {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeMsgStatus(r.data,allocator)
}
// @brief Publish one complete uwvm_fourier_bridge/msg/VelocityCommand message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Uwvm_fourier_bridgeMsgVelocityCommand.
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
publish_Ros2Uwvm_fourier_bridgeMsgVelocityCommand :: proc(o:Owner,v:^Ros2Uwvm_fourier_bridgeMsgVelocityCommand,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Uwvm_fourier_bridgeMsgVelocityCommand(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete uwvm_fourier_bridge/msg/VelocityCommand message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Uwvm_fourier_bridgeMsgVelocityCommand.
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
poll_Ros2Uwvm_fourier_bridgeMsgVelocityCommand :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeMsgVelocityCommand,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeMsgVelocityCommand {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeMsgVelocityCommand(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/ExecuteMove service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request, response=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvExecuteMove :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request,input,
    output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/GetBaseData service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request, response=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvGetBaseData :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request,input,
    output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/GetCartesianState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request,
// response=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvGetCartesianState :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request,
    input,output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/GetContactData service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetContactData_Request,
// response=Ros2Uwvm_fourier_bridgeSrvGetContactData_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvGetContactData :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvGetContactData_Request,
    input,output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvGetContactData_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvGetContactData_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetContactData_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetContactData_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvGetContactData_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/GetFsmName service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request, response=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvGetFsmName :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/GetFsmState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request, response=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvGetFsmState :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request,input,
    output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/GetGroupMotionState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request,
// response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request,
    input,output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/GetGroupMotorCfg service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request,
// response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request,
    input,output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/GetGroupState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request,
// response=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvGetGroupState :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request,input,
    output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/GetSnapshot service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request, response=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvGetSnapshot :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request,input,
    output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/GetStandPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request, response=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvGetStandPose :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request,input,
    output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/GetUpperFsmName service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request,
// response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request,
    input,output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/GetUpperFsmState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request,
// response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request,
    input,output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/GetVelocitySource service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request,
// response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request,
    input,output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/GetVelocitySourceName service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request,
// response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request,
    input,output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/SetFsmState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request, response=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvSetFsmState :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request,input,
    output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/SetGroupCommand service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request,
// response=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request,
    input,output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/SetMotorCfgPd service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request,
// response=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request,input,
    output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/SetStandPose service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request, response=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvSetStandPose :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request,input,
    output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/SetUpperFsmState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request,
// response=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request,
    input,output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/SetVelocity service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request, response=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvSetVelocity :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request,input,
    output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/SetVelocitySource service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request,
// response=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request,
    input,output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response,u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(r.data,allocator)
}
// @brief Call the selected uwvm_fourier_bridge/srv/WaitGroupsMotionComplete service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request,
// response=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response.
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
call_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete :: proc(o:Owner,q:^Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request,
    input,output:[]u8,allocator:runtime.Allocator)->(Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response,
    u32) {
    b,c:=encode_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(q,input);
    if c!=0 {
        return Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response {
        },r.code
    };
    return decode_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(r.data,allocator)
}
