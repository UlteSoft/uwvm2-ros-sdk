// @file bounded_interfaces.rs
// @brief Full ubtech rs codecs and original record metadata.
// @details Complete ubtech ros2_main values in rs. 8 original records retain 24 fields and 8 interface
// descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
// Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
// manual under document/platform/ubtech/en_US/catalog/.
//! Generated typed interfaces; every Owner/role must already be granted.
extern crate alloc;
use super::bounded_records::*;
use roswasm::typed::Canonical;
use roswasm::{codes, Capability, Error, Operation};
/// @brief Publish one complete grab_demo_msgs/msg/GraspCandidate message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Grab_demo_msgsMsgGraspCandidate.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub fn publish_Ros2Grab_demo_msgsMsgGraspCandidate(
    owner: &Capability,
    value: &Ros2Grab_demo_msgsMsgGraspCandidate,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete grab_demo_msgs/msg/GraspCandidate message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Grab_demo_msgsMsgGraspCandidate.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub fn poll_Ros2Grab_demo_msgsMsgGraspCandidate(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Grab_demo_msgsMsgGraspCandidate, Error> {
    let n = owner.poll(output)?;
    Ros2Grab_demo_msgsMsgGraspCandidate::decode(&output[..n])
}
/// @brief Publish one complete grab_demo_msgs/msg/IKRequest message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Grab_demo_msgsMsgIKRequest.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub fn publish_Ros2Grab_demo_msgsMsgIKRequest(
    owner: &Capability,
    value: &Ros2Grab_demo_msgsMsgIKRequest,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete grab_demo_msgs/msg/IKRequest message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Grab_demo_msgsMsgIKRequest.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[out] output Caller-owned writable canonical scratch/output bytes; retain through the call and while
/// decoded views borrow them.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub fn poll_Ros2Grab_demo_msgsMsgIKRequest(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Grab_demo_msgsMsgIKRequest, Error> {
    let n = owner.poll(output)?;
    Ros2Grab_demo_msgsMsgIKRequest::decode(&output[..n])
}
