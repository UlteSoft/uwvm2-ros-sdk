// @file interfaces.odin
// @brief Full agibot odin codecs and original record metadata.
// @details Complete agibot ros2_sdk_v1_1_0_rl values in odin. 19 original records retain 71 fields and 19 interface
// descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
// Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
// manual under document/platform/agibot/en_US/catalog/.
package roswasm
// Generated typed interfaces; explicit owner and caller buffers.
import "base:runtime"
// @brief Publish one complete aimdk_msgs/msg/CommonRequest message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonRequest.
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
publish_Ros2Aimdk_msgsMsgCommonRequest :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgCommonRequest,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgCommonRequest(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/CommonRequest message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgCommonRequest.
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
poll_Ros2Aimdk_msgsMsgCommonRequest :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgCommonRequest,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgCommonRequest {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgCommonRequest(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/CommonResponse message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonResponse.
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
publish_Ros2Aimdk_msgsMsgCommonResponse :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgCommonResponse,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgCommonResponse(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/CommonResponse message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgCommonResponse.
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
poll_Ros2Aimdk_msgsMsgCommonResponse :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgCommonResponse,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgCommonResponse {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgCommonResponse(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/CommonState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonState.
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
publish_Ros2Aimdk_msgsMsgCommonState :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgCommonState,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgCommonState(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/CommonState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgCommonState.
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
poll_Ros2Aimdk_msgsMsgCommonState :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgCommonState,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgCommonState {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgCommonState(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/CommonTaskResponse message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonTaskResponse.
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
publish_Ros2Aimdk_msgsMsgCommonTaskResponse :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgCommonTaskResponse,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgCommonTaskResponse(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/CommonTaskResponse message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgCommonTaskResponse.
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
poll_Ros2Aimdk_msgsMsgCommonTaskResponse :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgCommonTaskResponse,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgCommonTaskResponse {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgCommonTaskResponse(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/DomainErrorState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgDomainErrorState.
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
publish_Ros2Aimdk_msgsMsgDomainErrorState :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgDomainErrorState,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgDomainErrorState(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/DomainErrorState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgDomainErrorState.
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
poll_Ros2Aimdk_msgsMsgDomainErrorState :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgDomainErrorState,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgDomainErrorState {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgDomainErrorState(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/JointCommand message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointCommand.
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
publish_Ros2Aimdk_msgsMsgJointCommand :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgJointCommand,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgJointCommand(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/JointCommand message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgJointCommand.
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
poll_Ros2Aimdk_msgsMsgJointCommand :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgJointCommand,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgJointCommand {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgJointCommand(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/JointCommandArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointCommandArray.
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
publish_Ros2Aimdk_msgsMsgJointCommandArray :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgJointCommandArray,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgJointCommandArray(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/JointCommandArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgJointCommandArray.
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
poll_Ros2Aimdk_msgsMsgJointCommandArray :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgJointCommandArray,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgJointCommandArray {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgJointCommandArray(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/JointState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointState.
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
publish_Ros2Aimdk_msgsMsgJointState :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgJointState,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgJointState(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/JointState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgJointState.
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
poll_Ros2Aimdk_msgsMsgJointState :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgJointState,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgJointState {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgJointState(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/JointStateArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointStateArray.
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
publish_Ros2Aimdk_msgsMsgJointStateArray :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgJointStateArray,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgJointStateArray(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/JointStateArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgJointStateArray.
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
poll_Ros2Aimdk_msgsMsgJointStateArray :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgJointStateArray,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgJointStateArray {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgJointStateArray(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/MessageHeader message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMessageHeader.
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
publish_Ros2Aimdk_msgsMsgMessageHeader :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMessageHeader,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMessageHeader(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/MessageHeader message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMessageHeader.
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
poll_Ros2Aimdk_msgsMsgMessageHeader :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMessageHeader,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMessageHeader {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMessageHeader(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/ModuleChannelInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgModuleChannelInfo.
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
publish_Ros2Aimdk_msgsMsgModuleChannelInfo :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgModuleChannelInfo,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgModuleChannelInfo(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/ModuleChannelInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgModuleChannelInfo.
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
poll_Ros2Aimdk_msgsMsgModuleChannelInfo :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgModuleChannelInfo,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgModuleChannelInfo {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgModuleChannelInfo(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/ModuleResourceInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgModuleResourceInfo.
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
publish_Ros2Aimdk_msgsMsgModuleResourceInfo :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgModuleResourceInfo,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgModuleResourceInfo(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/ModuleResourceInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgModuleResourceInfo.
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
poll_Ros2Aimdk_msgsMsgModuleResourceInfo :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgModuleResourceInfo,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgModuleResourceInfo {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgModuleResourceInfo(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/ModuleRpcInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgModuleRpcInfo.
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
publish_Ros2Aimdk_msgsMsgModuleRpcInfo :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgModuleRpcInfo,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgModuleRpcInfo(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/ModuleRpcInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgModuleRpcInfo.
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
poll_Ros2Aimdk_msgsMsgModuleRpcInfo :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgModuleRpcInfo,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgModuleRpcInfo {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgModuleRpcInfo(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/ProcessInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgProcessInfo.
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
publish_Ros2Aimdk_msgsMsgProcessInfo :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgProcessInfo,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgProcessInfo(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/ProcessInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgProcessInfo.
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
poll_Ros2Aimdk_msgsMsgProcessInfo :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgProcessInfo,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgProcessInfo {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgProcessInfo(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/ProcessResourceInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgProcessResourceInfo.
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
publish_Ros2Aimdk_msgsMsgProcessResourceInfo :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgProcessResourceInfo,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgProcessResourceInfo(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/ProcessResourceInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgProcessResourceInfo.
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
poll_Ros2Aimdk_msgsMsgProcessResourceInfo :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgProcessResourceInfo,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgProcessResourceInfo {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgProcessResourceInfo(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/RequestHeader message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgRequestHeader.
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
publish_Ros2Aimdk_msgsMsgRequestHeader :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgRequestHeader,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgRequestHeader(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/RequestHeader message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgRequestHeader.
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
poll_Ros2Aimdk_msgsMsgRequestHeader :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgRequestHeader,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgRequestHeader {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgRequestHeader(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/ResponseHeader message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgResponseHeader.
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
publish_Ros2Aimdk_msgsMsgResponseHeader :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgResponseHeader,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgResponseHeader(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/ResponseHeader message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgResponseHeader.
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
poll_Ros2Aimdk_msgsMsgResponseHeader :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgResponseHeader,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgResponseHeader {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgResponseHeader(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/ThreadResourceInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgThreadResourceInfo.
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
publish_Ros2Aimdk_msgsMsgThreadResourceInfo :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgThreadResourceInfo,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgThreadResourceInfo(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/ThreadResourceInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgThreadResourceInfo.
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
poll_Ros2Aimdk_msgsMsgThreadResourceInfo :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgThreadResourceInfo,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgThreadResourceInfo {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgThreadResourceInfo(r.data,allocator)
}
