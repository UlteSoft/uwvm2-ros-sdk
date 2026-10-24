// @file interfaces.d
// @brief Full ubtech d codecs and original record metadata.
// @details Complete ubtech ros2_main values in d. 8 original records retain 24 fields and 8 interface descriptions.
// Scalar widths, bounds, units, defaults and identities follow the pinned native definitions. Encoding is local;
// compiler, guest and native ROS acceptance require separate receipts. See the profile API manual under
// document/platform/ubtech/en_US/catalog/.
module roswasm.interfaces;
import roswasm;
import roswasm.records;
import roswasm.wire;
import typed=roswasm.typed;
@nogc nothrow:
/// @brief Publish one complete grab_demo_msgs/msg/GraspCandidate message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Grab_demo_msgsMsgGraspCandidate.
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
uint publishRos2Grab_demo_msgsMsgGraspCandidate(Owner owner,const ref Ros2Grab_demo_msgsMsgGraspCandidate value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete grab_demo_msgs/msg/GraspCandidate message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Grab_demo_msgsMsgGraspCandidate.
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
uint pollRos2Grab_demo_msgsMsgGraspCandidate(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Grab_demo_msgsMsgGraspCandidate value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Grab_demo_msgsMsgGraspCandidate.decode(r.data,arena,value);
}
/// @brief Publish one complete grab_demo_msgs/msg/IKRequest message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Grab_demo_msgsMsgIKRequest.
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
uint publishRos2Grab_demo_msgsMsgIKRequest(Owner owner,const ref Ros2Grab_demo_msgsMsgIKRequest value,ubyte[] scratch) {
    return typed.publishValue(owner,value,scratch);
}
/// @brief Poll and decode one complete grab_demo_msgs/msg/IKRequest message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Grab_demo_msgsMsgIKRequest.
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
uint pollRos2Grab_demo_msgsMsgIKRequest(Owner owner,ubyte[] scratch,ref Arena arena,out Ros2Grab_demo_msgsMsgIKRequest value) {
    auto r=owner.poll(scratch);
    if(r.code)return r.code;
    return Ros2Grab_demo_msgsMsgIKRequest.decode(r.data,arena,value);
}
