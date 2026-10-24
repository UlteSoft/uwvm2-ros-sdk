// @file interfaces.odin
// @brief Full agibot odin codecs and original record metadata.
// @details Complete agibot ros2_sdk_v1_1_0_main values in odin. 166 original records retain 552 fields and 133
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
// @brief Publish one complete aimdk_msgs/msg/AlertCode message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAlertCode.
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
publish_Ros2Aimdk_msgsMsgAlertCode :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgAlertCode,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgAlertCode(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/AlertCode message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAlertCode.
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
poll_Ros2Aimdk_msgsMsgAlertCode :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgAlertCode,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgAlertCode {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgAlertCode(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/AlertCodeArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAlertCodeArray.
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
publish_Ros2Aimdk_msgsMsgAlertCodeArray :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgAlertCodeArray,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgAlertCodeArray(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/AlertCodeArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAlertCodeArray.
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
poll_Ros2Aimdk_msgsMsgAlertCodeArray :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgAlertCodeArray,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgAlertCodeArray {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgAlertCodeArray(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/AudioCapture message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioCapture.
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
publish_Ros2Aimdk_msgsMsgAudioCapture :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgAudioCapture,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgAudioCapture(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/AudioCapture message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAudioCapture.
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
poll_Ros2Aimdk_msgsMsgAudioCapture :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgAudioCapture,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgAudioCapture {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgAudioCapture(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/AudioData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioData.
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
publish_Ros2Aimdk_msgsMsgAudioData :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgAudioData,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgAudioData(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/AudioData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAudioData.
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
poll_Ros2Aimdk_msgsMsgAudioData :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgAudioData,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgAudioData {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgAudioData(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/AudioFile message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioFile.
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
publish_Ros2Aimdk_msgsMsgAudioFile :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgAudioFile,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgAudioFile(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/AudioFile message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAudioFile.
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
poll_Ros2Aimdk_msgsMsgAudioFile :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgAudioFile,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgAudioFile {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgAudioFile(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/AudioInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioInfo.
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
publish_Ros2Aimdk_msgsMsgAudioInfo :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgAudioInfo,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgAudioInfo(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/AudioInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAudioInfo.
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
poll_Ros2Aimdk_msgsMsgAudioInfo :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgAudioInfo,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgAudioInfo {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgAudioInfo(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/AudioPlayback message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioPlayback.
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
publish_Ros2Aimdk_msgsMsgAudioPlayback :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgAudioPlayback,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgAudioPlayback(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/AudioPlayback message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAudioPlayback.
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
poll_Ros2Aimdk_msgsMsgAudioPlayback :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgAudioPlayback,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgAudioPlayback {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgAudioPlayback(r.data,allocator)
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
// @brief Publish one complete aimdk_msgs/msg/CommonTaskRequest message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonTaskRequest.
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
publish_Ros2Aimdk_msgsMsgCommonTaskRequest :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgCommonTaskRequest,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgCommonTaskRequest(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/CommonTaskRequest message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgCommonTaskRequest.
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
poll_Ros2Aimdk_msgsMsgCommonTaskRequest :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgCommonTaskRequest,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgCommonTaskRequest {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgCommonTaskRequest(r.data,allocator)
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
// @brief Publish one complete aimdk_msgs/msg/CurrentVersion message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCurrentVersion.
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
publish_Ros2Aimdk_msgsMsgCurrentVersion :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgCurrentVersion,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgCurrentVersion(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/CurrentVersion message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgCurrentVersion.
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
poll_Ros2Aimdk_msgsMsgCurrentVersion :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgCurrentVersion,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgCurrentVersion {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgCurrentVersion(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/DiagnosticInfo message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgDiagnosticInfo.
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
publish_Ros2Aimdk_msgsMsgDiagnosticInfo :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgDiagnosticInfo,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgDiagnosticInfo(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/DiagnosticInfo message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgDiagnosticInfo.
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
poll_Ros2Aimdk_msgsMsgDiagnosticInfo :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgDiagnosticInfo,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgDiagnosticInfo {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgDiagnosticInfo(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/DiagnosticInfoArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgDiagnosticInfoArray.
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
publish_Ros2Aimdk_msgsMsgDiagnosticInfoArray :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgDiagnosticInfoArray,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgDiagnosticInfoArray(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/DiagnosticInfoArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgDiagnosticInfoArray.
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
poll_Ros2Aimdk_msgsMsgDiagnosticInfoArray :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgDiagnosticInfoArray,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgDiagnosticInfoArray {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgDiagnosticInfoArray(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/DiagnosticType message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgDiagnosticType.
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
publish_Ros2Aimdk_msgsMsgDiagnosticType :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgDiagnosticType,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgDiagnosticType(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/DiagnosticType message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgDiagnosticType.
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
poll_Ros2Aimdk_msgsMsgDiagnosticType :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgDiagnosticType,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgDiagnosticType {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgDiagnosticType(r.data,allocator)
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
// @brief Publish one complete aimdk_msgs/msg/FixLineIntroState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFixLineIntroState.
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
publish_Ros2Aimdk_msgsMsgFixLineIntroState :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgFixLineIntroState,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgFixLineIntroState(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/FixLineIntroState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgFixLineIntroState.
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
poll_Ros2Aimdk_msgsMsgFixLineIntroState :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgFixLineIntroState,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgFixLineIntroState {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgFixLineIntroState(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/FocusRequester message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFocusRequester.
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
publish_Ros2Aimdk_msgsMsgFocusRequester :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgFocusRequester,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgFocusRequester(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/FocusRequester message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgFocusRequester.
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
poll_Ros2Aimdk_msgsMsgFocusRequester :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgFocusRequester,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgFocusRequester {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgFocusRequester(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/FocusResponse message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFocusResponse.
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
publish_Ros2Aimdk_msgsMsgFocusResponse :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgFocusResponse,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgFocusResponse(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/FocusResponse message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgFocusResponse.
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
poll_Ros2Aimdk_msgsMsgFocusResponse :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgFocusResponse,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgFocusResponse {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgFocusResponse(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/HRPoint message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHRPoint.
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
publish_Ros2Aimdk_msgsMsgHRPoint :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgHRPoint,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgHRPoint(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/HRPoint message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHRPoint.
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
poll_Ros2Aimdk_msgsMsgHRPoint :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgHRPoint,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgHRPoint {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgHRPoint(r.data,allocator)
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
// @brief Publish one complete aimdk_msgs/msg/HandTouchSensorData message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgHandTouchSensorData.
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
publish_Ros2Aimdk_msgsMsgHandTouchSensorData :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgHandTouchSensorData,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgHandTouchSensorData(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/HandTouchSensorData message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHandTouchSensorData.
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
poll_Ros2Aimdk_msgsMsgHandTouchSensorData :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgHandTouchSensorData,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgHandTouchSensorData {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgHandTouchSensorData(r.data,allocator)
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
// @brief Publish one complete aimdk_msgs/msg/HdsEventQuery message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHdsEventQuery.
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
publish_Ros2Aimdk_msgsMsgHdsEventQuery :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgHdsEventQuery,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgHdsEventQuery(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/HdsEventQuery message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHdsEventQuery.
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
poll_Ros2Aimdk_msgsMsgHdsEventQuery :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgHdsEventQuery,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgHdsEventQuery {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgHdsEventQuery(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/HdsEventRecord message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHdsEventRecord.
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
publish_Ros2Aimdk_msgsMsgHdsEventRecord :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgHdsEventRecord,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgHdsEventRecord(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/HdsEventRecord message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHdsEventRecord.
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
poll_Ros2Aimdk_msgsMsgHdsEventRecord :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgHdsEventRecord,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgHdsEventRecord {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgHdsEventRecord(r.data,allocator)
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
// @brief Publish one complete aimdk_msgs/msg/McBodyPoseStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcBodyPoseStatus.
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
publish_Ros2Aimdk_msgsMsgMcBodyPoseStatus :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMcBodyPoseStatus,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMcBodyPoseStatus(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/McBodyPoseStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcBodyPoseStatus.
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
poll_Ros2Aimdk_msgsMsgMcBodyPoseStatus :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMcBodyPoseStatus,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMcBodyPoseStatus {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMcBodyPoseStatus(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/McCommonState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcCommonState.
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
publish_Ros2Aimdk_msgsMsgMcCommonState :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMcCommonState,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMcCommonState(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/McCommonState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcCommonState.
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
poll_Ros2Aimdk_msgsMsgMcCommonState :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMcCommonState,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMcCommonState {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMcCommonState(r.data,allocator)
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
// @brief Publish one complete aimdk_msgs/msg/McFsmState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcFsmState.
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
publish_Ros2Aimdk_msgsMsgMcFsmState :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMcFsmState,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMcFsmState(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/McFsmState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcFsmState.
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
poll_Ros2Aimdk_msgsMsgMcFsmState :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMcFsmState,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMcFsmState {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMcFsmState(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/McHandStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcHandStatus.
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
publish_Ros2Aimdk_msgsMsgMcHandStatus :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMcHandStatus,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMcHandStatus(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/McHandStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcHandStatus.
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
poll_Ros2Aimdk_msgsMsgMcHandStatus :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMcHandStatus,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMcHandStatus {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMcHandStatus(r.data,allocator)
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
// @brief Publish one complete aimdk_msgs/msg/McLocomotionSpeedBounds message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds.
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
publish_Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/McLocomotionSpeedBounds message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds.
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
poll_Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/McLocomotionSpeedMode message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedMode.
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
publish_Ros2Aimdk_msgsMsgMcLocomotionSpeedMode :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMcLocomotionSpeedMode,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMcLocomotionSpeedMode(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/McLocomotionSpeedMode message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedMode.
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
poll_Ros2Aimdk_msgsMsgMcLocomotionSpeedMode :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMcLocomotionSpeedMode,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMcLocomotionSpeedMode {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMcLocomotionSpeedMode(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/McLocomotionSpeedStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.
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
publish_Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/McLocomotionSpeedStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.
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
poll_Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus(r.data,allocator)
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
// @brief Publish one complete aimdk_msgs/msg/McMotionStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcMotionStatus.
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
publish_Ros2Aimdk_msgsMsgMcMotionStatus :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMcMotionStatus,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMcMotionStatus(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/McMotionStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcMotionStatus.
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
poll_Ros2Aimdk_msgsMsgMcMotionStatus :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMcMotionStatus,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMcMotionStatus {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMcMotionStatus(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/McMotionType message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcMotionType.
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
publish_Ros2Aimdk_msgsMsgMcMotionType :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMcMotionType,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMcMotionType(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/McMotionType message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcMotionType.
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
poll_Ros2Aimdk_msgsMsgMcMotionType :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMcMotionType,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMcMotionType {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMcMotionType(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/McPlayerState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcPlayerState.
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
publish_Ros2Aimdk_msgsMsgMcPlayerState :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMcPlayerState,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMcPlayerState(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/McPlayerState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcPlayerState.
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
poll_Ros2Aimdk_msgsMsgMcPlayerState :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMcPlayerState,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMcPlayerState {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMcPlayerState(r.data,allocator)
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
// @brief Publish one complete aimdk_msgs/msg/McRuntimeModel message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcRuntimeModel.
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
publish_Ros2Aimdk_msgsMsgMcRuntimeModel :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMcRuntimeModel,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMcRuntimeModel(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/McRuntimeModel message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcRuntimeModel.
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
poll_Ros2Aimdk_msgsMsgMcRuntimeModel :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMcRuntimeModel,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMcRuntimeModel {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMcRuntimeModel(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/McServoStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcServoStatus.
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
publish_Ros2Aimdk_msgsMsgMcServoStatus :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgMcServoStatus,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgMcServoStatus(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/McServoStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcServoStatus.
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
poll_Ros2Aimdk_msgsMsgMcServoStatus :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgMcServoStatus,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgMcServoStatus {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgMcServoStatus(r.data,allocator)
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
// @brief Publish one complete aimdk_msgs/msg/NaviPoint message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgNaviPoint.
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
publish_Ros2Aimdk_msgsMsgNaviPoint :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgNaviPoint,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgNaviPoint(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/NaviPoint message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgNaviPoint.
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
poll_Ros2Aimdk_msgsMsgNaviPoint :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgNaviPoint,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgNaviPoint {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgNaviPoint(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/Path message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPath.
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
publish_Ros2Aimdk_msgsMsgPath :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgPath,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgPath(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/Path message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPath.
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
poll_Ros2Aimdk_msgsMsgPath :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgPath,u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgPath {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgPath(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/PilotState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPilotState.
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
publish_Ros2Aimdk_msgsMsgPilotState :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgPilotState,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgPilotState(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/PilotState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPilotState.
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
poll_Ros2Aimdk_msgsMsgPilotState :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgPilotState,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgPilotState {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgPilotState(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/PlayStateChange message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayStateChange.
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
publish_Ros2Aimdk_msgsMsgPlayStateChange :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgPlayStateChange,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgPlayStateChange(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/PlayStateChange message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPlayStateChange.
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
poll_Ros2Aimdk_msgsMsgPlayStateChange :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgPlayStateChange,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgPlayStateChange {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgPlayStateChange(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/PlayStateType message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayStateType.
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
publish_Ros2Aimdk_msgsMsgPlayStateType :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgPlayStateType,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgPlayStateType(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/PlayStateType message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPlayStateType.
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
poll_Ros2Aimdk_msgsMsgPlayStateType :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgPlayStateType,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgPlayStateType {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgPlayStateType(r.data,allocator)
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
// @brief Publish one complete aimdk_msgs/msg/PmuLedState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPmuLedState.
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
publish_Ros2Aimdk_msgsMsgPmuLedState :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgPmuLedState,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgPmuLedState(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/PmuLedState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPmuLedState.
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
poll_Ros2Aimdk_msgsMsgPmuLedState :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgPmuLedState,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgPmuLedState {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgPmuLedState(r.data,allocator)
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
// @brief Publish one complete aimdk_msgs/msg/PncTaskRequest message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPncTaskRequest.
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
publish_Ros2Aimdk_msgsMsgPncTaskRequest :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgPncTaskRequest,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgPncTaskRequest(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/PncTaskRequest message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPncTaskRequest.
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
poll_Ros2Aimdk_msgsMsgPncTaskRequest :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgPncTaskRequest,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgPncTaskRequest {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgPncTaskRequest(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/PncTaskResponse message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPncTaskResponse.
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
publish_Ros2Aimdk_msgsMsgPncTaskResponse :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgPncTaskResponse,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgPncTaskResponse(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/PncTaskResponse message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPncTaskResponse.
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
poll_Ros2Aimdk_msgsMsgPncTaskResponse :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgPncTaskResponse,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgPncTaskResponse {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgPncTaskResponse(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/PostProcSig message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPostProcSig.
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
publish_Ros2Aimdk_msgsMsgPostProcSig :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgPostProcSig,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgPostProcSig(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/PostProcSig message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPostProcSig.
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
poll_Ros2Aimdk_msgsMsgPostProcSig :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgPostProcSig,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgPostProcSig {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgPostProcSig(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/PostProcSigArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPostProcSigArray.
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
publish_Ros2Aimdk_msgsMsgPostProcSigArray :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgPostProcSigArray,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgPostProcSigArray(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/PostProcSigArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPostProcSigArray.
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
poll_Ros2Aimdk_msgsMsgPostProcSigArray :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgPostProcSigArray,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgPostProcSigArray {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgPostProcSigArray(r.data,allocator)
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
// @brief Publish one complete aimdk_msgs/msg/QRCode message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgQRCode.
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
publish_Ros2Aimdk_msgsMsgQRCode :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgQRCode,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgQRCode(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/QRCode message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgQRCode.
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
poll_Ros2Aimdk_msgsMsgQRCode :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgQRCode,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgQRCode {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgQRCode(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/QRPoint message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgQRPoint.
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
publish_Ros2Aimdk_msgsMsgQRPoint :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgQRPoint,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgQRPoint(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/QRPoint message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgQRPoint.
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
poll_Ros2Aimdk_msgsMsgQRPoint :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgQRPoint,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgQRPoint {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgQRPoint(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/Region message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgRegion.
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
publish_Ros2Aimdk_msgsMsgRegion :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgRegion,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgRegion(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/Region message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgRegion.
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
poll_Ros2Aimdk_msgsMsgRegion :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgRegion,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgRegion {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgRegion(r.data,allocator)
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
// @brief Publish one complete aimdk_msgs/msg/RobotResource message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgRobotResource.
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
publish_Ros2Aimdk_msgsMsgRobotResource :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgRobotResource,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgRobotResource(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/RobotResource message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgRobotResource.
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
poll_Ros2Aimdk_msgsMsgRobotResource :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgRobotResource,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgRobotResource {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgRobotResource(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/SigSet message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSigSet.
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
publish_Ros2Aimdk_msgsMsgSigSet :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgSigSet,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgSigSet(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/SigSet message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgSigSet.
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
poll_Ros2Aimdk_msgsMsgSigSet :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgSigSet,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgSigSet {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgSigSet(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/SlaveDevice message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSlaveDevice.
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
publish_Ros2Aimdk_msgsMsgSlaveDevice :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgSlaveDevice,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgSlaveDevice(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/SlaveDevice message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgSlaveDevice.
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
poll_Ros2Aimdk_msgsMsgSlaveDevice :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgSlaveDevice,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgSlaveDevice {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgSlaveDevice(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/SmSystemState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSmSystemState.
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
publish_Ros2Aimdk_msgsMsgSmSystemState :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgSmSystemState,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgSmSystemState(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/SmSystemState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgSmSystemState.
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
poll_Ros2Aimdk_msgsMsgSmSystemState :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgSmSystemState,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgSmSystemState {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgSmSystemState(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/SystemStatus message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSystemStatus.
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
publish_Ros2Aimdk_msgsMsgSystemStatus :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgSystemStatus,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgSystemStatus(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/SystemStatus message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgSystemStatus.
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
poll_Ros2Aimdk_msgsMsgSystemStatus :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgSystemStatus,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgSystemStatus {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgSystemStatus(r.data,allocator)
}
// @brief Publish one complete aimdk_msgs/msg/TaskMasterState message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgTaskMasterState.
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
publish_Ros2Aimdk_msgsMsgTaskMasterState :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgTaskMasterState,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgTaskMasterState(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/TaskMasterState message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgTaskMasterState.
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
poll_Ros2Aimdk_msgsMsgTaskMasterState :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgTaskMasterState,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgTaskMasterState {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgTaskMasterState(r.data,allocator)
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
// @brief Publish one complete aimdk_msgs/msg/UpperBodyCommandArray message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components:
// message=Ros2Aimdk_msgsMsgUpperBodyCommandArray.
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
publish_Ros2Aimdk_msgsMsgUpperBodyCommandArray :: proc(o:Owner,v:^Ros2Aimdk_msgsMsgUpperBodyCommandArray,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Aimdk_msgsMsgUpperBodyCommandArray(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete aimdk_msgs/msg/UpperBodyCommandArray message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components:
// message=Ros2Aimdk_msgsMsgUpperBodyCommandArray.
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
poll_Ros2Aimdk_msgsMsgUpperBodyCommandArray :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsMsgUpperBodyCommandArray,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Aimdk_msgsMsgUpperBodyCommandArray {
        },r.code
    };
    return decode_Ros2Aimdk_msgsMsgUpperBodyCommandArray(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/AbandonAudioFocus service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvAbandonAudioFocus_Request, response=Ros2Aimdk_msgsSrvAbandonAudioFocus_Response.
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
call_Ros2Aimdk_msgsSrvAbandonAudioFocus :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvAbandonAudioFocus_Request,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvAbandonAudioFocus_Response,u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvAbandonAudioFocus_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvAbandonAudioFocus_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvAbandonAudioFocus_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvAbandonAudioFocus_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/ExecuteActionResource service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvExecuteActionResource_Request, response=Ros2Aimdk_msgsSrvExecuteActionResource_Response.
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
call_Ros2Aimdk_msgsSrvExecuteActionResource :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvExecuteActionResource_Request,input,
    output:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvExecuteActionResource_Response,u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvExecuteActionResource_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvExecuteActionResource_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvExecuteActionResource_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvExecuteActionResource_Response(r.data,allocator)
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
// @brief Call the selected aimdk_msgs/srv/GetHdsEventHistory service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetHdsEventHistory_Request, response=Ros2Aimdk_msgsSrvGetHdsEventHistory_Response.
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
call_Ros2Aimdk_msgsSrvGetHdsEventHistory :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvGetHdsEventHistory_Request,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvGetHdsEventHistory_Response,u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvGetHdsEventHistory_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvGetHdsEventHistory_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvGetHdsEventHistory_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvGetHdsEventHistory_Response(r.data,allocator)
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
// @brief Call the selected aimdk_msgs/srv/GetMcLocomotionSpeedStatus service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request,
// response=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response.
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
call_Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request,
    input,output:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response,u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/GetMcPresetMotionState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request,
// response=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response.
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
call_Ros2Aimdk_msgsSrvGetMcPresetMotionState :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request,input,
    output:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response,u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/GetMicSourceRequest service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetMicSourceRequest_Request, response=Ros2Aimdk_msgsSrvGetMicSourceRequest_Response.
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
call_Ros2Aimdk_msgsSrvGetMicSourceRequest :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvGetMicSourceRequest_Request,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvGetMicSourceRequest_Response,u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvGetMicSourceRequest_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvGetMicSourceRequest_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvGetMicSourceRequest_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvGetMicSourceRequest_Response(r.data,allocator)
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
// @brief Call the selected aimdk_msgs/srv/GetRobotResources service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetRobotResources_Request, response=Ros2Aimdk_msgsSrvGetRobotResources_Response.
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
call_Ros2Aimdk_msgsSrvGetRobotResources :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvGetRobotResources_Request,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvGetRobotResources_Response,u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvGetRobotResources_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvGetRobotResources_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvGetRobotResources_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvGetRobotResources_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/GetStoredMapByName service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetStoredMapByName_Request, response=Ros2Aimdk_msgsSrvGetStoredMapByName_Response.
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
call_Ros2Aimdk_msgsSrvGetStoredMapByName :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvGetStoredMapByName_Request,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvGetStoredMapByName_Response,u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvGetStoredMapByName_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvGetStoredMapByName_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvGetStoredMapByName_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvGetStoredMapByName_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/GetSystemState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGetSystemState_Request, response=Ros2Aimdk_msgsSrvGetSystemState_Response.
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
call_Ros2Aimdk_msgsSrvGetSystemState :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvGetSystemState_Request,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvGetSystemState_Response,u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvGetSystemState_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvGetSystemState_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvGetSystemState_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvGetSystemState_Response(r.data,allocator)
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
// @brief Call the selected aimdk_msgs/srv/GroupControlTimeSync service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvGroupControlTimeSync_Request, response=Ros2Aimdk_msgsSrvGroupControlTimeSync_Response.
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
call_Ros2Aimdk_msgsSrvGroupControlTimeSync :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvGroupControlTimeSync_Request,input,
    output:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvGroupControlTimeSync_Response,u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvGroupControlTimeSync_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvGroupControlTimeSync_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvGroupControlTimeSync_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvGroupControlTimeSync_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/MigrateSystemState service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvMigrateSystemState_Request, response=Ros2Aimdk_msgsSrvMigrateSystemState_Response.
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
call_Ros2Aimdk_msgsSrvMigrateSystemState :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvMigrateSystemState_Request,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvMigrateSystemState_Response,u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvMigrateSystemState_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvMigrateSystemState_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvMigrateSystemState_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvMigrateSystemState_Response(r.data,allocator)
}
// @brief Call the selected aimdk_msgs/srv/PlayAudioFile service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvPlayAudioFile_Request, response=Ros2Aimdk_msgsSrvPlayAudioFile_Response.
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
call_Ros2Aimdk_msgsSrvPlayAudioFile :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvPlayAudioFile_Request,input,output:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvPlayAudioFile_Response,
    u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvPlayAudioFile_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvPlayAudioFile_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvPlayAudioFile_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvPlayAudioFile_Response(r.data,allocator)
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
// @brief Call the selected aimdk_msgs/srv/PlayEmojiGroup service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvPlayEmojiGroup_Request, response=Ros2Aimdk_msgsSrvPlayEmojiGroup_Response.
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
call_Ros2Aimdk_msgsSrvPlayEmojiGroup :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvPlayEmojiGroup_Request,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvPlayEmojiGroup_Response,u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvPlayEmojiGroup_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvPlayEmojiGroup_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvPlayEmojiGroup_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvPlayEmojiGroup_Response(r.data,allocator)
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
// @brief Call the selected aimdk_msgs/srv/RequestAudioFocus service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvRequestAudioFocus_Request, response=Ros2Aimdk_msgsSrvRequestAudioFocus_Response.
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
call_Ros2Aimdk_msgsSrvRequestAudioFocus :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvRequestAudioFocus_Request,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvRequestAudioFocus_Response,u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvRequestAudioFocus_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvRequestAudioFocus_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvRequestAudioFocus_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvRequestAudioFocus_Response(r.data,allocator)
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
// @brief Call the selected aimdk_msgs/srv/SetMicSourceRequest service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvSetMicSourceRequest_Request, response=Ros2Aimdk_msgsSrvSetMicSourceRequest_Response.
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
call_Ros2Aimdk_msgsSrvSetMicSourceRequest :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvSetMicSourceRequest_Request,input,output:[]u8,
    allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvSetMicSourceRequest_Response,u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvSetMicSourceRequest_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvSetMicSourceRequest_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvSetMicSourceRequest_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvSetMicSourceRequest_Response(r.data,allocator)
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
// @brief Call the selected aimdk_msgs/srv/SetPmuLed service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvSetPmuLed_Request, response=Ros2Aimdk_msgsSrvSetPmuLed_Response.
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
call_Ros2Aimdk_msgsSrvSetPmuLed :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvSetPmuLed_Request,input,output:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvSetPmuLed_Response,
    u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvSetPmuLed_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvSetPmuLed_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvSetPmuLed_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvSetPmuLed_Response(r.data,allocator)
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
// @brief Call the selected aimdk_msgs/srv/StopAudioPlay service.
// @details Encode the exact request and decode the complete response using the separately granted legacy
// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically. Components:
// request=Ros2Aimdk_msgsSrvStopAudioPlay_Request, response=Ros2Aimdk_msgsSrvStopAudioPlay_Response.
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
call_Ros2Aimdk_msgsSrvStopAudioPlay :: proc(o:Owner,q:^Ros2Aimdk_msgsSrvStopAudioPlay_Request,input,output:[]u8,allocator:runtime.Allocator)->(Ros2Aimdk_msgsSrvStopAudioPlay_Response,
    u32) {
    b,c:=encode_Ros2Aimdk_msgsSrvStopAudioPlay_Request(q,input);
    if c!=0 {
        return Ros2Aimdk_msgsSrvStopAudioPlay_Response {
        },c
    };
    r:=request(o,.service_call,b,output);
    if r.code!=0 {
        return Ros2Aimdk_msgsSrvStopAudioPlay_Response {
        },r.code
    };
    return decode_Ros2Aimdk_msgsSrvStopAudioPlay_Response(r.data,allocator)
}
