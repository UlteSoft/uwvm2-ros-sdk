// @file interfaces.odin
// @brief Full agibot odin codecs and original record metadata.
// @details Complete agibot ros2_sdk_v0_9_0_main values in odin. 75 original records retain 237 fields and 57
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/agibot/en_US/catalog/.
package roswasm
// Generated typed interfaces; explicit owner and caller buffers.
import "base:runtime"
// @brief Publish one complete aimdk_msgs/msg/AgentProperties message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAgentProperties.
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
publish_Ros2Aimdk_msgsMsgAgentProperties :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgAgentProperties,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgAgentProperties(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/AgentProperties message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAgentProperties.
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
poll_Ros2Aimdk_msgsMsgAgentProperties :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgAgentProperties,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgAgentProperties {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgAgentProperties(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/AgentPropertiesValue message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgAgentPropertiesValue.
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
publish_Ros2Aimdk_msgsMsgAgentPropertiesValue :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgAgentPropertiesValue,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgAgentPropertiesValue(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/AgentPropertiesValue message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Aimdk_msgsMsgAgentPropertiesValue.
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
poll_Ros2Aimdk_msgsMsgAgentPropertiesValue :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgAgentPropertiesValue,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgAgentPropertiesValue {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgAgentPropertiesValue(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/AgentPropertyIdType message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgAgentPropertyIdType.
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
publish_Ros2Aimdk_msgsMsgAgentPropertyIdType :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgAgentPropertyIdType,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgAgentPropertyIdType(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/AgentPropertyIdType message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAgentPropertyIdType.
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
poll_Ros2Aimdk_msgsMsgAgentPropertyIdType :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgAgentPropertyIdType,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgAgentPropertyIdType {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgAgentPropertyIdType(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/AudioVadStateType message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioVadStateType.
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
publish_Ros2Aimdk_msgsMsgAudioVadStateType :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgAudioVadStateType,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgAudioVadStateType(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/AudioVadStateType message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAudioVadStateType.
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
poll_Ros2Aimdk_msgsMsgAudioVadStateType :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgAudioVadStateType,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgAudioVadStateType {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgAudioVadStateType(r.data,allocator)
}
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
// @brief Publish one complete aimdk_msgs/msg/FaceEmojiStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFaceEmojiStatus.
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
publish_Ros2Aimdk_msgsMsgFaceEmojiStatus :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgFaceEmojiStatus,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgFaceEmojiStatus(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/FaceEmojiStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgFaceEmojiStatus.
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
poll_Ros2Aimdk_msgsMsgFaceEmojiStatus :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgFaceEmojiStatus,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgFaceEmojiStatus {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgFaceEmojiStatus(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/HandCommand message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandCommand.
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
publish_Ros2Aimdk_msgsMsgHandCommand :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgHandCommand,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgHandCommand(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/HandCommand message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHandCommand.
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
poll_Ros2Aimdk_msgsMsgHandCommand :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgHandCommand,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgHandCommand {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgHandCommand(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/HandCommandArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandCommandArray.
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
publish_Ros2Aimdk_msgsMsgHandCommandArray :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgHandCommandArray,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgHandCommandArray(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/HandCommandArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHandCommandArray.
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
poll_Ros2Aimdk_msgsMsgHandCommandArray :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgHandCommandArray,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgHandCommandArray {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgHandCommandArray(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/HandState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandState.
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
publish_Ros2Aimdk_msgsMsgHandState :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgHandState,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgHandState(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/HandState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHandState.
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
poll_Ros2Aimdk_msgsMsgHandState :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgHandState,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgHandState {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgHandState(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/HandStateArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandStateArray.
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
publish_Ros2Aimdk_msgsMsgHandStateArray :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgHandStateArray,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgHandStateArray(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/HandStateArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHandStateArray.
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
poll_Ros2Aimdk_msgsMsgHandStateArray :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgHandStateArray,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgHandStateArray {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgHandStateArray(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/HandType message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandType.
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
publish_Ros2Aimdk_msgsMsgHandType :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgHandType,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgHandType(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/HandType message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHandType.
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
poll_Ros2Aimdk_msgsMsgHandType :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgHandType,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgHandType {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgHandType(r.data,allocator)
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
// @brief Publish one complete aimdk_msgs/msg/McAction message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcAction.
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
publish_Ros2Aimdk_msgsMsgMcAction :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMcAction,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMcAction(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/McAction message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcAction.
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
poll_Ros2Aimdk_msgsMsgMcAction :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMcAction,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMcAction {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMcAction(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/McActionCommand message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcActionCommand.
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
publish_Ros2Aimdk_msgsMsgMcActionCommand :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMcActionCommand,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMcActionCommand(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/McActionCommand message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcActionCommand.
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
poll_Ros2Aimdk_msgsMsgMcActionCommand :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMcActionCommand,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMcActionCommand {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMcActionCommand(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/McActionInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcActionInfo.
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
publish_Ros2Aimdk_msgsMsgMcActionInfo :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMcActionInfo,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMcActionInfo(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/McActionInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcActionInfo.
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
poll_Ros2Aimdk_msgsMsgMcActionInfo :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMcActionInfo,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMcActionInfo {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMcActionInfo(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/McActionStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcActionStatus.
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
publish_Ros2Aimdk_msgsMsgMcActionStatus :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMcActionStatus,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMcActionStatus(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/McActionStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcActionStatus.
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
poll_Ros2Aimdk_msgsMsgMcActionStatus :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMcActionStatus,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMcActionStatus {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMcActionStatus(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/McControlArea message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcControlArea.
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
publish_Ros2Aimdk_msgsMsgMcControlArea :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMcControlArea,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMcControlArea(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/McControlArea message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcControlArea.
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
poll_Ros2Aimdk_msgsMsgMcControlArea :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMcControlArea,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMcControlArea {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMcControlArea(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/McInputAction message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcInputAction.
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
publish_Ros2Aimdk_msgsMsgMcInputAction :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMcInputAction,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMcInputAction(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/McInputAction message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcInputAction.
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
poll_Ros2Aimdk_msgsMsgMcInputAction :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMcInputAction,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMcInputAction {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMcInputAction(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/McInputSource message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcInputSource.
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
publish_Ros2Aimdk_msgsMsgMcInputSource :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMcInputSource,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMcInputSource(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/McInputSource message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcInputSource.
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
poll_Ros2Aimdk_msgsMsgMcInputSource :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMcInputSource,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMcInputSource {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMcInputSource(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/McLocomotionVelocity message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgMcLocomotionVelocity.
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
publish_Ros2Aimdk_msgsMsgMcLocomotionVelocity :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMcLocomotionVelocity,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMcLocomotionVelocity(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/McLocomotionVelocity message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Aimdk_msgsMsgMcLocomotionVelocity.
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
poll_Ros2Aimdk_msgsMsgMcLocomotionVelocity :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMcLocomotionVelocity,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMcLocomotionVelocity {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMcLocomotionVelocity(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/McPresetMotion message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcPresetMotion.
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
publish_Ros2Aimdk_msgsMsgMcPresetMotion :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMcPresetMotion,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMcPresetMotion(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/McPresetMotion message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcPresetMotion.
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
poll_Ros2Aimdk_msgsMsgMcPresetMotion :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMcPresetMotion,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMcPresetMotion {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMcPresetMotion(r.data,allocator)
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
// @brief Publish one complete aimdk_msgs/msg/PlayMediaFileRequest message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgPlayMediaFileRequest.
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
publish_Ros2Aimdk_msgsMsgPlayMediaFileRequest :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgPlayMediaFileRequest,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgPlayMediaFileRequest(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/PlayMediaFileRequest message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Aimdk_msgsMsgPlayMediaFileRequest.
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
poll_Ros2Aimdk_msgsMsgPlayMediaFileRequest :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgPlayMediaFileRequest,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgPlayMediaFileRequest {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgPlayMediaFileRequest(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/PlayTtsRequest message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayTtsRequest.
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
publish_Ros2Aimdk_msgsMsgPlayTtsRequest :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgPlayTtsRequest,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgPlayTtsRequest(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/PlayTtsRequest message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPlayTtsRequest.
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
poll_Ros2Aimdk_msgsMsgPlayTtsRequest :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgPlayTtsRequest,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgPlayTtsRequest {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgPlayTtsRequest(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/PlayTtsResponse message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayTtsResponse.
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
publish_Ros2Aimdk_msgsMsgPlayTtsResponse :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgPlayTtsResponse,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgPlayTtsResponse(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/PlayTtsResponse message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPlayTtsResponse.
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
poll_Ros2Aimdk_msgsMsgPlayTtsResponse :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgPlayTtsResponse,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgPlayTtsResponse {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgPlayTtsResponse(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/PmuState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPmuState.
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
publish_Ros2Aimdk_msgsMsgPmuState :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgPmuState,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgPmuState(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/PmuState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPmuState.
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
poll_Ros2Aimdk_msgsMsgPmuState :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgPmuState,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgPmuState {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgPmuState(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/ProcessedAudioOutput message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgProcessedAudioOutput.
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
publish_Ros2Aimdk_msgsMsgProcessedAudioOutput :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgProcessedAudioOutput,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgProcessedAudioOutput(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/ProcessedAudioOutput message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Aimdk_msgsMsgProcessedAudioOutput.
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
poll_Ros2Aimdk_msgsMsgProcessedAudioOutput :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgProcessedAudioOutput,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgProcessedAudioOutput {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgProcessedAudioOutput(r.data,allocator)
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
// @brief Publish one complete aimdk_msgs/msg/TouchState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgTouchState.
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
publish_Ros2Aimdk_msgsMsgTouchState :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgTouchState,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgTouchState(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/TouchState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgTouchState.
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
poll_Ros2Aimdk_msgsMsgTouchState :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgTouchState,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgTouchState {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgTouchState(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/TtsPriorityLevel message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgTtsPriorityLevel.
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
publish_Ros2Aimdk_msgsMsgTtsPriorityLevel :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgTtsPriorityLevel,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgTtsPriorityLevel(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/TtsPriorityLevel message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgTtsPriorityLevel.
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
poll_Ros2Aimdk_msgsMsgTtsPriorityLevel :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgTtsPriorityLevel,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgTtsPriorityLevel {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgTtsPriorityLevel(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/GetAllJointState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetAllJointState_Request, response=Ros2Aimdk_msgsSrvGetAllJointState_Response.
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
call_Ros2Aimdk_msgsSrvGetAllJointState :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvGetAllJointState_Request,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvGetAllJointState_Response,u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvGetAllJointState_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvGetAllJointState_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvGetAllJointState_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvGetAllJointState_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/GetCurrentInputSource service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetCurrentInputSource_Request, response=Ros2Aimdk_msgsSrvGetCurrentInputSource_Response.
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
call_Ros2Aimdk_msgsSrvGetCurrentInputSource :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvGetCurrentInputSource_Request,input,
    output:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvGetCurrentInputSource_Response,u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvGetCurrentInputSource_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvGetCurrentInputSource_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvGetCurrentInputSource_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvGetCurrentInputSource_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/GetHandType service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetHandType_Request, response=Ros2Aimdk_msgsSrvGetHandType_Response.
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
call_Ros2Aimdk_msgsSrvGetHandType :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvGetHandType_Request,input,output:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvGetHandType_Response,
    u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvGetHandType_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvGetHandType_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvGetHandType_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvGetHandType_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/GetMcAction service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetMcAction_Request, response=Ros2Aimdk_msgsSrvGetMcAction_Response.
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
call_Ros2Aimdk_msgsSrvGetMcAction :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvGetMcAction_Request,input,output:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvGetMcAction_Response,
    u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvGetMcAction_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvGetMcAction_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvGetMcAction_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvGetMcAction_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/GetMute service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetMute_Request, response=Ros2Aimdk_msgsSrvGetMute_Response.
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
call_Ros2Aimdk_msgsSrvGetMute :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvGetMute_Request,input,output:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvGetMute_Response,
    u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvGetMute_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvGetMute_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvGetMute_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvGetMute_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/GetVolume service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetVolume_Request, response=Ros2Aimdk_msgsSrvGetVolume_Response.
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
call_Ros2Aimdk_msgsSrvGetVolume :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvGetVolume_Request,input,output:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvGetVolume_Response,
    u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvGetVolume_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvGetVolume_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvGetVolume_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvGetVolume_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/LedStripCommand service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvLedStripCommand_Request, response=Ros2Aimdk_msgsSrvLedStripCommand_Response.
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
call_Ros2Aimdk_msgsSrvLedStripCommand :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvLedStripCommand_Request,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvLedStripCommand_Response,u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvLedStripCommand_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvLedStripCommand_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvLedStripCommand_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvLedStripCommand_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/PlayEmoji service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvPlayEmoji_Request, response=Ros2Aimdk_msgsSrvPlayEmoji_Response.
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
call_Ros2Aimdk_msgsSrvPlayEmoji :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvPlayEmoji_Request,input,output:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvPlayEmoji_Response,
    u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvPlayEmoji_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvPlayEmoji_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvPlayEmoji_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvPlayEmoji_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/PlayMediaFile service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvPlayMediaFile_Request, response=Ros2Aimdk_msgsSrvPlayMediaFile_Response.
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
call_Ros2Aimdk_msgsSrvPlayMediaFile :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvPlayMediaFile_Request,input,output:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvPlayMediaFile_Response,
    u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvPlayMediaFile_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvPlayMediaFile_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvPlayMediaFile_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvPlayMediaFile_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/PlayTts service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvPlayTts_Request, response=Ros2Aimdk_msgsSrvPlayTts_Response.
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
call_Ros2Aimdk_msgsSrvPlayTts :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvPlayTts_Request,input,output:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvPlayTts_Response,
    u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvPlayTts_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvPlayTts_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvPlayTts_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvPlayTts_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/PlayVideo service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvPlayVideo_Request, response=Ros2Aimdk_msgsSrvPlayVideo_Response.
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
call_Ros2Aimdk_msgsSrvPlayVideo :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvPlayVideo_Request,input,output:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvPlayVideo_Response,
    u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvPlayVideo_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvPlayVideo_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvPlayVideo_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvPlayVideo_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/PlayVideoGroup service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvPlayVideoGroup_Request, response=Ros2Aimdk_msgsSrvPlayVideoGroup_Response.
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
call_Ros2Aimdk_msgsSrvPlayVideoGroup :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvPlayVideoGroup_Request,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvPlayVideoGroup_Response,u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvPlayVideoGroup_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvPlayVideoGroup_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvPlayVideoGroup_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvPlayVideoGroup_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/SetAgentPropertiesRequest service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request,
// response=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response.
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
call_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request,
    input,output:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response,u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/SetMcAction service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvSetMcAction_Request, response=Ros2Aimdk_msgsSrvSetMcAction_Response.
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
call_Ros2Aimdk_msgsSrvSetMcAction :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvSetMcAction_Request,input,output:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvSetMcAction_Response,
    u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvSetMcAction_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvSetMcAction_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvSetMcAction_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvSetMcAction_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/SetMcInputSource service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvSetMcInputSource_Request, response=Ros2Aimdk_msgsSrvSetMcInputSource_Response.
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
call_Ros2Aimdk_msgsSrvSetMcInputSource :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvSetMcInputSource_Request,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvSetMcInputSource_Response,u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvSetMcInputSource_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvSetMcInputSource_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvSetMcInputSource_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvSetMcInputSource_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/SetMcPresetMotion service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvSetMcPresetMotion_Request, response=Ros2Aimdk_msgsSrvSetMcPresetMotion_Response.
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
call_Ros2Aimdk_msgsSrvSetMcPresetMotion :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvSetMcPresetMotion_Request,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvSetMcPresetMotion_Response,u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvSetMcPresetMotion_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvSetMcPresetMotion_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvSetMcPresetMotion_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvSetMcPresetMotion_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/SetMute service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvSetMute_Request, response=Ros2Aimdk_msgsSrvSetMute_Response.
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
call_Ros2Aimdk_msgsSrvSetMute :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvSetMute_Request,input,output:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvSetMute_Response,
    u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvSetMute_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvSetMute_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvSetMute_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvSetMute_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/SetVolume service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvSetVolume_Request, response=Ros2Aimdk_msgsSrvSetVolume_Response.
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
call_Ros2Aimdk_msgsSrvSetVolume :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvSetVolume_Request,input,output:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvSetVolume_Response,
    u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvSetVolume_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvSetVolume_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvSetVolume_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvSetVolume_Response(r.data,allocator)
}
