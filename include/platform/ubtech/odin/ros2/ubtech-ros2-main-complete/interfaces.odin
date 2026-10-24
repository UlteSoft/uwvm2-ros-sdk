// @file interfaces.odin
// @brief Full ubtech odin codecs and original record metadata.
// @details Complete ubtech ros2_main values in odin. 8 original records retain 24 fields and 8 interface
// descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
// Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
// manual under document/platform/ubtech/en_US/catalog/.
package roswasm
// Generated typed interfaces; explicit owner and caller buffers.
import "base:runtime"
// @brief Publish one complete grab_demo_msgs/msg/GraspCandidate message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Grab_demo_msgsMsgGraspCandidate.
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
publish_Ros2Grab_demo_msgsMsgGraspCandidate :: proc(o:Owner,v:^Ros2Grab_demo_msgsMsgGraspCandidate,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Grab_demo_msgsMsgGraspCandidate(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete grab_demo_msgs/msg/GraspCandidate message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Grab_demo_msgsMsgGraspCandidate.
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
poll_Ros2Grab_demo_msgsMsgGraspCandidate :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Grab_demo_msgsMsgGraspCandidate,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Grab_demo_msgsMsgGraspCandidate {
        },r.code
    };
    return decode_Ros2Grab_demo_msgsMsgGraspCandidate(r.data,allocator)
}
// @brief Publish one complete grab_demo_msgs/msg/IKRequest message.
// @details Encode the complete message before the single effectful publish. A successful return acknowledges
// transport admission, not physical controller completion. Components: message=Ros2Grab_demo_msgsMsgIKRequest.
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
publish_Ros2Grab_demo_msgsMsgIKRequest :: proc(o:Owner,v:^Ros2Grab_demo_msgsMsgIKRequest,scratch:[]u8)->u32 {
    b,c:=encode_Ros2Grab_demo_msgsMsgIKRequest(v,scratch);
    if c!=0 {
        return c
    };
    return publish(o,b)
}
// @brief Poll and decode one complete grab_demo_msgs/msg/IKRequest message.
// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default message;
// a capacity refusal may already have consumed the event. Components: message=Ros2Grab_demo_msgsMsgIKRequest.
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
poll_Ros2Grab_demo_msgsMsgIKRequest :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->(Ros2Grab_demo_msgsMsgIKRequest,
    u32) {
    r:=poll(o,scratch);
    if r.code!=0 {
        return Ros2Grab_demo_msgsMsgIKRequest {
        },r.code
    };
    return decode_Ros2Grab_demo_msgsMsgIKRequest(r.data,allocator)
}
