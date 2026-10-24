// @file bounded_interfaces.rs
// @brief Full leju rs codecs and original record metadata.
// @details Complete leju ros1_master_platform values in rs. 532 original records retain 1587 fields and 378
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/leju/en_US/catalog/.
//! Generated typed interfaces; every Owner/role must already be granted.
extern crate alloc;
use super::bounded_records::*;
use roswasm::typed::Canonical;
use roswasm::{codes, Capability, Error, Operation};
/// @brief Publish one complete aruco_msgs/Marker message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Aruco_msgsMarker.
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
pub fn publish_Ros1Aruco_msgsMarker(
    owner: &Capability,
    value: &Ros1Aruco_msgsMarker,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aruco_msgs/Marker message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Aruco_msgsMarker.
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
pub fn poll_Ros1Aruco_msgsMarker(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Aruco_msgsMarker, Error> {
    let n = owner.poll(output)?;
    Ros1Aruco_msgsMarker::decode(&output[..n])
}
/// @brief Publish one complete aruco_msgs/MarkerArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Aruco_msgsMarkerArray.
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
pub fn publish_Ros1Aruco_msgsMarkerArray(
    owner: &Capability,
    value: &Ros1Aruco_msgsMarkerArray,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aruco_msgs/MarkerArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Aruco_msgsMarkerArray.
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
pub fn poll_Ros1Aruco_msgsMarkerArray(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Aruco_msgsMarkerArray, Error> {
    let n = owner.poll(output)?;
    Ros1Aruco_msgsMarkerArray::decode(&output[..n])
}
/// @brief Call the selected easy_handeye_msgs/CheckStartingPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Easy_handeye_msgsCheckStartingPoseRequest,
/// response=Ros1Easy_handeye_msgsCheckStartingPoseResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Easy_handeye_msgsCheckStartingPose(
    owner: &Capability,
    value: &Ros1Easy_handeye_msgsCheckStartingPoseRequest,
    output: &mut [u8],
) -> Result<Ros1Easy_handeye_msgsCheckStartingPoseResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Easy_handeye_msgsCheckStartingPoseResponse::decode(&output[..n])
}
/// @brief Call the selected easy_handeye_msgs/ComputeCalibration service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Easy_handeye_msgsComputeCalibrationRequest,
/// response=Ros1Easy_handeye_msgsComputeCalibrationResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Easy_handeye_msgsComputeCalibration(
    owner: &Capability,
    value: &Ros1Easy_handeye_msgsComputeCalibrationRequest,
    output: &mut [u8],
) -> Result<Ros1Easy_handeye_msgsComputeCalibrationResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Easy_handeye_msgsComputeCalibrationResponse::decode(&output[..n])
}
/// @brief Call the selected easy_handeye_msgs/EnumerateTargetPoses service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Easy_handeye_msgsEnumerateTargetPosesRequest,
/// response=Ros1Easy_handeye_msgsEnumerateTargetPosesResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Easy_handeye_msgsEnumerateTargetPoses(
    owner: &Capability,
    value: &Ros1Easy_handeye_msgsEnumerateTargetPosesRequest,
    output: &mut [u8],
) -> Result<Ros1Easy_handeye_msgsEnumerateTargetPosesResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Easy_handeye_msgsEnumerateTargetPosesResponse::decode(&output[..n])
}
/// @brief Call the selected easy_handeye_msgs/ExecutePlan service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Easy_handeye_msgsExecutePlanRequest, response=Ros1Easy_handeye_msgsExecutePlanResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Easy_handeye_msgsExecutePlan(
    owner: &Capability,
    value: &Ros1Easy_handeye_msgsExecutePlanRequest,
    output: &mut [u8],
) -> Result<Ros1Easy_handeye_msgsExecutePlanResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Easy_handeye_msgsExecutePlanResponse::decode(&output[..n])
}
/// @brief Publish one complete easy_handeye_msgs/HandeyeCalibration message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Easy_handeye_msgsHandeyeCalibration.
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
pub fn publish_Ros1Easy_handeye_msgsHandeyeCalibration(
    owner: &Capability,
    value: &Ros1Easy_handeye_msgsHandeyeCalibration,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete easy_handeye_msgs/HandeyeCalibration message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Easy_handeye_msgsHandeyeCalibration.
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
pub fn poll_Ros1Easy_handeye_msgsHandeyeCalibration(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Easy_handeye_msgsHandeyeCalibration, Error> {
    let n = owner.poll(output)?;
    Ros1Easy_handeye_msgsHandeyeCalibration::decode(&output[..n])
}
/// @brief Call the selected easy_handeye_msgs/ListAlgorithms service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Easy_handeye_msgsListAlgorithmsRequest,
/// response=Ros1Easy_handeye_msgsListAlgorithmsResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Easy_handeye_msgsListAlgorithms(
    owner: &Capability,
    value: &Ros1Easy_handeye_msgsListAlgorithmsRequest,
    output: &mut [u8],
) -> Result<Ros1Easy_handeye_msgsListAlgorithmsResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Easy_handeye_msgsListAlgorithmsResponse::decode(&output[..n])
}
/// @brief Call the selected easy_handeye_msgs/PlanToSelectedTargetPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest,
/// response=Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Easy_handeye_msgsPlanToSelectedTargetPose(
    owner: &Capability,
    value: &Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest,
    output: &mut [u8],
) -> Result<Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse::decode(&output[..n])
}
/// @brief Call the selected easy_handeye_msgs/RemoveSample service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Easy_handeye_msgsRemoveSampleRequest,
/// response=Ros1Easy_handeye_msgsRemoveSampleResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Easy_handeye_msgsRemoveSample(
    owner: &Capability,
    value: &Ros1Easy_handeye_msgsRemoveSampleRequest,
    output: &mut [u8],
) -> Result<Ros1Easy_handeye_msgsRemoveSampleResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Easy_handeye_msgsRemoveSampleResponse::decode(&output[..n])
}
/// @brief Publish one complete easy_handeye_msgs/SampleList message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Easy_handeye_msgsSampleList.
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
pub fn publish_Ros1Easy_handeye_msgsSampleList(
    owner: &Capability,
    value: &Ros1Easy_handeye_msgsSampleList,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete easy_handeye_msgs/SampleList message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Easy_handeye_msgsSampleList.
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
pub fn poll_Ros1Easy_handeye_msgsSampleList(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Easy_handeye_msgsSampleList, Error> {
    let n = owner.poll(output)?;
    Ros1Easy_handeye_msgsSampleList::decode(&output[..n])
}
/// @brief Call the selected easy_handeye_msgs/SelectTargetPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Easy_handeye_msgsSelectTargetPoseRequest,
/// response=Ros1Easy_handeye_msgsSelectTargetPoseResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Easy_handeye_msgsSelectTargetPose(
    owner: &Capability,
    value: &Ros1Easy_handeye_msgsSelectTargetPoseRequest,
    output: &mut [u8],
) -> Result<Ros1Easy_handeye_msgsSelectTargetPoseResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Easy_handeye_msgsSelectTargetPoseResponse::decode(&output[..n])
}
/// @brief Call the selected easy_handeye_msgs/SetAlgorithm service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Easy_handeye_msgsSetAlgorithmRequest,
/// response=Ros1Easy_handeye_msgsSetAlgorithmResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Easy_handeye_msgsSetAlgorithm(
    owner: &Capability,
    value: &Ros1Easy_handeye_msgsSetAlgorithmRequest,
    output: &mut [u8],
) -> Result<Ros1Easy_handeye_msgsSetAlgorithmResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Easy_handeye_msgsSetAlgorithmResponse::decode(&output[..n])
}
/// @brief Call the selected easy_handeye_msgs/TakeSample service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Easy_handeye_msgsTakeSampleRequest, response=Ros1Easy_handeye_msgsTakeSampleResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Easy_handeye_msgsTakeSample(
    owner: &Capability,
    value: &Ros1Easy_handeye_msgsTakeSampleRequest,
    output: &mut [u8],
) -> Result<Ros1Easy_handeye_msgsTakeSampleResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Easy_handeye_msgsTakeSampleResponse::decode(&output[..n])
}
/// @brief Publish one complete easy_handeye_msgs/TargetPoseList message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Easy_handeye_msgsTargetPoseList.
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
pub fn publish_Ros1Easy_handeye_msgsTargetPoseList(
    owner: &Capability,
    value: &Ros1Easy_handeye_msgsTargetPoseList,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete easy_handeye_msgs/TargetPoseList message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Easy_handeye_msgsTargetPoseList.
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
pub fn poll_Ros1Easy_handeye_msgsTargetPoseList(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Easy_handeye_msgsTargetPoseList, Error> {
    let n = owner.poll(output)?;
    Ros1Easy_handeye_msgsTargetPoseList::decode(&output[..n])
}
/// @brief Call the selected grid_map_msgs/GetGridMap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Grid_map_msgsGetGridMapRequest, response=Ros1Grid_map_msgsGetGridMapResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Grid_map_msgsGetGridMap(
    owner: &Capability,
    value: &Ros1Grid_map_msgsGetGridMapRequest,
    output: &mut [u8],
) -> Result<Ros1Grid_map_msgsGetGridMapResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Grid_map_msgsGetGridMapResponse::decode(&output[..n])
}
/// @brief Call the selected grid_map_msgs/GetGridMapInfo service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Grid_map_msgsGetGridMapInfoRequest, response=Ros1Grid_map_msgsGetGridMapInfoResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Grid_map_msgsGetGridMapInfo(
    owner: &Capability,
    value: &Ros1Grid_map_msgsGetGridMapInfoRequest,
    output: &mut [u8],
) -> Result<Ros1Grid_map_msgsGetGridMapInfoResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Grid_map_msgsGetGridMapInfoResponse::decode(&output[..n])
}
/// @brief Publish one complete grid_map_msgs/GridMap message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Grid_map_msgsGridMap.
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
pub fn publish_Ros1Grid_map_msgsGridMap(
    owner: &Capability,
    value: &Ros1Grid_map_msgsGridMap,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete grid_map_msgs/GridMap message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Grid_map_msgsGridMap.
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
pub fn poll_Ros1Grid_map_msgsGridMap(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Grid_map_msgsGridMap, Error> {
    let n = owner.poll(output)?;
    Ros1Grid_map_msgsGridMap::decode(&output[..n])
}
/// @brief Publish one complete grid_map_msgs/GridMapInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Grid_map_msgsGridMapInfo.
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
pub fn publish_Ros1Grid_map_msgsGridMapInfo(
    owner: &Capability,
    value: &Ros1Grid_map_msgsGridMapInfo,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete grid_map_msgs/GridMapInfo message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Grid_map_msgsGridMapInfo.
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
pub fn poll_Ros1Grid_map_msgsGridMapInfo(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Grid_map_msgsGridMapInfo, Error> {
    let n = owner.poll(output)?;
    Ros1Grid_map_msgsGridMapInfo::decode(&output[..n])
}
/// @brief Call the selected grid_map_msgs/ProcessFile service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Grid_map_msgsProcessFileRequest, response=Ros1Grid_map_msgsProcessFileResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Grid_map_msgsProcessFile(
    owner: &Capability,
    value: &Ros1Grid_map_msgsProcessFileRequest,
    output: &mut [u8],
) -> Result<Ros1Grid_map_msgsProcessFileResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Grid_map_msgsProcessFileResponse::decode(&output[..n])
}
/// @brief Call the selected grid_map_msgs/SetGridMap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Grid_map_msgsSetGridMapRequest, response=Ros1Grid_map_msgsSetGridMapResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Grid_map_msgsSetGridMap(
    owner: &Capability,
    value: &Ros1Grid_map_msgsSetGridMapRequest,
    output: &mut [u8],
) -> Result<Ros1Grid_map_msgsSetGridMapResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Grid_map_msgsSetGridMapResponse::decode(&output[..n])
}
/// @brief Publish one complete h12pro_controller_node/ECJointMotordata message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1H12pro_controller_nodeECJointMotordata.
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
pub fn publish_Ros1H12pro_controller_nodeECJointMotordata(
    owner: &Capability,
    value: &Ros1H12pro_controller_nodeECJointMotordata,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete h12pro_controller_node/ECJointMotordata message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1H12pro_controller_nodeECJointMotordata.
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
pub fn poll_Ros1H12pro_controller_nodeECJointMotordata(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1H12pro_controller_nodeECJointMotordata, Error> {
    let n = owner.poll(output)?;
    Ros1H12pro_controller_nodeECJointMotordata::decode(&output[..n])
}
/// @brief Call the selected h12pro_controller_node/ExecuteArmAction service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1H12pro_controller_nodeExecuteArmActionRequest,
/// response=Ros1H12pro_controller_nodeExecuteArmActionResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1H12pro_controller_nodeExecuteArmAction(
    owner: &Capability,
    value: &Ros1H12pro_controller_nodeExecuteArmActionRequest,
    output: &mut [u8],
) -> Result<Ros1H12pro_controller_nodeExecuteArmActionResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1H12pro_controller_nodeExecuteArmActionResponse::decode(&output[..n])
}
/// @brief Publish one complete h12pro_controller_node/RobotActionState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1H12pro_controller_nodeRobotActionState.
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
pub fn publish_Ros1H12pro_controller_nodeRobotActionState(
    owner: &Capability,
    value: &Ros1H12pro_controller_nodeRobotActionState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete h12pro_controller_node/RobotActionState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1H12pro_controller_nodeRobotActionState.
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
pub fn poll_Ros1H12pro_controller_nodeRobotActionState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1H12pro_controller_nodeRobotActionState, Error> {
    let n = owner.poll(output)?;
    Ros1H12pro_controller_nodeRobotActionState::decode(&output[..n])
}
/// @brief Publish one complete h12pro_controller_node/UpdateH12CustomizeConfig message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1H12pro_controller_nodeUpdateH12CustomizeConfig.
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
pub fn publish_Ros1H12pro_controller_nodeUpdateH12CustomizeConfig(
    owner: &Capability,
    value: &Ros1H12pro_controller_nodeUpdateH12CustomizeConfig,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete h12pro_controller_node/UpdateH12CustomizeConfig message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1H12pro_controller_nodeUpdateH12CustomizeConfig.
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
pub fn poll_Ros1H12pro_controller_nodeUpdateH12CustomizeConfig(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1H12pro_controller_nodeUpdateH12CustomizeConfig, Error> {
    let n = owner.poll(output)?;
    Ros1H12pro_controller_nodeUpdateH12CustomizeConfig::decode(&output[..n])
}
/// @brief Call the selected h12pro_controller_node/changeAMBACCtrlMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest,
/// response=Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1H12pro_controller_nodeChangeAMBACCtrlMode(
    owner: &Capability,
    value: &Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest,
    output: &mut [u8],
) -> Result<Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse::decode(&output[..n])
}
/// @brief Call the selected h12pro_controller_node/changeArmCtrlMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1H12pro_controller_nodeChangeArmCtrlModeRequest,
/// response=Ros1H12pro_controller_nodeChangeArmCtrlModeResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1H12pro_controller_nodeChangeArmCtrlMode(
    owner: &Capability,
    value: &Ros1H12pro_controller_nodeChangeArmCtrlModeRequest,
    output: &mut [u8],
) -> Result<Ros1H12pro_controller_nodeChangeArmCtrlModeResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1H12pro_controller_nodeChangeArmCtrlModeResponse::decode(&output[..n])
}
/// @brief Call the selected h12pro_controller_node/changeHandArmPosesByConfigName service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest,
/// response=Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1H12pro_controller_nodeChangeHandArmPosesByConfigName(
    owner: &Capability,
    value: &Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest,
    output: &mut [u8],
) -> Result<Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse::decode(&output[..n])
}
/// @brief Publish one complete h12pro_controller_node/h12proRemoteControllerChannel message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1H12pro_controller_nodeH12proRemoteControllerChannel.
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
pub fn publish_Ros1H12pro_controller_nodeH12proRemoteControllerChannel(
    owner: &Capability,
    value: &Ros1H12pro_controller_nodeH12proRemoteControllerChannel,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete h12pro_controller_node/h12proRemoteControllerChannel message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1H12pro_controller_nodeH12proRemoteControllerChannel.
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
pub fn poll_Ros1H12pro_controller_nodeH12proRemoteControllerChannel(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1H12pro_controller_nodeH12proRemoteControllerChannel, Error> {
    let n = owner.poll(output)?;
    Ros1H12pro_controller_nodeH12proRemoteControllerChannel::decode(&output[..n])
}
/// @brief Call the selected h12pro_controller_node/playmusic service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1H12pro_controller_nodePlaymusicRequest,
/// response=Ros1H12pro_controller_nodePlaymusicResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1H12pro_controller_nodePlaymusic(
    owner: &Capability,
    value: &Ros1H12pro_controller_nodePlaymusicRequest,
    output: &mut [u8],
) -> Result<Ros1H12pro_controller_nodePlaymusicResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1H12pro_controller_nodePlaymusicResponse::decode(&output[..n])
}
/// @brief Publish one complete h12pro_controller_node/robotPhase message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1H12pro_controller_nodeRobotPhase.
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
pub fn publish_Ros1H12pro_controller_nodeRobotPhase(
    owner: &Capability,
    value: &Ros1H12pro_controller_nodeRobotPhase,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete h12pro_controller_node/robotPhase message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1H12pro_controller_nodeRobotPhase.
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
pub fn poll_Ros1H12pro_controller_nodeRobotPhase(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1H12pro_controller_nodeRobotPhase, Error> {
    let n = owner.poll(output)?;
    Ros1H12pro_controller_nodeRobotPhase::decode(&output[..n])
}
/// @brief Publish one complete h12pro_controller_node/robotQVTau message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1H12pro_controller_nodeRobotQVTau.
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
pub fn publish_Ros1H12pro_controller_nodeRobotQVTau(
    owner: &Capability,
    value: &Ros1H12pro_controller_nodeRobotQVTau,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete h12pro_controller_node/robotQVTau message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1H12pro_controller_nodeRobotQVTau.
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
pub fn poll_Ros1H12pro_controller_nodeRobotQVTau(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1H12pro_controller_nodeRobotQVTau, Error> {
    let n = owner.poll(output)?;
    Ros1H12pro_controller_nodeRobotQVTau::decode(&output[..n])
}
/// @brief Publish one complete h12pro_controller_node/robotTorsoState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1H12pro_controller_nodeRobotTorsoState.
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
pub fn publish_Ros1H12pro_controller_nodeRobotTorsoState(
    owner: &Capability,
    value: &Ros1H12pro_controller_nodeRobotTorsoState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete h12pro_controller_node/robotTorsoState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1H12pro_controller_nodeRobotTorsoState.
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
pub fn poll_Ros1H12pro_controller_nodeRobotTorsoState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1H12pro_controller_nodeRobotTorsoState, Error> {
    let n = owner.poll(output)?;
    Ros1H12pro_controller_nodeRobotTorsoState::decode(&output[..n])
}
/// @brief Call the selected h12pro_controller_node/srvChangePhases service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1H12pro_controller_nodeSrvChangePhasesRequest,
/// response=Ros1H12pro_controller_nodeSrvChangePhasesResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1H12pro_controller_nodeSrvChangePhases(
    owner: &Capability,
    value: &Ros1H12pro_controller_nodeSrvChangePhasesRequest,
    output: &mut [u8],
) -> Result<Ros1H12pro_controller_nodeSrvChangePhasesResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1H12pro_controller_nodeSrvChangePhasesResponse::decode(&output[..n])
}
/// @brief Call the selected h12pro_controller_node/srvClearPositionCMD service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1H12pro_controller_nodeSrvClearPositionCMDRequest,
/// response=Ros1H12pro_controller_nodeSrvClearPositionCMDResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1H12pro_controller_nodeSrvClearPositionCMD(
    owner: &Capability,
    value: &Ros1H12pro_controller_nodeSrvClearPositionCMDRequest,
    output: &mut [u8],
) -> Result<Ros1H12pro_controller_nodeSrvClearPositionCMDResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1H12pro_controller_nodeSrvClearPositionCMDResponse::decode(&output[..n])
}
/// @brief Call the selected h12pro_controller_node/srvchangeCtlMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1H12pro_controller_nodeSrvchangeCtlModeRequest,
/// response=Ros1H12pro_controller_nodeSrvchangeCtlModeResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1H12pro_controller_nodeSrvchangeCtlMode(
    owner: &Capability,
    value: &Ros1H12pro_controller_nodeSrvchangeCtlModeRequest,
    output: &mut [u8],
) -> Result<Ros1H12pro_controller_nodeSrvchangeCtlModeResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1H12pro_controller_nodeSrvchangeCtlModeResponse::decode(&output[..n])
}
/// @brief Publish one complete h12pro_controller_node/walkCommand message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1H12pro_controller_nodeWalkCommand.
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
pub fn publish_Ros1H12pro_controller_nodeWalkCommand(
    owner: &Capability,
    value: &Ros1H12pro_controller_nodeWalkCommand,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete h12pro_controller_node/walkCommand message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1H12pro_controller_nodeWalkCommand.
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
pub fn poll_Ros1H12pro_controller_nodeWalkCommand(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1H12pro_controller_nodeWalkCommand, Error> {
    let n = owner.poll(output)?;
    Ros1H12pro_controller_nodeWalkCommand::decode(&output[..n])
}
/// @brief Publish one complete handcontrollerdemorosnode/armPoseWithTimeStamp message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp.
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
pub fn publish_Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp(
    owner: &Capability,
    value: &Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete handcontrollerdemorosnode/armPoseWithTimeStamp message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp.
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
pub fn poll_Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp, Error> {
    let n = owner.poll(output)?;
    Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp::decode(&output[..n])
}
/// @brief Call the selected handcontrollerdemorosnode/changeHandTrackingMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest,
/// response=Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1HandcontrollerdemorosnodeChangeHandTrackingMode(
    owner: &Capability,
    value: &Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest,
    output: &mut [u8],
) -> Result<Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse::decode(&output[..n])
}
/// @brief Call the selected handcontrollerdemorosnode/controlEndHand service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1HandcontrollerdemorosnodeControlEndHandRequest,
/// response=Ros1HandcontrollerdemorosnodeControlEndHandResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1HandcontrollerdemorosnodeControlEndHand(
    owner: &Capability,
    value: &Ros1HandcontrollerdemorosnodeControlEndHandRequest,
    output: &mut [u8],
) -> Result<Ros1HandcontrollerdemorosnodeControlEndHandResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1HandcontrollerdemorosnodeControlEndHandResponse::decode(&output[..n])
}
/// @brief Publish one complete handcontrollerdemorosnode/handRotationEular message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1HandcontrollerdemorosnodeHandRotationEular.
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
pub fn publish_Ros1HandcontrollerdemorosnodeHandRotationEular(
    owner: &Capability,
    value: &Ros1HandcontrollerdemorosnodeHandRotationEular,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete handcontrollerdemorosnode/handRotationEular message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1HandcontrollerdemorosnodeHandRotationEular.
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
pub fn poll_Ros1HandcontrollerdemorosnodeHandRotationEular(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1HandcontrollerdemorosnodeHandRotationEular, Error> {
    let n = owner.poll(output)?;
    Ros1HandcontrollerdemorosnodeHandRotationEular::decode(&output[..n])
}
/// @brief Publish one complete handcontrollerdemorosnode/robotArmPose message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1HandcontrollerdemorosnodeRobotArmPose.
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
pub fn publish_Ros1HandcontrollerdemorosnodeRobotArmPose(
    owner: &Capability,
    value: &Ros1HandcontrollerdemorosnodeRobotArmPose,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete handcontrollerdemorosnode/robotArmPose message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1HandcontrollerdemorosnodeRobotArmPose.
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
pub fn poll_Ros1HandcontrollerdemorosnodeRobotArmPose(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1HandcontrollerdemorosnodeRobotArmPose, Error> {
    let n = owner.poll(output)?;
    Ros1HandcontrollerdemorosnodeRobotArmPose::decode(&output[..n])
}
/// @brief Publish one complete handcontrollerdemorosnode/robotHandPosition message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1HandcontrollerdemorosnodeRobotHandPosition.
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
pub fn publish_Ros1HandcontrollerdemorosnodeRobotHandPosition(
    owner: &Capability,
    value: &Ros1HandcontrollerdemorosnodeRobotHandPosition,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete handcontrollerdemorosnode/robotHandPosition message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1HandcontrollerdemorosnodeRobotHandPosition.
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
pub fn poll_Ros1HandcontrollerdemorosnodeRobotHandPosition(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1HandcontrollerdemorosnodeRobotHandPosition, Error> {
    let n = owner.poll(output)?;
    Ros1HandcontrollerdemorosnodeRobotHandPosition::decode(&output[..n])
}
/// @brief Call the selected handcontrollerdemorosnode/srvArmIK service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1HandcontrollerdemorosnodeSrvArmIKRequest,
/// response=Ros1HandcontrollerdemorosnodeSrvArmIKResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1HandcontrollerdemorosnodeSrvArmIK(
    owner: &Capability,
    value: &Ros1HandcontrollerdemorosnodeSrvArmIKRequest,
    output: &mut [u8],
) -> Result<Ros1HandcontrollerdemorosnodeSrvArmIKResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1HandcontrollerdemorosnodeSrvArmIKResponse::decode(&output[..n])
}
/// @brief Publish one complete hardware_node/horizontalMotionByStep message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Hardware_nodeHorizontalMotionByStep.
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
pub fn publish_Ros1Hardware_nodeHorizontalMotionByStep(
    owner: &Capability,
    value: &Ros1Hardware_nodeHorizontalMotionByStep,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete hardware_node/horizontalMotionByStep message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Hardware_nodeHorizontalMotionByStep.
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
pub fn poll_Ros1Hardware_nodeHorizontalMotionByStep(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Hardware_nodeHorizontalMotionByStep, Error> {
    let n = owner.poll(output)?;
    Ros1Hardware_nodeHorizontalMotionByStep::decode(&output[..n])
}
/// @brief Publish one complete hardware_node/robotHeadMotionData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Hardware_nodeRobotHeadMotionData.
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
pub fn publish_Ros1Hardware_nodeRobotHeadMotionData(
    owner: &Capability,
    value: &Ros1Hardware_nodeRobotHeadMotionData,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete hardware_node/robotHeadMotionData message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Hardware_nodeRobotHeadMotionData.
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
pub fn poll_Ros1Hardware_nodeRobotHeadMotionData(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Hardware_nodeRobotHeadMotionData, Error> {
    let n = owner.poll(output)?;
    Ros1Hardware_nodeRobotHeadMotionData::decode(&output[..n])
}
/// @brief Call the selected humanoid_arm_control/armControl service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Humanoid_arm_controlArmControlRequest,
/// response=Ros1Humanoid_arm_controlArmControlResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Humanoid_arm_controlArmControl(
    owner: &Capability,
    value: &Ros1Humanoid_arm_controlArmControlRequest,
    output: &mut [u8],
) -> Result<Ros1Humanoid_arm_controlArmControlResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Humanoid_arm_controlArmControlResponse::decode(&output[..n])
}
/// @brief Call the selected humanoid_arm_control/handUpAndGrab service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Humanoid_arm_controlHandUpAndGrabRequest,
/// response=Ros1Humanoid_arm_controlHandUpAndGrabResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Humanoid_arm_controlHandUpAndGrab(
    owner: &Capability,
    value: &Ros1Humanoid_arm_controlHandUpAndGrabRequest,
    output: &mut [u8],
) -> Result<Ros1Humanoid_arm_controlHandUpAndGrabResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Humanoid_arm_controlHandUpAndGrabResponse::decode(&output[..n])
}
/// @brief Call the selected humanoid_plan_arm_trajectory/ExecuteArmAction service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest,
/// response=Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Humanoid_plan_arm_trajectoryExecuteArmAction(
    owner: &Capability,
    value: &Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest,
    output: &mut [u8],
) -> Result<Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse::decode(&output[..n])
}
/// @brief Publish one complete humanoid_plan_arm_trajectory/RobotActionState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Humanoid_plan_arm_trajectoryRobotActionState.
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
pub fn publish_Ros1Humanoid_plan_arm_trajectoryRobotActionState(
    owner: &Capability,
    value: &Ros1Humanoid_plan_arm_trajectoryRobotActionState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete humanoid_plan_arm_trajectory/RobotActionState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Humanoid_plan_arm_trajectoryRobotActionState.
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
pub fn poll_Ros1Humanoid_plan_arm_trajectoryRobotActionState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Humanoid_plan_arm_trajectoryRobotActionState, Error> {
    let n = owner.poll(output)?;
    Ros1Humanoid_plan_arm_trajectoryRobotActionState::decode(&output[..n])
}
/// @brief Publish one complete humanoid_plan_arm_trajectory/bezierCurveCubicPoint message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint.
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
pub fn publish_Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint(
    owner: &Capability,
    value: &Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete humanoid_plan_arm_trajectory/bezierCurveCubicPoint message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint.
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
pub fn poll_Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint, Error> {
    let n = owner.poll(output)?;
    Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint::decode(&output[..n])
}
/// @brief Publish one complete humanoid_plan_arm_trajectory/jointBezierTrajectory message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory.
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
pub fn publish_Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory(
    owner: &Capability,
    value: &Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete humanoid_plan_arm_trajectory/jointBezierTrajectory message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory.
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
pub fn poll_Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory, Error> {
    let n = owner.poll(output)?;
    Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory::decode(&output[..n])
}
/// @brief Publish one complete humanoid_plan_arm_trajectory/planArmState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Humanoid_plan_arm_trajectoryPlanArmState.
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
pub fn publish_Ros1Humanoid_plan_arm_trajectoryPlanArmState(
    owner: &Capability,
    value: &Ros1Humanoid_plan_arm_trajectoryPlanArmState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete humanoid_plan_arm_trajectory/planArmState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Humanoid_plan_arm_trajectoryPlanArmState.
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
pub fn poll_Ros1Humanoid_plan_arm_trajectoryPlanArmState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Humanoid_plan_arm_trajectoryPlanArmState, Error> {
    let n = owner.poll(output)?;
    Ros1Humanoid_plan_arm_trajectoryPlanArmState::decode(&output[..n])
}
/// @brief Call the selected humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurve service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest,
/// response=Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurve(
    owner: &Capability,
    value: &Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest,
    output: &mut [u8],
) -> Result<Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse::decode(&output[..n])
}
/// @brief Call the selected humanoid_plan_arm_trajectory/planArmTrajectoryCubicSpline service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest,
/// response=Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSpline(
    owner: &Capability,
    value: &Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest,
    output: &mut [u8],
) -> Result<Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse::decode(&output[..n])
}
/// @brief Publish one complete kindr_msgs/VectorAtPosition message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kindr_msgsVectorAtPosition.
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
pub fn publish_Ros1Kindr_msgsVectorAtPosition(
    owner: &Capability,
    value: &Ros1Kindr_msgsVectorAtPosition,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kindr_msgs/VectorAtPosition message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kindr_msgsVectorAtPosition.
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
pub fn poll_Ros1Kindr_msgsVectorAtPosition(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kindr_msgsVectorAtPosition, Error> {
    let n = owner.poll(output)?;
    Ros1Kindr_msgsVectorAtPosition::decode(&output[..n])
}
/// @brief Call the selected kuavo_audio_player/audio_status service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_audio_playerAudio_statusRequest,
/// response=Ros1Kuavo_audio_playerAudio_statusResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_audio_playerAudio_status(
    owner: &Capability,
    value: &Ros1Kuavo_audio_playerAudio_statusRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_audio_playerAudio_statusResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_audio_playerAudio_statusResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_audio_player/playmusic service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_audio_playerPlaymusicRequest, response=Ros1Kuavo_audio_playerPlaymusicResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_audio_playerPlaymusic(
    owner: &Capability,
    value: &Ros1Kuavo_audio_playerPlaymusicRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_audio_playerPlaymusicResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_audio_playerPlaymusicResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_mapping/DeleteMap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingDeleteMapRequest, response=Ros1Kuavo_mappingDeleteMapResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_mappingDeleteMap(
    owner: &Capability,
    value: &Ros1Kuavo_mappingDeleteMapRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_mappingDeleteMapResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_mappingDeleteMapResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_mapping/EditMap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingEditMapRequest, response=Ros1Kuavo_mappingEditMapResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_mappingEditMap(
    owner: &Capability,
    value: &Ros1Kuavo_mappingEditMapRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_mappingEditMapResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_mappingEditMapResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_mapping/GetAllMaps service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingGetAllMapsRequest, response=Ros1Kuavo_mappingGetAllMapsResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_mappingGetAllMaps(
    owner: &Capability,
    value: &Ros1Kuavo_mappingGetAllMapsRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_mappingGetAllMapsResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_mappingGetAllMapsResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_mapping/GetCurrentMap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingGetCurrentMapRequest, response=Ros1Kuavo_mappingGetCurrentMapResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_mappingGetCurrentMap(
    owner: &Capability,
    value: &Ros1Kuavo_mappingGetCurrentMapRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_mappingGetCurrentMapResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_mappingGetCurrentMapResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_mapping/InitialPoseWithTaskPoint service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingInitialPoseWithTaskPointRequest,
/// response=Ros1Kuavo_mappingInitialPoseWithTaskPointResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_mappingInitialPoseWithTaskPoint(
    owner: &Capability,
    value: &Ros1Kuavo_mappingInitialPoseWithTaskPointRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_mappingInitialPoseWithTaskPointResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_mappingInitialPoseWithTaskPointResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_mapping/LoadMap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingLoadMapRequest, response=Ros1Kuavo_mappingLoadMapResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_mappingLoadMap(
    owner: &Capability,
    value: &Ros1Kuavo_mappingLoadMapRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_mappingLoadMapResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_mappingLoadMapResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_mapping/NavigateToTaskPoint service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingNavigateToTaskPointRequest,
/// response=Ros1Kuavo_mappingNavigateToTaskPointResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_mappingNavigateToTaskPoint(
    owner: &Capability,
    value: &Ros1Kuavo_mappingNavigateToTaskPointRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_mappingNavigateToTaskPointResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_mappingNavigateToTaskPointResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_mapping/RenameMap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingRenameMapRequest, response=Ros1Kuavo_mappingRenameMapResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_mappingRenameMap(
    owner: &Capability,
    value: &Ros1Kuavo_mappingRenameMapRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_mappingRenameMapResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_mappingRenameMapResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_mapping/SaveMap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingSaveMapRequest, response=Ros1Kuavo_mappingSaveMapResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_mappingSaveMap(
    owner: &Capability,
    value: &Ros1Kuavo_mappingSaveMapRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_mappingSaveMapResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_mappingSaveMapResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_mapping/SetInitialPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingSetInitialPoseRequest, response=Ros1Kuavo_mappingSetInitialPoseResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_mappingSetInitialPose(
    owner: &Capability,
    value: &Ros1Kuavo_mappingSetInitialPoseRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_mappingSetInitialPoseResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_mappingSetInitialPoseResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_mapping/StartMapping service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingStartMappingRequest, response=Ros1Kuavo_mappingStartMappingResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_mappingStartMapping(
    owner: &Capability,
    value: &Ros1Kuavo_mappingStartMappingRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_mappingStartMappingResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_mappingStartMappingResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_mapping/StopMapping service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingStopMappingRequest, response=Ros1Kuavo_mappingStopMappingResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_mappingStopMapping(
    owner: &Capability,
    value: &Ros1Kuavo_mappingStopMappingRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_mappingStopMappingResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_mappingStopMappingResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_mapping/TaskPoint message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_mappingTaskPoint.
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
pub fn publish_Ros1Kuavo_mappingTaskPoint(
    owner: &Capability,
    value: &Ros1Kuavo_mappingTaskPoint,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_mapping/TaskPoint message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_mappingTaskPoint.
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
pub fn poll_Ros1Kuavo_mappingTaskPoint(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_mappingTaskPoint, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_mappingTaskPoint::decode(&output[..n])
}
/// @brief Call the selected kuavo_mapping/TaskPointOperation service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_mappingTaskPointOperationRequest,
/// response=Ros1Kuavo_mappingTaskPointOperationResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_mappingTaskPointOperation(
    owner: &Capability,
    value: &Ros1Kuavo_mappingTaskPointOperationRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_mappingTaskPointOperationResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_mappingTaskPointOperationResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/AprilTagDetection message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsAprilTagDetection.
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
pub fn publish_Ros1Kuavo_msgsAprilTagDetection(
    owner: &Capability,
    value: &Ros1Kuavo_msgsAprilTagDetection,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/AprilTagDetection message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsAprilTagDetection.
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
pub fn poll_Ros1Kuavo_msgsAprilTagDetection(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsAprilTagDetection, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsAprilTagDetection::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/AprilTagDetectionArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsAprilTagDetectionArray.
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
pub fn publish_Ros1Kuavo_msgsAprilTagDetectionArray(
    owner: &Capability,
    value: &Ros1Kuavo_msgsAprilTagDetectionArray,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/AprilTagDetectionArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsAprilTagDetectionArray.
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
pub fn poll_Ros1Kuavo_msgsAprilTagDetectionArray(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsAprilTagDetectionArray, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsAprilTagDetectionArray::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/AudioPlaybackStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsAudioPlaybackStatus.
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
pub fn publish_Ros1Kuavo_msgsAudioPlaybackStatus(
    owner: &Capability,
    value: &Ros1Kuavo_msgsAudioPlaybackStatus,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/AudioPlaybackStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsAudioPlaybackStatus.
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
pub fn poll_Ros1Kuavo_msgsAudioPlaybackStatus(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsAudioPlaybackStatus, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsAudioPlaybackStatus::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/AudioReceiverData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsAudioReceiverData.
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
pub fn publish_Ros1Kuavo_msgsAudioReceiverData(
    owner: &Capability,
    value: &Ros1Kuavo_msgsAudioReceiverData,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/AudioReceiverData message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsAudioReceiverData.
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
pub fn poll_Ros1Kuavo_msgsAudioReceiverData(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsAudioReceiverData, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsAudioReceiverData::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/BatteryInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsBatteryInfo.
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
pub fn publish_Ros1Kuavo_msgsBatteryInfo(
    owner: &Capability,
    value: &Ros1Kuavo_msgsBatteryInfo,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/BatteryInfo message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsBatteryInfo.
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
pub fn poll_Ros1Kuavo_msgsBatteryInfo(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsBatteryInfo, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsBatteryInfo::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/Color message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsColor.
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
pub fn publish_Ros1Kuavo_msgsColor(
    owner: &Capability,
    value: &Ros1Kuavo_msgsColor,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/Color message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsColor.
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
pub fn poll_Ros1Kuavo_msgsColor(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsColor, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsColor::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/ControllerSwitchEvent message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsControllerSwitchEvent.
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
pub fn publish_Ros1Kuavo_msgsControllerSwitchEvent(
    owner: &Capability,
    value: &Ros1Kuavo_msgsControllerSwitchEvent,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/ControllerSwitchEvent message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsControllerSwitchEvent.
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
pub fn poll_Ros1Kuavo_msgsControllerSwitchEvent(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsControllerSwitchEvent, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsControllerSwitchEvent::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/CreatePath service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsCreatePathRequest, response=Ros1Kuavo_msgsCreatePathResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsCreatePath(
    owner: &Capability,
    value: &Ros1Kuavo_msgsCreatePathRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsCreatePathResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsCreatePathResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/DanceTrajectoryState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsDanceTrajectoryState.
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
pub fn publish_Ros1Kuavo_msgsDanceTrajectoryState(
    owner: &Capability,
    value: &Ros1Kuavo_msgsDanceTrajectoryState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/DanceTrajectoryState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsDanceTrajectoryState.
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
pub fn poll_Ros1Kuavo_msgsDanceTrajectoryState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsDanceTrajectoryState, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsDanceTrajectoryState::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/ExecuteArmAction service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsExecuteArmActionRequest, response=Ros1Kuavo_msgsExecuteArmActionResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsExecuteArmAction(
    owner: &Capability,
    value: &Ros1Kuavo_msgsExecuteArmActionRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsExecuteArmActionResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsExecuteArmActionResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/FTsensorData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFTsensorData.
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
pub fn publish_Ros1Kuavo_msgsFTsensorData(
    owner: &Capability,
    value: &Ros1Kuavo_msgsFTsensorData,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/FTsensorData message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsFTsensorData.
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
pub fn poll_Ros1Kuavo_msgsFTsensorData(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsFTsensorData, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsFTsensorData::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/FaceBoundingBox message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFaceBoundingBox.
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
pub fn publish_Ros1Kuavo_msgsFaceBoundingBox(
    owner: &Capability,
    value: &Ros1Kuavo_msgsFaceBoundingBox,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/FaceBoundingBox message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsFaceBoundingBox.
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
pub fn poll_Ros1Kuavo_msgsFaceBoundingBox(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsFaceBoundingBox, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsFaceBoundingBox::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/FallStandCommand service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsFallStandCommandRequest, response=Ros1Kuavo_msgsFallStandCommandResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsFallStandCommand(
    owner: &Capability,
    value: &Ros1Kuavo_msgsFallStandCommandRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsFallStandCommandResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsFallStandCommandResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/Float32MultiArrayStamped message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsFloat32MultiArrayStamped.
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
pub fn publish_Ros1Kuavo_msgsFloat32MultiArrayStamped(
    owner: &Capability,
    value: &Ros1Kuavo_msgsFloat32MultiArrayStamped,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/Float32MultiArrayStamped message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsFloat32MultiArrayStamped.
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
pub fn poll_Ros1Kuavo_msgsFloat32MultiArrayStamped(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsFloat32MultiArrayStamped, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsFloat32MultiArrayStamped::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/GetAllMaps service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetAllMapsRequest, response=Ros1Kuavo_msgsGetAllMapsResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsGetAllMaps(
    owner: &Capability,
    value: &Ros1Kuavo_msgsGetAllMapsRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsGetAllMapsResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsGetAllMapsResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/GetBatteryInfo service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetBatteryInfoRequest, response=Ros1Kuavo_msgsGetBatteryInfoResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsGetBatteryInfo(
    owner: &Capability,
    value: &Ros1Kuavo_msgsGetBatteryInfoRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsGetBatteryInfoResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsGetBatteryInfoResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/GetCurrentMap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetCurrentMapRequest, response=Ros1Kuavo_msgsGetCurrentMapResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsGetCurrentMap(
    owner: &Capability,
    value: &Ros1Kuavo_msgsGetCurrentMapRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsGetCurrentMapResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsGetCurrentMapResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/GetPowerBoardStatus service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetPowerBoardStatusRequest,
/// response=Ros1Kuavo_msgsGetPowerBoardStatusResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsGetPowerBoardStatus(
    owner: &Capability,
    value: &Ros1Kuavo_msgsGetPowerBoardStatusRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsGetPowerBoardStatusResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsGetPowerBoardStatusResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/GetStringList service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetStringListRequest, response=Ros1Kuavo_msgsGetStringListResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsGetStringList(
    owner: &Capability,
    value: &Ros1Kuavo_msgsGetStringListRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsGetStringListResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsGetStringListResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/GetTargetPartPoseInCamera service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest,
/// response=Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsGetTargetPartPoseInCamera(
    owner: &Capability,
    value: &Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/InitialPoseWithTaskPoint service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsInitialPoseWithTaskPointRequest,
/// response=Ros1Kuavo_msgsInitialPoseWithTaskPointResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsInitialPoseWithTaskPoint(
    owner: &Capability,
    value: &Ros1Kuavo_msgsInitialPoseWithTaskPointRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsInitialPoseWithTaskPointResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsInitialPoseWithTaskPointResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/JoySticks message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsJoySticks.
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
pub fn publish_Ros1Kuavo_msgsJoySticks(
    owner: &Capability,
    value: &Ros1Kuavo_msgsJoySticks,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/JoySticks message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsJoySticks.
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
pub fn poll_Ros1Kuavo_msgsJoySticks(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsJoySticks, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsJoySticks::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/LoadMap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsLoadMapRequest, response=Ros1Kuavo_msgsLoadMapResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsLoadMap(
    owner: &Capability,
    value: &Ros1Kuavo_msgsLoadMapRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsLoadMapResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsLoadMapResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/Metadata message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMetadata.
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
pub fn publish_Ros1Kuavo_msgsMetadata(
    owner: &Capability,
    value: &Ros1Kuavo_msgsMetadata,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/Metadata message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsMetadata.
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
pub fn poll_Ros1Kuavo_msgsMetadata(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsMetadata, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsMetadata::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/MmDetectionMsg message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMmDetectionMsg.
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
pub fn publish_Ros1Kuavo_msgsMmDetectionMsg(
    owner: &Capability,
    value: &Ros1Kuavo_msgsMmDetectionMsg,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/MmDetectionMsg message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsMmDetectionMsg.
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
pub fn poll_Ros1Kuavo_msgsMmDetectionMsg(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsMmDetectionMsg, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsMmDetectionMsg::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/MocapPoseRetarget message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMocapPoseRetarget.
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
pub fn publish_Ros1Kuavo_msgsMocapPoseRetarget(
    owner: &Capability,
    value: &Ros1Kuavo_msgsMocapPoseRetarget,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/MocapPoseRetarget message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsMocapPoseRetarget.
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
pub fn poll_Ros1Kuavo_msgsMocapPoseRetarget(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsMocapPoseRetarget, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsMocapPoseRetarget::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/NavigateToTaskPoint service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsNavigateToTaskPointRequest,
/// response=Ros1Kuavo_msgsNavigateToTaskPointResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsNavigateToTaskPoint(
    owner: &Capability,
    value: &Ros1Kuavo_msgsNavigateToTaskPointRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsNavigateToTaskPointResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsNavigateToTaskPointResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/PlayMusicImmediate service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsPlayMusicImmediateRequest, response=Ros1Kuavo_msgsPlayMusicImmediateResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsPlayMusicImmediate(
    owner: &Capability,
    value: &Ros1Kuavo_msgsPlayMusicImmediateRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsPlayMusicImmediateResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsPlayMusicImmediateResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/PowerBoardStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsPowerBoardStatus.
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
pub fn publish_Ros1Kuavo_msgsPowerBoardStatus(
    owner: &Capability,
    value: &Ros1Kuavo_msgsPowerBoardStatus,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/PowerBoardStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsPowerBoardStatus.
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
pub fn poll_Ros1Kuavo_msgsPowerBoardStatus(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsPowerBoardStatus, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsPowerBoardStatus::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/RelaySelectChannel service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsRelaySelectChannelRequest, response=Ros1Kuavo_msgsRelaySelectChannelResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsRelaySelectChannel(
    owner: &Capability,
    value: &Ros1Kuavo_msgsRelaySelectChannelRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsRelaySelectChannelResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsRelaySelectChannelResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/RepublishTFs service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsRepublishTFsRequest, response=Ros1Kuavo_msgsRepublishTFsResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsRepublishTFs(
    owner: &Capability,
    value: &Ros1Kuavo_msgsRepublishTFsRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsRepublishTFsResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsRepublishTFsResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/RigidBodyDescription message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRigidBodyDescription.
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
pub fn publish_Ros1Kuavo_msgsRigidBodyDescription(
    owner: &Capability,
    value: &Ros1Kuavo_msgsRigidBodyDescription,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/RigidBodyDescription message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsRigidBodyDescription.
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
pub fn poll_Ros1Kuavo_msgsRigidBodyDescription(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsRigidBodyDescription, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsRigidBodyDescription::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/RigidBodyFrame message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRigidBodyFrame.
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
pub fn publish_Ros1Kuavo_msgsRigidBodyFrame(
    owner: &Capability,
    value: &Ros1Kuavo_msgsRigidBodyFrame,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/RigidBodyFrame message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsRigidBodyFrame.
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
pub fn poll_Ros1Kuavo_msgsRigidBodyFrame(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsRigidBodyFrame, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsRigidBodyFrame::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/RobotActionState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotActionState.
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
pub fn publish_Ros1Kuavo_msgsRobotActionState(
    owner: &Capability,
    value: &Ros1Kuavo_msgsRobotActionState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/RobotActionState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsRobotActionState.
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
pub fn poll_Ros1Kuavo_msgsRobotActionState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsRobotActionState, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsRobotActionState::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/SetHeadControlMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetHeadControlModeRequest, response=Ros1Kuavo_msgsSetHeadControlModeResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsSetHeadControlMode(
    owner: &Capability,
    value: &Ros1Kuavo_msgsSetHeadControlModeRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsSetHeadControlModeResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsSetHeadControlModeResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/SetIncrementalArmTrajLink service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest,
/// response=Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsSetIncrementalArmTrajLink(
    owner: &Capability,
    value: &Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/SetInitialPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetInitialPoseRequest, response=Ros1Kuavo_msgsSetInitialPoseResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsSetInitialPose(
    owner: &Capability,
    value: &Ros1Kuavo_msgsSetInitialPoseRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsSetInitialPoseResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsSetInitialPoseResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/SetJoyTopic service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetJoyTopicRequest, response=Ros1Kuavo_msgsSetJoyTopicResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsSetJoyTopic(
    owner: &Capability,
    value: &Ros1Kuavo_msgsSetJoyTopicRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsSetJoyTopicResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsSetJoyTopicResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/SetLEDMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetLEDModeRequest, response=Ros1Kuavo_msgsSetLEDModeResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsSetLEDMode(
    owner: &Capability,
    value: &Ros1Kuavo_msgsSetLEDModeRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsSetLEDModeResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsSetLEDModeResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/SetLEDMode_free service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetLEDMode_freeRequest, response=Ros1Kuavo_msgsSetLEDMode_freeResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsSetLEDMode_free(
    owner: &Capability,
    value: &Ros1Kuavo_msgsSetLEDMode_freeRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsSetLEDMode_freeResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsSetLEDMode_freeResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/SetString service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetStringRequest, response=Ros1Kuavo_msgsSetStringResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsSetString(
    owner: &Capability,
    value: &Ros1Kuavo_msgsSetStringRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsSetStringResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsSetStringResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/SkeletonFrame message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsSkeletonFrame.
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
pub fn publish_Ros1Kuavo_msgsSkeletonFrame(
    owner: &Capability,
    value: &Ros1Kuavo_msgsSkeletonFrame,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/SkeletonFrame message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsSkeletonFrame.
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
pub fn poll_Ros1Kuavo_msgsSkeletonFrame(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsSkeletonFrame, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsSkeletonFrame::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/SpeechSynthesis service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSpeechSynthesisRequest, response=Ros1Kuavo_msgsSpeechSynthesisResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsSpeechSynthesis(
    owner: &Capability,
    value: &Ros1Kuavo_msgsSpeechSynthesisRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsSpeechSynthesisResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsSpeechSynthesisResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/TFArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTFArray.
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
pub fn publish_Ros1Kuavo_msgsTFArray(
    owner: &Capability,
    value: &Ros1Kuavo_msgsTFArray,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/TFArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTFArray.
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
pub fn poll_Ros1Kuavo_msgsTFArray(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsTFArray, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsTFArray::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/TaskPoint message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTaskPoint.
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
pub fn publish_Ros1Kuavo_msgsTaskPoint(
    owner: &Capability,
    value: &Ros1Kuavo_msgsTaskPoint,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/TaskPoint message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTaskPoint.
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
pub fn poll_Ros1Kuavo_msgsTaskPoint(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsTaskPoint, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsTaskPoint::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/TaskPointOperation service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsTaskPointOperationRequest, response=Ros1Kuavo_msgsTaskPointOperationResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsTaskPointOperation(
    owner: &Capability,
    value: &Ros1Kuavo_msgsTaskPointOperationRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsTaskPointOperationResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsTaskPointOperationResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/TransportModeCommand service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsTransportModeCommandRequest,
/// response=Ros1Kuavo_msgsTransportModeCommandResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsTransportModeCommand(
    owner: &Capability,
    value: &Ros1Kuavo_msgsTransportModeCommandRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsTransportModeCommandResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsTransportModeCommandResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/VMPTrajectoryState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsVMPTrajectoryState.
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
pub fn publish_Ros1Kuavo_msgsVMPTrajectoryState(
    owner: &Capability,
    value: &Ros1Kuavo_msgsVMPTrajectoryState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/VMPTrajectoryState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsVMPTrajectoryState.
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
pub fn poll_Ros1Kuavo_msgsVMPTrajectoryState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsVMPTrajectoryState, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsVMPTrajectoryState::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/accessIkSolve service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsAccessIkSolveRequest, response=Ros1Kuavo_msgsAccessIkSolveResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsAccessIkSolve(
    owner: &Capability,
    value: &Ros1Kuavo_msgsAccessIkSolveRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsAccessIkSolveResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsAccessIkSolveResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/adjustZeroPoint service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsAdjustZeroPointRequest, response=Ros1Kuavo_msgsAdjustZeroPointResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsAdjustZeroPoint(
    owner: &Capability,
    value: &Ros1Kuavo_msgsAdjustZeroPointRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsAdjustZeroPointResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsAdjustZeroPointResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/armCollisionCheckInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsArmCollisionCheckInfo.
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
pub fn publish_Ros1Kuavo_msgsArmCollisionCheckInfo(
    owner: &Capability,
    value: &Ros1Kuavo_msgsArmCollisionCheckInfo,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/armCollisionCheckInfo message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsArmCollisionCheckInfo.
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
pub fn poll_Ros1Kuavo_msgsArmCollisionCheckInfo(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsArmCollisionCheckInfo, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsArmCollisionCheckInfo::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/armHandPose message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsArmHandPose.
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
pub fn publish_Ros1Kuavo_msgsArmHandPose(
    owner: &Capability,
    value: &Ros1Kuavo_msgsArmHandPose,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/armHandPose message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsArmHandPose.
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
pub fn poll_Ros1Kuavo_msgsArmHandPose(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsArmHandPose, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsArmHandPose::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/armHandPoseFree message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsArmHandPoseFree.
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
pub fn publish_Ros1Kuavo_msgsArmHandPoseFree(
    owner: &Capability,
    value: &Ros1Kuavo_msgsArmHandPoseFree,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/armHandPoseFree message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsArmHandPoseFree.
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
pub fn poll_Ros1Kuavo_msgsArmHandPoseFree(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsArmHandPoseFree, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsArmHandPoseFree::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/armPoseWithTimeStamp message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsArmPoseWithTimeStamp.
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
pub fn publish_Ros1Kuavo_msgsArmPoseWithTimeStamp(
    owner: &Capability,
    value: &Ros1Kuavo_msgsArmPoseWithTimeStamp,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/armPoseWithTimeStamp message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsArmPoseWithTimeStamp.
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
pub fn poll_Ros1Kuavo_msgsArmPoseWithTimeStamp(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsArmPoseWithTimeStamp, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsArmPoseWithTimeStamp::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/armTargetPoses message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsArmTargetPoses.
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
pub fn publish_Ros1Kuavo_msgsArmTargetPoses(
    owner: &Capability,
    value: &Ros1Kuavo_msgsArmTargetPoses,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/armTargetPoses message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsArmTargetPoses.
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
pub fn poll_Ros1Kuavo_msgsArmTargetPoses(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsArmTargetPoses, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsArmTargetPoses::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/bezierCurveCubicPoint message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsBezierCurveCubicPoint.
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
pub fn publish_Ros1Kuavo_msgsBezierCurveCubicPoint(
    owner: &Capability,
    value: &Ros1Kuavo_msgsBezierCurveCubicPoint,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/bezierCurveCubicPoint message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsBezierCurveCubicPoint.
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
pub fn poll_Ros1Kuavo_msgsBezierCurveCubicPoint(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsBezierCurveCubicPoint, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsBezierCurveCubicPoint::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/changeArmCtrlMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsChangeArmCtrlModeRequest, response=Ros1Kuavo_msgsChangeArmCtrlModeResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsChangeArmCtrlMode(
    owner: &Capability,
    value: &Ros1Kuavo_msgsChangeArmCtrlModeRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsChangeArmCtrlModeResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsChangeArmCtrlModeResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/changeArmCtrlModeKuavo service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest,
/// response=Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsChangeArmCtrlModeKuavo(
    owner: &Capability,
    value: &Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/changeLbMpcObsUpdateModeSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest,
/// response=Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrv(
    owner: &Capability,
    value: &Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/changeLbQuickModeSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsChangeLbQuickModeSrvRequest,
/// response=Ros1Kuavo_msgsChangeLbQuickModeSrvResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsChangeLbQuickModeSrv(
    owner: &Capability,
    value: &Ros1Kuavo_msgsChangeLbQuickModeSrvRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsChangeLbQuickModeSrvResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsChangeLbQuickModeSrvResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/changeMotorParam service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsChangeMotorParamRequest, response=Ros1Kuavo_msgsChangeMotorParamResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsChangeMotorParam(
    owner: &Capability,
    value: &Ros1Kuavo_msgsChangeMotorParamRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsChangeMotorParamResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsChangeMotorParamResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/changeTorsoCtrlMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsChangeTorsoCtrlModeRequest,
/// response=Ros1Kuavo_msgsChangeTorsoCtrlModeResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsChangeTorsoCtrlMode(
    owner: &Capability,
    value: &Ros1Kuavo_msgsChangeTorsoCtrlModeRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsChangeTorsoCtrlModeResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsChangeTorsoCtrlModeResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/changeWaistCtrlMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsChangeWaistCtrlModeRequest,
/// response=Ros1Kuavo_msgsChangeWaistCtrlModeResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsChangeWaistCtrlMode(
    owner: &Capability,
    value: &Ros1Kuavo_msgsChangeWaistCtrlModeRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsChangeWaistCtrlModeResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsChangeWaistCtrlModeResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/chassisPoseCmdSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsChassisPoseCmdSrvRequest, response=Ros1Kuavo_msgsChassisPoseCmdSrvResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsChassisPoseCmdSrv(
    owner: &Capability,
    value: &Ros1Kuavo_msgsChassisPoseCmdSrvRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsChassisPoseCmdSrvResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsChassisPoseCmdSrvResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/controlLejuClaw service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsControlLejuClawRequest, response=Ros1Kuavo_msgsControlLejuClawResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsControlLejuClaw(
    owner: &Capability,
    value: &Ros1Kuavo_msgsControlLejuClawRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsControlLejuClawResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsControlLejuClawResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/dexhandCommand message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsDexhandCommand.
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
pub fn publish_Ros1Kuavo_msgsDexhandCommand(
    owner: &Capability,
    value: &Ros1Kuavo_msgsDexhandCommand,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/dexhandCommand message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsDexhandCommand.
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
pub fn poll_Ros1Kuavo_msgsDexhandCommand(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsDexhandCommand, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsDexhandCommand::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/dexhandTouchState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsDexhandTouchState.
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
pub fn publish_Ros1Kuavo_msgsDexhandTouchState(
    owner: &Capability,
    value: &Ros1Kuavo_msgsDexhandTouchState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/dexhandTouchState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsDexhandTouchState.
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
pub fn poll_Ros1Kuavo_msgsDexhandTouchState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsDexhandTouchState, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsDexhandTouchState::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/eePoseReachError service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsEePoseReachErrorRequest, response=Ros1Kuavo_msgsEePoseReachErrorResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsEePoseReachError(
    owner: &Capability,
    value: &Ros1Kuavo_msgsEePoseReachErrorRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsEePoseReachErrorResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsEePoseReachErrorResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/enableHandTouchSensor service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsEnableHandTouchSensorRequest,
/// response=Ros1Kuavo_msgsEnableHandTouchSensorResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsEnableHandTouchSensor(
    owner: &Capability,
    value: &Ros1Kuavo_msgsEnableHandTouchSensorRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsEnableHandTouchSensorResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsEnableHandTouchSensorResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/endEffectorData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsEndEffectorData.
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
pub fn publish_Ros1Kuavo_msgsEndEffectorData(
    owner: &Capability,
    value: &Ros1Kuavo_msgsEndEffectorData,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/endEffectorData message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsEndEffectorData.
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
pub fn poll_Ros1Kuavo_msgsEndEffectorData(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsEndEffectorData, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsEndEffectorData::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/fkSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsFkSrvRequest, response=Ros1Kuavo_msgsFkSrvResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsFkSrv(
    owner: &Capability,
    value: &Ros1Kuavo_msgsFkSrvRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsFkSrvResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsFkSrvResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/fkSrvWithReferFrame service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsFkSrvWithReferFrameRequest,
/// response=Ros1Kuavo_msgsFkSrvWithReferFrameResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsFkSrvWithReferFrame(
    owner: &Capability,
    value: &Ros1Kuavo_msgsFkSrvWithReferFrameRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsFkSrvWithReferFrameResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsFkSrvWithReferFrameResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/footPose message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFootPose.
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
pub fn publish_Ros1Kuavo_msgsFootPose(
    owner: &Capability,
    value: &Ros1Kuavo_msgsFootPose,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/footPose message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsFootPose.
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
pub fn poll_Ros1Kuavo_msgsFootPose(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsFootPose, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsFootPose::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/footPose6D message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFootPose6D.
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
pub fn publish_Ros1Kuavo_msgsFootPose6D(
    owner: &Capability,
    value: &Ros1Kuavo_msgsFootPose6D,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/footPose6D message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsFootPose6D.
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
pub fn poll_Ros1Kuavo_msgsFootPose6D(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsFootPose6D, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsFootPose6D::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/footPose6DTargetTrajectories message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsFootPose6DTargetTrajectories.
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
pub fn publish_Ros1Kuavo_msgsFootPose6DTargetTrajectories(
    owner: &Capability,
    value: &Ros1Kuavo_msgsFootPose6DTargetTrajectories,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/footPose6DTargetTrajectories message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsFootPose6DTargetTrajectories.
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
pub fn poll_Ros1Kuavo_msgsFootPose6DTargetTrajectories(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsFootPose6DTargetTrajectories, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsFootPose6DTargetTrajectories::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/footPose6DTargetTrajectoriesSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest,
/// response=Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrv(
    owner: &Capability,
    value: &Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/footPoseTargetTrajectories message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsFootPoseTargetTrajectories.
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
pub fn publish_Ros1Kuavo_msgsFootPoseTargetTrajectories(
    owner: &Capability,
    value: &Ros1Kuavo_msgsFootPoseTargetTrajectories,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/footPoseTargetTrajectories message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsFootPoseTargetTrajectories.
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
pub fn poll_Ros1Kuavo_msgsFootPoseTargetTrajectories(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsFootPoseTargetTrajectories, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsFootPoseTargetTrajectories::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/footPoseTargetTrajectoriesSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest,
/// response=Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrv(
    owner: &Capability,
    value: &Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/footPoseWithVision message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFootPoseWithVision.
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
pub fn publish_Ros1Kuavo_msgsFootPoseWithVision(
    owner: &Capability,
    value: &Ros1Kuavo_msgsFootPoseWithVision,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/footPoseWithVision message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsFootPoseWithVision.
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
pub fn poll_Ros1Kuavo_msgsFootPoseWithVision(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsFootPoseWithVision, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsFootPoseWithVision::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/footPoseWithVisionArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsFootPoseWithVisionArray.
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
pub fn publish_Ros1Kuavo_msgsFootPoseWithVisionArray(
    owner: &Capability,
    value: &Ros1Kuavo_msgsFootPoseWithVisionArray,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/footPoseWithVisionArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsFootPoseWithVisionArray.
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
pub fn poll_Ros1Kuavo_msgsFootPoseWithVisionArray(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsFootPoseWithVisionArray, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsFootPoseWithVisionArray::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/footPoses message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFootPoses.
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
pub fn publish_Ros1Kuavo_msgsFootPoses(
    owner: &Capability,
    value: &Ros1Kuavo_msgsFootPoses,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/footPoses message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsFootPoses.
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
pub fn poll_Ros1Kuavo_msgsFootPoses(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsFootPoses, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsFootPoses::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/footPoses6D message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsFootPoses6D.
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
pub fn publish_Ros1Kuavo_msgsFootPoses6D(
    owner: &Capability,
    value: &Ros1Kuavo_msgsFootPoses6D,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/footPoses6D message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsFootPoses6D.
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
pub fn poll_Ros1Kuavo_msgsFootPoses6D(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsFootPoses6D, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsFootPoses6D::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/fullBodyTargetTrajectories message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsFullBodyTargetTrajectories.
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
pub fn publish_Ros1Kuavo_msgsFullBodyTargetTrajectories(
    owner: &Capability,
    value: &Ros1Kuavo_msgsFullBodyTargetTrajectories,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/fullBodyTargetTrajectories message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsFullBodyTargetTrajectories.
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
pub fn poll_Ros1Kuavo_msgsFullBodyTargetTrajectories(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsFullBodyTargetTrajectories, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsFullBodyTargetTrajectories::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/gaitTimeName message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsGaitTimeName.
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
pub fn publish_Ros1Kuavo_msgsGaitTimeName(
    owner: &Capability,
    value: &Ros1Kuavo_msgsGaitTimeName,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/gaitTimeName message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsGaitTimeName.
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
pub fn poll_Ros1Kuavo_msgsGaitTimeName(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsGaitTimeName, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsGaitTimeName::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/gestureExecute service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGestureExecuteRequest, response=Ros1Kuavo_msgsGestureExecuteResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsGestureExecute(
    owner: &Capability,
    value: &Ros1Kuavo_msgsGestureExecuteRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsGestureExecuteResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsGestureExecuteResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/gestureExecuteState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGestureExecuteStateRequest,
/// response=Ros1Kuavo_msgsGestureExecuteStateResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsGestureExecuteState(
    owner: &Capability,
    value: &Ros1Kuavo_msgsGestureExecuteStateRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsGestureExecuteStateResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsGestureExecuteStateResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/gestureInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsGestureInfo.
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
pub fn publish_Ros1Kuavo_msgsGestureInfo(
    owner: &Capability,
    value: &Ros1Kuavo_msgsGestureInfo,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/gestureInfo message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsGestureInfo.
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
pub fn poll_Ros1Kuavo_msgsGestureInfo(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsGestureInfo, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsGestureInfo::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/gestureList service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGestureListRequest, response=Ros1Kuavo_msgsGestureListResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsGestureList(
    owner: &Capability,
    value: &Ros1Kuavo_msgsGestureListRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsGestureListResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsGestureListResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/gestureTask message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsGestureTask.
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
pub fn publish_Ros1Kuavo_msgsGestureTask(
    owner: &Capability,
    value: &Ros1Kuavo_msgsGestureTask,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/gestureTask message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsGestureTask.
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
pub fn poll_Ros1Kuavo_msgsGestureTask(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsGestureTask, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsGestureTask::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/getControllerList service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetControllerListRequest, response=Ros1Kuavo_msgsGetControllerListResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsGetControllerList(
    owner: &Capability,
    value: &Ros1Kuavo_msgsGetControllerListRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsGetControllerListResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsGetControllerListResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/getCurrentGaitName service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetCurrentGaitNameRequest, response=Ros1Kuavo_msgsGetCurrentGaitNameResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsGetCurrentGaitName(
    owner: &Capability,
    value: &Ros1Kuavo_msgsGetCurrentGaitNameRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsGetCurrentGaitNameResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsGetCurrentGaitNameResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/getLbTorsoInitialPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest,
/// response=Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsGetLbTorsoInitialPose(
    owner: &Capability,
    value: &Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/getMotorParam service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetMotorParamRequest, response=Ros1Kuavo_msgsGetMotorParamResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsGetMotorParam(
    owner: &Capability,
    value: &Ros1Kuavo_msgsGetMotorParamRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsGetMotorParamResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsGetMotorParamResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/getMotorZeroPoints service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGetMotorZeroPointsRequest, response=Ros1Kuavo_msgsGetMotorZeroPointsResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsGetMotorZeroPoints(
    owner: &Capability,
    value: &Ros1Kuavo_msgsGetMotorZeroPointsRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsGetMotorZeroPointsResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsGetMotorZeroPointsResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/goToZeroPoint service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsGoToZeroPointRequest, response=Ros1Kuavo_msgsGoToZeroPointResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsGoToZeroPoint(
    owner: &Capability,
    value: &Ros1Kuavo_msgsGoToZeroPointRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsGoToZeroPointResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsGoToZeroPointResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/handForceLevel service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsHandForceLevelRequest, response=Ros1Kuavo_msgsHandForceLevelResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsHandForceLevel(
    owner: &Capability,
    value: &Ros1Kuavo_msgsHandForceLevelRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsHandForceLevelResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsHandForceLevelResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/handPose message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsHandPose.
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
pub fn publish_Ros1Kuavo_msgsHandPose(
    owner: &Capability,
    value: &Ros1Kuavo_msgsHandPose,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/handPose message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsHandPose.
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
pub fn poll_Ros1Kuavo_msgsHandPose(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsHandPose, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsHandPose::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/headBodyPose message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsHeadBodyPose.
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
pub fn publish_Ros1Kuavo_msgsHeadBodyPose(
    owner: &Capability,
    value: &Ros1Kuavo_msgsHeadBodyPose,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/headBodyPose message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsHeadBodyPose.
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
pub fn poll_Ros1Kuavo_msgsHeadBodyPose(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsHeadBodyPose, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsHeadBodyPose::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/headCtrlMode message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsHeadCtrlMode.
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
pub fn publish_Ros1Kuavo_msgsHeadCtrlMode(
    owner: &Capability,
    value: &Ros1Kuavo_msgsHeadCtrlMode,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/headCtrlMode message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsHeadCtrlMode.
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
pub fn poll_Ros1Kuavo_msgsHeadCtrlMode(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsHeadCtrlMode, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsHeadCtrlMode::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/ikSolveError message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsIkSolveError.
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
pub fn publish_Ros1Kuavo_msgsIkSolveError(
    owner: &Capability,
    value: &Ros1Kuavo_msgsIkSolveError,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/ikSolveError message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsIkSolveError.
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
pub fn poll_Ros1Kuavo_msgsIkSolveError(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsIkSolveError, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsIkSolveError::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/ikSolveParam message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsIkSolveParam.
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
pub fn publish_Ros1Kuavo_msgsIkSolveParam(
    owner: &Capability,
    value: &Ros1Kuavo_msgsIkSolveParam,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/ikSolveParam message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsIkSolveParam.
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
pub fn poll_Ros1Kuavo_msgsIkSolveParam(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsIkSolveParam, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsIkSolveParam::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/imuData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsImuData.
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
pub fn publish_Ros1Kuavo_msgsImuData(
    owner: &Capability,
    value: &Ros1Kuavo_msgsImuData,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/imuData message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsImuData.
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
pub fn poll_Ros1Kuavo_msgsImuData(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsImuData, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsImuData::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/jointBezierTrajectory message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsJointBezierTrajectory.
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
pub fn publish_Ros1Kuavo_msgsJointBezierTrajectory(
    owner: &Capability,
    value: &Ros1Kuavo_msgsJointBezierTrajectory,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/jointBezierTrajectory message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsJointBezierTrajectory.
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
pub fn poll_Ros1Kuavo_msgsJointBezierTrajectory(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsJointBezierTrajectory, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsJointBezierTrajectory::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/jointCmd message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsJointCmd.
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
pub fn publish_Ros1Kuavo_msgsJointCmd(
    owner: &Capability,
    value: &Ros1Kuavo_msgsJointCmd,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/jointCmd message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsJointCmd.
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
pub fn poll_Ros1Kuavo_msgsJointCmd(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsJointCmd, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsJointCmd::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/jointData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsJointData.
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
pub fn publish_Ros1Kuavo_msgsJointData(
    owner: &Capability,
    value: &Ros1Kuavo_msgsJointData,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/jointData message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsJointData.
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
pub fn poll_Ros1Kuavo_msgsJointData(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsJointData, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsJointData::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/jointMoveTo service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsJointMoveToRequest, response=Ros1Kuavo_msgsJointMoveToResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsJointMoveTo(
    owner: &Capability,
    value: &Ros1Kuavo_msgsJointMoveToRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsJointMoveToResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsJointMoveToResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/kuavoModeSchedule message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsKuavoModeSchedule.
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
pub fn publish_Ros1Kuavo_msgsKuavoModeSchedule(
    owner: &Capability,
    value: &Ros1Kuavo_msgsKuavoModeSchedule,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/kuavoModeSchedule message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsKuavoModeSchedule.
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
pub fn poll_Ros1Kuavo_msgsKuavoModeSchedule(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsKuavoModeSchedule, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsKuavoModeSchedule::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/lbBaseLinkPoseCmdSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest,
/// response=Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsLbBaseLinkPoseCmdSrv(
    owner: &Capability,
    value: &Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/lbLegControlSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsLbLegControlSrvRequest, response=Ros1Kuavo_msgsLbLegControlSrvResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsLbLegControlSrv(
    owner: &Capability,
    value: &Ros1Kuavo_msgsLbLegControlSrvRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsLbLegControlSrvResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsLbLegControlSrvResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/lbMultiTimedOfflineTraj service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest,
/// response=Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsLbMultiTimedOfflineTraj(
    owner: &Capability,
    value: &Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/lbMultiTimedPosCmd service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsLbMultiTimedPosCmdRequest, response=Ros1Kuavo_msgsLbMultiTimedPosCmdResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsLbMultiTimedPosCmd(
    owner: &Capability,
    value: &Ros1Kuavo_msgsLbMultiTimedPosCmdRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsLbMultiTimedPosCmdResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsLbMultiTimedPosCmdResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/lbTimedOfflineTraj message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsLbTimedOfflineTraj.
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
pub fn publish_Ros1Kuavo_msgsLbTimedOfflineTraj(
    owner: &Capability,
    value: &Ros1Kuavo_msgsLbTimedOfflineTraj,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/lbTimedOfflineTraj message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsLbTimedOfflineTraj.
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
pub fn poll_Ros1Kuavo_msgsLbTimedOfflineTraj(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsLbTimedOfflineTraj, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsLbTimedOfflineTraj::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/lbTimedPosCmd service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsLbTimedPosCmdRequest, response=Ros1Kuavo_msgsLbTimedPosCmdResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsLbTimedPosCmd(
    owner: &Capability,
    value: &Ros1Kuavo_msgsLbTimedPosCmdRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsLbTimedPosCmdResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsLbTimedPosCmdResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/lejuClawCommand message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsLejuClawCommand.
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
pub fn publish_Ros1Kuavo_msgsLejuClawCommand(
    owner: &Capability,
    value: &Ros1Kuavo_msgsLejuClawCommand,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/lejuClawCommand message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsLejuClawCommand.
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
pub fn poll_Ros1Kuavo_msgsLejuClawCommand(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsLejuClawCommand, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsLejuClawCommand::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/lejuClawRecovery service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsLejuClawRecoveryRequest, response=Ros1Kuavo_msgsLejuClawRecoveryResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsLejuClawRecovery(
    owner: &Capability,
    value: &Ros1Kuavo_msgsLejuClawRecoveryRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsLejuClawRecoveryResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsLejuClawRecoveryResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/lejuClawState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsLejuClawState.
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
pub fn publish_Ros1Kuavo_msgsLejuClawState(
    owner: &Capability,
    value: &Ros1Kuavo_msgsLejuClawState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/lejuClawState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsLejuClawState.
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
pub fn poll_Ros1Kuavo_msgsLejuClawState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsLejuClawState, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsLejuClawState::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/lejuClawTarget message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsLejuClawTarget.
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
pub fn publish_Ros1Kuavo_msgsLejuClawTarget(
    owner: &Capability,
    value: &Ros1Kuavo_msgsLejuClawTarget,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/lejuClawTarget message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsLejuClawTarget.
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
pub fn poll_Ros1Kuavo_msgsLejuClawTarget(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsLejuClawTarget, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsLejuClawTarget::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/motorParam message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMotorParam.
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
pub fn publish_Ros1Kuavo_msgsMotorParam(
    owner: &Capability,
    value: &Ros1Kuavo_msgsMotorParam,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/motorParam message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsMotorParam.
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
pub fn poll_Ros1Kuavo_msgsMotorParam(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsMotorParam, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsMotorParam::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/mpc_input message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMpc_input.
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
pub fn publish_Ros1Kuavo_msgsMpc_input(
    owner: &Capability,
    value: &Ros1Kuavo_msgsMpc_input,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/mpc_input message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsMpc_input.
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
pub fn poll_Ros1Kuavo_msgsMpc_input(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsMpc_input, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsMpc_input::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/mpc_state message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsMpc_state.
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
pub fn publish_Ros1Kuavo_msgsMpc_state(
    owner: &Capability,
    value: &Ros1Kuavo_msgsMpc_state,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/mpc_state message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsMpc_state.
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
pub fn poll_Ros1Kuavo_msgsMpc_state(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsMpc_state, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsMpc_state::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/mpc_target_trajectories message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsMpc_target_trajectories.
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
pub fn publish_Ros1Kuavo_msgsMpc_target_trajectories(
    owner: &Capability,
    value: &Ros1Kuavo_msgsMpc_target_trajectories,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/mpc_target_trajectories message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsMpc_target_trajectories.
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
pub fn poll_Ros1Kuavo_msgsMpc_target_trajectories(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsMpc_target_trajectories, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsMpc_target_trajectories::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/picoPoseInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsPicoPoseInfo.
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
pub fn publish_Ros1Kuavo_msgsPicoPoseInfo(
    owner: &Capability,
    value: &Ros1Kuavo_msgsPicoPoseInfo,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/picoPoseInfo message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsPicoPoseInfo.
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
pub fn poll_Ros1Kuavo_msgsPicoPoseInfo(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsPicoPoseInfo, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsPicoPoseInfo::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/picoPoseInfoList message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsPicoPoseInfoList.
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
pub fn publish_Ros1Kuavo_msgsPicoPoseInfoList(
    owner: &Capability,
    value: &Ros1Kuavo_msgsPicoPoseInfoList,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/picoPoseInfoList message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsPicoPoseInfoList.
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
pub fn poll_Ros1Kuavo_msgsPicoPoseInfoList(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsPicoPoseInfoList, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsPicoPoseInfoList::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/picoPoseRetarget message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsPicoPoseRetarget.
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
pub fn publish_Ros1Kuavo_msgsPicoPoseRetarget(
    owner: &Capability,
    value: &Ros1Kuavo_msgsPicoPoseRetarget,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/picoPoseRetarget message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsPicoPoseRetarget.
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
pub fn poll_Ros1Kuavo_msgsPicoPoseRetarget(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsPicoPoseRetarget, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsPicoPoseRetarget::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/planArmState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsPlanArmState.
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
pub fn publish_Ros1Kuavo_msgsPlanArmState(
    owner: &Capability,
    value: &Ros1Kuavo_msgsPlanArmState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/planArmState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsPlanArmState.
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
pub fn poll_Ros1Kuavo_msgsPlanArmState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsPlanArmState, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsPlanArmState::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/planArmTrajectoryBezierCurve service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest,
/// response=Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsPlanArmTrajectoryBezierCurve(
    owner: &Capability,
    value: &Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/planArmTrajectoryCubicSpline service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest,
/// response=Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsPlanArmTrajectoryCubicSpline(
    owner: &Capability,
    value: &Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/playmusic service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsPlaymusicRequest, response=Ros1Kuavo_msgsPlaymusicResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsPlaymusic(
    owner: &Capability,
    value: &Ros1Kuavo_msgsPlaymusicRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsPlaymusicResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsPlaymusicResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/qv message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsQv.
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
pub fn publish_Ros1Kuavo_msgsQv(owner: &Capability, value: &Ros1Kuavo_msgsQv) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/qv message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsQv.
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
pub fn poll_Ros1Kuavo_msgsQv(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsQv, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsQv::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/recordArmHandPose message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRecordArmHandPose.
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
pub fn publish_Ros1Kuavo_msgsRecordArmHandPose(
    owner: &Capability,
    value: &Ros1Kuavo_msgsRecordArmHandPose,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/recordArmHandPose message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsRecordArmHandPose.
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
pub fn poll_Ros1Kuavo_msgsRecordArmHandPose(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsRecordArmHandPose, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsRecordArmHandPose::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/recordmusic service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsRecordmusicRequest, response=Ros1Kuavo_msgsRecordmusicResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsRecordmusic(
    owner: &Capability,
    value: &Ros1Kuavo_msgsRecordmusicRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsRecordmusicResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsRecordmusicResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/robotArmQVVD message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotArmQVVD.
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
pub fn publish_Ros1Kuavo_msgsRobotArmQVVD(
    owner: &Capability,
    value: &Ros1Kuavo_msgsRobotArmQVVD,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/robotArmQVVD message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRobotArmQVVD.
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
pub fn poll_Ros1Kuavo_msgsRobotArmQVVD(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsRobotArmQVVD, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsRobotArmQVVD::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/robotBodyMatrices message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotBodyMatrices.
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
pub fn publish_Ros1Kuavo_msgsRobotBodyMatrices(
    owner: &Capability,
    value: &Ros1Kuavo_msgsRobotBodyMatrices,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/robotBodyMatrices message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsRobotBodyMatrices.
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
pub fn poll_Ros1Kuavo_msgsRobotBodyMatrices(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsRobotBodyMatrices, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsRobotBodyMatrices::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/robotHandPosition message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotHandPosition.
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
pub fn publish_Ros1Kuavo_msgsRobotHandPosition(
    owner: &Capability,
    value: &Ros1Kuavo_msgsRobotHandPosition,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/robotHandPosition message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsRobotHandPosition.
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
pub fn poll_Ros1Kuavo_msgsRobotHandPosition(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsRobotHandPosition, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsRobotHandPosition::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/robotHeadMotionData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotHeadMotionData.
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
pub fn publish_Ros1Kuavo_msgsRobotHeadMotionData(
    owner: &Capability,
    value: &Ros1Kuavo_msgsRobotHeadMotionData,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/robotHeadMotionData message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsRobotHeadMotionData.
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
pub fn poll_Ros1Kuavo_msgsRobotHeadMotionData(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsRobotHeadMotionData, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsRobotHeadMotionData::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/robotState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotState.
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
pub fn publish_Ros1Kuavo_msgsRobotState(
    owner: &Capability,
    value: &Ros1Kuavo_msgsRobotState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/robotState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsRobotState.
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
pub fn poll_Ros1Kuavo_msgsRobotState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsRobotState, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsRobotState::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/robotSwitchPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsRobotSwitchPoseRequest, response=Ros1Kuavo_msgsRobotSwitchPoseResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsRobotSwitchPose(
    owner: &Capability,
    value: &Ros1Kuavo_msgsRobotSwitchPoseRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsRobotSwitchPoseResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsRobotSwitchPoseResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/robotWaistControl message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsRobotWaistControl.
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
pub fn publish_Ros1Kuavo_msgsRobotWaistControl(
    owner: &Capability,
    value: &Ros1Kuavo_msgsRobotWaistControl,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/robotWaistControl message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsRobotWaistControl.
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
pub fn poll_Ros1Kuavo_msgsRobotWaistControl(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsRobotWaistControl, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsRobotWaistControl::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/sensorsData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsSensorsData.
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
pub fn publish_Ros1Kuavo_msgsSensorsData(
    owner: &Capability,
    value: &Ros1Kuavo_msgsSensorsData,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/sensorsData message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsSensorsData.
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
pub fn poll_Ros1Kuavo_msgsSensorsData(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsSensorsData, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsSensorsData::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/setContactForceInterpParams service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetContactForceInterpParamsRequest,
/// response=Ros1Kuavo_msgsSetContactForceInterpParamsResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsSetContactForceInterpParams(
    owner: &Capability,
    value: &Ros1Kuavo_msgsSetContactForceInterpParamsRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsSetContactForceInterpParamsResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsSetContactForceInterpParamsResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/setHwIntialState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetHwIntialStateRequest, response=Ros1Kuavo_msgsSetHwIntialStateResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsSetHwIntialState(
    owner: &Capability,
    value: &Ros1Kuavo_msgsSetHwIntialStateRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsSetHwIntialStateResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsSetHwIntialStateResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/setMmCtrlFrame service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetMmCtrlFrameRequest, response=Ros1Kuavo_msgsSetMmCtrlFrameResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsSetMmCtrlFrame(
    owner: &Capability,
    value: &Ros1Kuavo_msgsSetMmCtrlFrameRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsSetMmCtrlFrameResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsSetMmCtrlFrameResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/setMotorEncoderRoundService service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest,
/// response=Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsSetMotorEncoderRoundService(
    owner: &Capability,
    value: &Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/setRuckigPlannerParams service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetRuckigPlannerParamsRequest,
/// response=Ros1Kuavo_msgsSetRuckigPlannerParamsResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsSetRuckigPlannerParams(
    owner: &Capability,
    value: &Ros1Kuavo_msgsSetRuckigPlannerParamsRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsSetRuckigPlannerParamsResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsSetRuckigPlannerParamsResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/setTagId service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSetTagIdRequest, response=Ros1Kuavo_msgsSetTagIdResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsSetTagId(
    owner: &Capability,
    value: &Ros1Kuavo_msgsSetTagIdRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsSetTagIdResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsSetTagIdResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/singleStepControl service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSingleStepControlRequest, response=Ros1Kuavo_msgsSingleStepControlResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsSingleStepControl(
    owner: &Capability,
    value: &Ros1Kuavo_msgsSingleStepControlRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsSingleStepControlResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsSingleStepControlResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/stairAlignmentSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsStairAlignmentSrvRequest, response=Ros1Kuavo_msgsStairAlignmentSrvResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsStairAlignmentSrv(
    owner: &Capability,
    value: &Ros1Kuavo_msgsStairAlignmentSrvRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsStairAlignmentSrvResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsStairAlignmentSrvResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/switchController service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSwitchControllerRequest, response=Ros1Kuavo_msgsSwitchControllerResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsSwitchController(
    owner: &Capability,
    value: &Ros1Kuavo_msgsSwitchControllerRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsSwitchControllerResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsSwitchControllerResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/switchGaitByName message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsSwitchGaitByName.
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
pub fn publish_Ros1Kuavo_msgsSwitchGaitByName(
    owner: &Capability,
    value: &Ros1Kuavo_msgsSwitchGaitByName,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/switchGaitByName message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsSwitchGaitByName.
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
pub fn poll_Ros1Kuavo_msgsSwitchGaitByName(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsSwitchGaitByName, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsSwitchGaitByName::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/switchToNextController service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsSwitchToNextControllerRequest,
/// response=Ros1Kuavo_msgsSwitchToNextControllerResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsSwitchToNextController(
    owner: &Capability,
    value: &Ros1Kuavo_msgsSwitchToNextControllerRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsSwitchToNextControllerResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsSwitchToNextControllerResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/tagDataArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTagDataArray.
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
pub fn publish_Ros1Kuavo_msgsTagDataArray(
    owner: &Capability,
    value: &Ros1Kuavo_msgsTagDataArray,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/tagDataArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTagDataArray.
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
pub fn poll_Ros1Kuavo_msgsTagDataArray(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsTagDataArray, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsTagDataArray::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/timedPoint message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTimedPoint.
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
pub fn publish_Ros1Kuavo_msgsTimedPoint(
    owner: &Capability,
    value: &Ros1Kuavo_msgsTimedPoint,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/timedPoint message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Kuavo_msgsTimedPoint.
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
pub fn poll_Ros1Kuavo_msgsTimedPoint(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsTimedPoint, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsTimedPoint::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/timedSingleCmd message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTimedSingleCmd.
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
pub fn publish_Ros1Kuavo_msgsTimedSingleCmd(
    owner: &Capability,
    value: &Ros1Kuavo_msgsTimedSingleCmd,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/timedSingleCmd message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsTimedSingleCmd.
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
pub fn poll_Ros1Kuavo_msgsTimedSingleCmd(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsTimedSingleCmd, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsTimedSingleCmd::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/touchSensorStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTouchSensorStatus.
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
pub fn publish_Ros1Kuavo_msgsTouchSensorStatus(
    owner: &Capability,
    value: &Ros1Kuavo_msgsTouchSensorStatus,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/touchSensorStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsTouchSensorStatus.
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
pub fn poll_Ros1Kuavo_msgsTouchSensorStatus(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsTouchSensorStatus, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsTouchSensorStatus::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/twoArmHandPose message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTwoArmHandPose.
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
pub fn publish_Ros1Kuavo_msgsTwoArmHandPose(
    owner: &Capability,
    value: &Ros1Kuavo_msgsTwoArmHandPose,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/twoArmHandPose message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsTwoArmHandPose.
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
pub fn poll_Ros1Kuavo_msgsTwoArmHandPose(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsTwoArmHandPose, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsTwoArmHandPose::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/twoArmHandPoseCmd message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTwoArmHandPoseCmd.
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
pub fn publish_Ros1Kuavo_msgsTwoArmHandPoseCmd(
    owner: &Capability,
    value: &Ros1Kuavo_msgsTwoArmHandPoseCmd,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/twoArmHandPoseCmd message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsTwoArmHandPoseCmd.
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
pub fn poll_Ros1Kuavo_msgsTwoArmHandPoseCmd(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsTwoArmHandPoseCmd, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsTwoArmHandPoseCmd::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/twoArmHandPoseCmdFree message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_msgsTwoArmHandPoseCmdFree.
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
pub fn publish_Ros1Kuavo_msgsTwoArmHandPoseCmdFree(
    owner: &Capability,
    value: &Ros1Kuavo_msgsTwoArmHandPoseCmdFree,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/twoArmHandPoseCmdFree message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsTwoArmHandPoseCmdFree.
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
pub fn poll_Ros1Kuavo_msgsTwoArmHandPoseCmdFree(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsTwoArmHandPoseCmdFree, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsTwoArmHandPoseCmdFree::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/twoArmHandPoseCmdFreeSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest,
/// response=Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrv(
    owner: &Capability,
    value: &Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse::decode(&output[..n])
}
/// @brief Call the selected kuavo_msgs/twoArmHandPoseCmdSrv service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest,
/// response=Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_msgsTwoArmHandPoseCmdSrv(
    owner: &Capability,
    value: &Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/twoArmHandPoseFree message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsTwoArmHandPoseFree.
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
pub fn publish_Ros1Kuavo_msgsTwoArmHandPoseFree(
    owner: &Capability,
    value: &Ros1Kuavo_msgsTwoArmHandPoseFree,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/twoArmHandPoseFree message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsTwoArmHandPoseFree.
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
pub fn poll_Ros1Kuavo_msgsTwoArmHandPoseFree(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsTwoArmHandPoseFree, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsTwoArmHandPoseFree::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/xsensePoseInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsXsensePoseInfo.
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
pub fn publish_Ros1Kuavo_msgsXsensePoseInfo(
    owner: &Capability,
    value: &Ros1Kuavo_msgsXsensePoseInfo,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/xsensePoseInfo message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsXsensePoseInfo.
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
pub fn poll_Ros1Kuavo_msgsXsensePoseInfo(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsXsensePoseInfo, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsXsensePoseInfo::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/xsensePoseInfoList message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsXsensePoseInfoList.
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
pub fn publish_Ros1Kuavo_msgsXsensePoseInfoList(
    owner: &Capability,
    value: &Ros1Kuavo_msgsXsensePoseInfoList,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/xsensePoseInfoList message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsXsensePoseInfoList.
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
pub fn poll_Ros1Kuavo_msgsXsensePoseInfoList(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsXsensePoseInfoList, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsXsensePoseInfoList::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/xsensePoseRetarget message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsXsensePoseRetarget.
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
pub fn publish_Ros1Kuavo_msgsXsensePoseRetarget(
    owner: &Capability,
    value: &Ros1Kuavo_msgsXsensePoseRetarget,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/xsensePoseRetarget message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsXsensePoseRetarget.
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
pub fn poll_Ros1Kuavo_msgsXsensePoseRetarget(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsXsensePoseRetarget, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsXsensePoseRetarget::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/yoloDetection message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsYoloDetection.
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
pub fn publish_Ros1Kuavo_msgsYoloDetection(
    owner: &Capability,
    value: &Ros1Kuavo_msgsYoloDetection,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/yoloDetection message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsYoloDetection.
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
pub fn poll_Ros1Kuavo_msgsYoloDetection(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsYoloDetection, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsYoloDetection::decode(&output[..n])
}
/// @brief Publish one complete kuavo_msgs/yoloOutputData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Kuavo_msgsYoloOutputData.
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
pub fn publish_Ros1Kuavo_msgsYoloOutputData(
    owner: &Capability,
    value: &Ros1Kuavo_msgsYoloOutputData,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_msgs/yoloOutputData message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_msgsYoloOutputData.
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
pub fn poll_Ros1Kuavo_msgsYoloOutputData(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_msgsYoloOutputData, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_msgsYoloOutputData::decode(&output[..n])
}
/// @brief Call the selected kuavo_pico_gmr/AmpJoyRoute service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_pico_gmrAmpJoyRouteRequest, response=Ros1Kuavo_pico_gmrAmpJoyRouteResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_pico_gmrAmpJoyRoute(
    owner: &Capability,
    value: &Ros1Kuavo_pico_gmrAmpJoyRouteRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_pico_gmrAmpJoyRouteResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_pico_gmrAmpJoyRouteResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_ros_interfaces/armTargetPoses message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_ros_interfacesArmTargetPoses.
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
pub fn publish_Ros1Kuavo_ros_interfacesArmTargetPoses(
    owner: &Capability,
    value: &Ros1Kuavo_ros_interfacesArmTargetPoses,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_ros_interfaces/armTargetPoses message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_ros_interfacesArmTargetPoses.
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
pub fn poll_Ros1Kuavo_ros_interfacesArmTargetPoses(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_ros_interfacesArmTargetPoses, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_ros_interfacesArmTargetPoses::decode(&output[..n])
}
/// @brief Publish one complete kuavo_ros_interfaces/bezierCurveCubicPoint message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_ros_interfacesBezierCurveCubicPoint.
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
pub fn publish_Ros1Kuavo_ros_interfacesBezierCurveCubicPoint(
    owner: &Capability,
    value: &Ros1Kuavo_ros_interfacesBezierCurveCubicPoint,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_ros_interfaces/bezierCurveCubicPoint message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_ros_interfacesBezierCurveCubicPoint.
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
pub fn poll_Ros1Kuavo_ros_interfacesBezierCurveCubicPoint(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_ros_interfacesBezierCurveCubicPoint, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_ros_interfacesBezierCurveCubicPoint::decode(&output[..n])
}
/// @brief Publish one complete kuavo_ros_interfaces/jointBezierTrajectory message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_ros_interfacesJointBezierTrajectory.
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
pub fn publish_Ros1Kuavo_ros_interfacesJointBezierTrajectory(
    owner: &Capability,
    value: &Ros1Kuavo_ros_interfacesJointBezierTrajectory,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_ros_interfaces/jointBezierTrajectory message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_ros_interfacesJointBezierTrajectory.
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
pub fn poll_Ros1Kuavo_ros_interfacesJointBezierTrajectory(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_ros_interfacesJointBezierTrajectory, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_ros_interfacesJointBezierTrajectory::decode(&output[..n])
}
/// @brief Call the selected kuavo_ros_interfaces/ocs2ChangeArmCtrlMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest,
/// response=Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlMode(
    owner: &Capability,
    value: &Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_ros_interfaces/planArmState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_ros_interfacesPlanArmState.
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
pub fn publish_Ros1Kuavo_ros_interfacesPlanArmState(
    owner: &Capability,
    value: &Ros1Kuavo_ros_interfacesPlanArmState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_ros_interfaces/planArmState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_ros_interfacesPlanArmState.
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
pub fn poll_Ros1Kuavo_ros_interfacesPlanArmState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_ros_interfacesPlanArmState, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_ros_interfacesPlanArmState::decode(&output[..n])
}
/// @brief Call the selected kuavo_ros_interfaces/planArmTrajectoryBezierCurve service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest,
/// response=Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurve(
    owner: &Capability,
    value: &Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse::decode(&output[..n])
}
/// @brief Publish one complete kuavo_ros_interfaces/robotHandPosition message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_ros_interfacesRobotHandPosition.
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
pub fn publish_Ros1Kuavo_ros_interfacesRobotHandPosition(
    owner: &Capability,
    value: &Ros1Kuavo_ros_interfacesRobotHandPosition,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_ros_interfaces/robotHandPosition message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_ros_interfacesRobotHandPosition.
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
pub fn poll_Ros1Kuavo_ros_interfacesRobotHandPosition(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_ros_interfacesRobotHandPosition, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_ros_interfacesRobotHandPosition::decode(&output[..n])
}
/// @brief Publish one complete kuavo_ros_interfaces/robotHeadMotionData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Kuavo_ros_interfacesRobotHeadMotionData.
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
pub fn publish_Ros1Kuavo_ros_interfacesRobotHeadMotionData(
    owner: &Capability,
    value: &Ros1Kuavo_ros_interfacesRobotHeadMotionData,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete kuavo_ros_interfaces/robotHeadMotionData message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Kuavo_ros_interfacesRobotHeadMotionData.
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
pub fn poll_Ros1Kuavo_ros_interfacesRobotHeadMotionData(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Kuavo_ros_interfacesRobotHeadMotionData, Error> {
    let n = owner.poll(output)?;
    Ros1Kuavo_ros_interfacesRobotHeadMotionData::decode(&output[..n])
}
/// @brief Call the selected kuavo_ros_interfaces/stopPlanArmTrajectory service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest,
/// response=Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Kuavo_ros_interfacesStopPlanArmTrajectory(
    owner: &Capability,
    value: &Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest,
    output: &mut [u8],
) -> Result<Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse::decode(&output[..n])
}
/// @brief Publish one complete leju_mobile_base_msgs/BMS message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Leju_mobile_base_msgsBMS.
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
pub fn publish_Ros1Leju_mobile_base_msgsBMS(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsBMS,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete leju_mobile_base_msgs/BMS message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Leju_mobile_base_msgsBMS.
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
pub fn poll_Ros1Leju_mobile_base_msgsBMS(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsBMS, Error> {
    let n = owner.poll(output)?;
    Ros1Leju_mobile_base_msgsBMS::decode(&output[..n])
}
/// @brief Publish one complete leju_mobile_base_msgs/BaseCmdVelStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsBaseCmdVelStatus.
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
pub fn publish_Ros1Leju_mobile_base_msgsBaseCmdVelStatus(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsBaseCmdVelStatus,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete leju_mobile_base_msgs/BaseCmdVelStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Leju_mobile_base_msgsBaseCmdVelStatus.
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
pub fn poll_Ros1Leju_mobile_base_msgsBaseCmdVelStatus(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsBaseCmdVelStatus, Error> {
    let n = owner.poll(output)?;
    Ros1Leju_mobile_base_msgsBaseCmdVelStatus::decode(&output[..n])
}
/// @brief Call the selected leju_mobile_base_msgs/BaseMove service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsBaseMoveRequest,
/// response=Ros1Leju_mobile_base_msgsBaseMoveResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Leju_mobile_base_msgsBaseMove(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsBaseMoveRequest,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsBaseMoveResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Leju_mobile_base_msgsBaseMoveResponse::decode(&output[..n])
}
/// @brief Publish one complete leju_mobile_base_msgs/Battery message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Leju_mobile_base_msgsBattery.
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
pub fn publish_Ros1Leju_mobile_base_msgsBattery(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsBattery,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete leju_mobile_base_msgs/Battery message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Leju_mobile_base_msgsBattery.
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
pub fn poll_Ros1Leju_mobile_base_msgsBattery(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsBattery, Error> {
    let n = owner.poll(output)?;
    Ros1Leju_mobile_base_msgsBattery::decode(&output[..n])
}
/// @brief Call the selected leju_mobile_base_msgs/CheckArrived service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsCheckArrivedRequest,
/// response=Ros1Leju_mobile_base_msgsCheckArrivedResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Leju_mobile_base_msgsCheckArrived(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsCheckArrivedRequest,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsCheckArrivedResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Leju_mobile_base_msgsCheckArrivedResponse::decode(&output[..n])
}
/// @brief Call the selected leju_mobile_base_msgs/ControlLaserScan service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsControlLaserScanRequest,
/// response=Ros1Leju_mobile_base_msgsControlLaserScanResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Leju_mobile_base_msgsControlLaserScan(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsControlLaserScanRequest,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsControlLaserScanResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Leju_mobile_base_msgsControlLaserScanResponse::decode(&output[..n])
}
/// @brief Call the selected leju_mobile_base_msgs/DispatchMove service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsDispatchMoveRequest,
/// response=Ros1Leju_mobile_base_msgsDispatchMoveResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Leju_mobile_base_msgsDispatchMove(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsDispatchMoveRequest,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsDispatchMoveResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Leju_mobile_base_msgsDispatchMoveResponse::decode(&output[..n])
}
/// @brief Call the selected leju_mobile_base_msgs/ExecTask service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsExecTaskRequest,
/// response=Ros1Leju_mobile_base_msgsExecTaskResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Leju_mobile_base_msgsExecTask(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsExecTaskRequest,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsExecTaskResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Leju_mobile_base_msgsExecTaskResponse::decode(&output[..n])
}
/// @brief Call the selected leju_mobile_base_msgs/GetGlobalOdometer service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest,
/// response=Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Leju_mobile_base_msgsGetGlobalOdometer(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse::decode(&output[..n])
}
/// @brief Call the selected leju_mobile_base_msgs/GetLaserScanList service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsGetLaserScanListRequest,
/// response=Ros1Leju_mobile_base_msgsGetLaserScanListResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Leju_mobile_base_msgsGetLaserScanList(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsGetLaserScanListRequest,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsGetLaserScanListResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Leju_mobile_base_msgsGetLaserScanListResponse::decode(&output[..n])
}
/// @brief Publish one complete leju_mobile_base_msgs/HardwareStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsHardwareStatus.
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
pub fn publish_Ros1Leju_mobile_base_msgsHardwareStatus(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsHardwareStatus,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete leju_mobile_base_msgs/HardwareStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Leju_mobile_base_msgsHardwareStatus.
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
pub fn poll_Ros1Leju_mobile_base_msgsHardwareStatus(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsHardwareStatus, Error> {
    let n = owner.poll(output)?;
    Ros1Leju_mobile_base_msgsHardwareStatus::decode(&output[..n])
}
/// @brief Publish one complete leju_mobile_base_msgs/Information message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsInformation.
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
pub fn publish_Ros1Leju_mobile_base_msgsInformation(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsInformation,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete leju_mobile_base_msgs/Information message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Leju_mobile_base_msgsInformation.
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
pub fn poll_Ros1Leju_mobile_base_msgsInformation(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsInformation, Error> {
    let n = owner.poll(output)?;
    Ros1Leju_mobile_base_msgsInformation::decode(&output[..n])
}
/// @brief Publish one complete leju_mobile_base_msgs/LED message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Leju_mobile_base_msgsLED.
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
pub fn publish_Ros1Leju_mobile_base_msgsLED(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsLED,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete leju_mobile_base_msgs/LED message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Leju_mobile_base_msgsLED.
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
pub fn poll_Ros1Leju_mobile_base_msgsLED(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsLED, Error> {
    let n = owner.poll(output)?;
    Ros1Leju_mobile_base_msgsLED::decode(&output[..n])
}
/// @brief Publish one complete leju_mobile_base_msgs/LiftControl3Feedback message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsLiftControl3Feedback.
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
pub fn publish_Ros1Leju_mobile_base_msgsLiftControl3Feedback(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsLiftControl3Feedback,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete leju_mobile_base_msgs/LiftControl3Feedback message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Leju_mobile_base_msgsLiftControl3Feedback.
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
pub fn poll_Ros1Leju_mobile_base_msgsLiftControl3Feedback(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsLiftControl3Feedback, Error> {
    let n = owner.poll(output)?;
    Ros1Leju_mobile_base_msgsLiftControl3Feedback::decode(&output[..n])
}
/// @brief Publish one complete leju_mobile_base_msgs/LiftControl3Goal message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsLiftControl3Goal.
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
pub fn publish_Ros1Leju_mobile_base_msgsLiftControl3Goal(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsLiftControl3Goal,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete leju_mobile_base_msgs/LiftControl3Goal message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Leju_mobile_base_msgsLiftControl3Goal.
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
pub fn poll_Ros1Leju_mobile_base_msgsLiftControl3Goal(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsLiftControl3Goal, Error> {
    let n = owner.poll(output)?;
    Ros1Leju_mobile_base_msgsLiftControl3Goal::decode(&output[..n])
}
/// @brief Publish one complete leju_mobile_base_msgs/LiftControl3Result message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsLiftControl3Result.
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
pub fn publish_Ros1Leju_mobile_base_msgsLiftControl3Result(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsLiftControl3Result,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete leju_mobile_base_msgs/LiftControl3Result message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Leju_mobile_base_msgsLiftControl3Result.
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
pub fn poll_Ros1Leju_mobile_base_msgsLiftControl3Result(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsLiftControl3Result, Error> {
    let n = owner.poll(output)?;
    Ros1Leju_mobile_base_msgsLiftControl3Result::decode(&output[..n])
}
/// @brief Publish one complete leju_mobile_base_msgs/LiftStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsLiftStatus.
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
pub fn publish_Ros1Leju_mobile_base_msgsLiftStatus(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsLiftStatus,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete leju_mobile_base_msgs/LiftStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Leju_mobile_base_msgsLiftStatus.
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
pub fn poll_Ros1Leju_mobile_base_msgsLiftStatus(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsLiftStatus, Error> {
    let n = owner.poll(output)?;
    Ros1Leju_mobile_base_msgsLiftStatus::decode(&output[..n])
}
/// @brief Publish one complete leju_mobile_base_msgs/MoveBaseActionGoal message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsMoveBaseActionGoal.
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
pub fn publish_Ros1Leju_mobile_base_msgsMoveBaseActionGoal(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsMoveBaseActionGoal,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete leju_mobile_base_msgs/MoveBaseActionGoal message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Leju_mobile_base_msgsMoveBaseActionGoal.
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
pub fn poll_Ros1Leju_mobile_base_msgsMoveBaseActionGoal(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsMoveBaseActionGoal, Error> {
    let n = owner.poll(output)?;
    Ros1Leju_mobile_base_msgsMoveBaseActionGoal::decode(&output[..n])
}
/// @brief Call the selected leju_mobile_base_msgs/MoveToTarget service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsMoveToTargetRequest,
/// response=Ros1Leju_mobile_base_msgsMoveToTargetResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Leju_mobile_base_msgsMoveToTarget(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsMoveToTargetRequest,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsMoveToTargetResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Leju_mobile_base_msgsMoveToTargetResponse::decode(&output[..n])
}
/// @brief Publish one complete leju_mobile_base_msgs/MoveToTargetOptions message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsMoveToTargetOptions.
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
pub fn publish_Ros1Leju_mobile_base_msgsMoveToTargetOptions(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsMoveToTargetOptions,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete leju_mobile_base_msgs/MoveToTargetOptions message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Leju_mobile_base_msgsMoveToTargetOptions.
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
pub fn poll_Ros1Leju_mobile_base_msgsMoveToTargetOptions(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsMoveToTargetOptions, Error> {
    let n = owner.poll(output)?;
    Ros1Leju_mobile_base_msgsMoveToTargetOptions::decode(&output[..n])
}
/// @brief Publish one complete leju_mobile_base_msgs/NavigationModeGoal message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsNavigationModeGoal.
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
pub fn publish_Ros1Leju_mobile_base_msgsNavigationModeGoal(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsNavigationModeGoal,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete leju_mobile_base_msgs/NavigationModeGoal message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Leju_mobile_base_msgsNavigationModeGoal.
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
pub fn poll_Ros1Leju_mobile_base_msgsNavigationModeGoal(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsNavigationModeGoal, Error> {
    let n = owner.poll(output)?;
    Ros1Leju_mobile_base_msgsNavigationModeGoal::decode(&output[..n])
}
/// @brief Publish one complete leju_mobile_base_msgs/Parameter message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Leju_mobile_base_msgsParameter.
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
pub fn publish_Ros1Leju_mobile_base_msgsParameter(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsParameter,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete leju_mobile_base_msgs/Parameter message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Leju_mobile_base_msgsParameter.
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
pub fn poll_Ros1Leju_mobile_base_msgsParameter(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsParameter, Error> {
    let n = owner.poll(output)?;
    Ros1Leju_mobile_base_msgsParameter::decode(&output[..n])
}
/// @brief Call the selected leju_mobile_base_msgs/ResetTemporaryOdometer service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest,
/// response=Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Leju_mobile_base_msgsResetTemporaryOdometer(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse::decode(&output[..n])
}
/// @brief Publish one complete leju_mobile_base_msgs/RobotStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsRobotStatus.
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
pub fn publish_Ros1Leju_mobile_base_msgsRobotStatus(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsRobotStatus,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete leju_mobile_base_msgs/RobotStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Leju_mobile_base_msgsRobotStatus.
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
pub fn poll_Ros1Leju_mobile_base_msgsRobotStatus(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsRobotStatus, Error> {
    let n = owner.poll(output)?;
    Ros1Leju_mobile_base_msgsRobotStatus::decode(&output[..n])
}
/// @brief Call the selected leju_mobile_base_msgs/SetDispatchMode service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsSetDispatchModeRequest,
/// response=Ros1Leju_mobile_base_msgsSetDispatchModeResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Leju_mobile_base_msgsSetDispatchMode(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsSetDispatchModeRequest,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsSetDispatchModeResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Leju_mobile_base_msgsSetDispatchModeResponse::decode(&output[..n])
}
/// @brief Call the selected leju_mobile_base_msgs/SetMapServer service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsSetMapServerRequest,
/// response=Ros1Leju_mobile_base_msgsSetMapServerResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Leju_mobile_base_msgsSetMapServer(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsSetMapServerRequest,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsSetMapServerResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Leju_mobile_base_msgsSetMapServerResponse::decode(&output[..n])
}
/// @brief Call the selected leju_mobile_base_msgs/StartLocalization service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsStartLocalizationRequest,
/// response=Ros1Leju_mobile_base_msgsStartLocalizationResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Leju_mobile_base_msgsStartLocalization(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsStartLocalizationRequest,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsStartLocalizationResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Leju_mobile_base_msgsStartLocalizationResponse::decode(&output[..n])
}
/// @brief Publish one complete leju_mobile_base_msgs/StepControlGoal message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsStepControlGoal.
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
pub fn publish_Ros1Leju_mobile_base_msgsStepControlGoal(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsStepControlGoal,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete leju_mobile_base_msgs/StepControlGoal message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Leju_mobile_base_msgsStepControlGoal.
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
pub fn poll_Ros1Leju_mobile_base_msgsStepControlGoal(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsStepControlGoal, Error> {
    let n = owner.poll(output)?;
    Ros1Leju_mobile_base_msgsStepControlGoal::decode(&output[..n])
}
/// @brief Call the selected leju_mobile_base_msgs/SyncCostmap service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Leju_mobile_base_msgsSyncCostmapRequest,
/// response=Ros1Leju_mobile_base_msgsSyncCostmapResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Leju_mobile_base_msgsSyncCostmap(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsSyncCostmapRequest,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsSyncCostmapResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Leju_mobile_base_msgsSyncCostmapResponse::decode(&output[..n])
}
/// @brief Publish one complete leju_mobile_base_msgs/TaskDetailStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Leju_mobile_base_msgsTaskDetailStatus.
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
pub fn publish_Ros1Leju_mobile_base_msgsTaskDetailStatus(
    owner: &Capability,
    value: &Ros1Leju_mobile_base_msgsTaskDetailStatus,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete leju_mobile_base_msgs/TaskDetailStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Leju_mobile_base_msgsTaskDetailStatus.
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
pub fn poll_Ros1Leju_mobile_base_msgsTaskDetailStatus(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Leju_mobile_base_msgsTaskDetailStatus, Error> {
    let n = owner.poll(output)?;
    Ros1Leju_mobile_base_msgsTaskDetailStatus::decode(&output[..n])
}
/// @brief Publish one complete motioncapture/ForcePlateData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1MotioncaptureForcePlateData.
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
pub fn publish_Ros1MotioncaptureForcePlateData(
    owner: &Capability,
    value: &Ros1MotioncaptureForcePlateData,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete motioncapture/ForcePlateData message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1MotioncaptureForcePlateData.
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
pub fn poll_Ros1MotioncaptureForcePlateData(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1MotioncaptureForcePlateData, Error> {
    let n = owner.poll(output)?;
    Ros1MotioncaptureForcePlateData::decode(&output[..n])
}
/// @brief Call the selected network_monitor/NetworkPing service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Network_monitorNetworkPingRequest, response=Ros1Network_monitorNetworkPingResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Network_monitorNetworkPing(
    owner: &Capability,
    value: &Ros1Network_monitorNetworkPingRequest,
    output: &mut [u8],
) -> Result<Ros1Network_monitorNetworkPingResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Network_monitorNetworkPingResponse::decode(&output[..n])
}
/// @brief Publish one complete network_monitor/NetworkPingMsg message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Network_monitorNetworkPingMsg.
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
pub fn publish_Ros1Network_monitorNetworkPingMsg(
    owner: &Capability,
    value: &Ros1Network_monitorNetworkPingMsg,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete network_monitor/NetworkPingMsg message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Network_monitorNetworkPingMsg.
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
pub fn poll_Ros1Network_monitorNetworkPingMsg(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Network_monitorNetworkPingMsg, Error> {
    let n = owner.poll(output)?;
    Ros1Network_monitorNetworkPingMsg::decode(&output[..n])
}
/// @brief Publish one complete nimservos_controller/motor_cmd message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nimservos_controllerMotor_cmd.
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
pub fn publish_Ros1Nimservos_controllerMotor_cmd(
    owner: &Capability,
    value: &Ros1Nimservos_controllerMotor_cmd,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nimservos_controller/motor_cmd message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nimservos_controllerMotor_cmd.
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
pub fn poll_Ros1Nimservos_controllerMotor_cmd(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nimservos_controllerMotor_cmd, Error> {
    let n = owner.poll(output)?;
    Ros1Nimservos_controllerMotor_cmd::decode(&output[..n])
}
/// @brief Publish one complete nimservos_controller/motor_state message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nimservos_controllerMotor_state.
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
pub fn publish_Ros1Nimservos_controllerMotor_state(
    owner: &Capability,
    value: &Ros1Nimservos_controllerMotor_state,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nimservos_controller/motor_state message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nimservos_controllerMotor_state.
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
pub fn poll_Ros1Nimservos_controllerMotor_state(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nimservos_controllerMotor_state, Error> {
    let n = owner.poll(output)?;
    Ros1Nimservos_controllerMotor_state::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/IotFrame0 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserIotFrame0.
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
pub fn publish_Ros1Nlink_parserIotFrame0(
    owner: &Capability,
    value: &Ros1Nlink_parserIotFrame0,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/IotFrame0 message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Nlink_parserIotFrame0.
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
pub fn poll_Ros1Nlink_parserIotFrame0(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserIotFrame0, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserIotFrame0::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/IotFrame0Node message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserIotFrame0Node.
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
pub fn publish_Ros1Nlink_parserIotFrame0Node(
    owner: &Capability,
    value: &Ros1Nlink_parserIotFrame0Node,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/IotFrame0Node message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserIotFrame0Node.
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
pub fn poll_Ros1Nlink_parserIotFrame0Node(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserIotFrame0Node, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserIotFrame0Node::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/LinktrackAnchorframe0 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserLinktrackAnchorframe0.
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
pub fn publish_Ros1Nlink_parserLinktrackAnchorframe0(
    owner: &Capability,
    value: &Ros1Nlink_parserLinktrackAnchorframe0,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/LinktrackAnchorframe0 message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserLinktrackAnchorframe0.
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
pub fn poll_Ros1Nlink_parserLinktrackAnchorframe0(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserLinktrackAnchorframe0, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserLinktrackAnchorframe0::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/LinktrackAoaNode0 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackAoaNode0.
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
pub fn publish_Ros1Nlink_parserLinktrackAoaNode0(
    owner: &Capability,
    value: &Ros1Nlink_parserLinktrackAoaNode0,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/LinktrackAoaNode0 message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserLinktrackAoaNode0.
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
pub fn poll_Ros1Nlink_parserLinktrackAoaNode0(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserLinktrackAoaNode0, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserLinktrackAoaNode0::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/LinktrackAoaNodeframe0 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserLinktrackAoaNodeframe0.
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
pub fn publish_Ros1Nlink_parserLinktrackAoaNodeframe0(
    owner: &Capability,
    value: &Ros1Nlink_parserLinktrackAoaNodeframe0,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/LinktrackAoaNodeframe0 message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserLinktrackAoaNodeframe0.
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
pub fn poll_Ros1Nlink_parserLinktrackAoaNodeframe0(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserLinktrackAoaNodeframe0, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserLinktrackAoaNodeframe0::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/LinktrackNode0 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode0.
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
pub fn publish_Ros1Nlink_parserLinktrackNode0(
    owner: &Capability,
    value: &Ros1Nlink_parserLinktrackNode0,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/LinktrackNode0 message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserLinktrackNode0.
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
pub fn poll_Ros1Nlink_parserLinktrackNode0(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserLinktrackNode0, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserLinktrackNode0::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/LinktrackNode1 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode1.
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
pub fn publish_Ros1Nlink_parserLinktrackNode1(
    owner: &Capability,
    value: &Ros1Nlink_parserLinktrackNode1,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/LinktrackNode1 message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserLinktrackNode1.
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
pub fn poll_Ros1Nlink_parserLinktrackNode1(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserLinktrackNode1, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserLinktrackNode1::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/LinktrackNode2 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode2.
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
pub fn publish_Ros1Nlink_parserLinktrackNode2(
    owner: &Capability,
    value: &Ros1Nlink_parserLinktrackNode2,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/LinktrackNode2 message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserLinktrackNode2.
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
pub fn poll_Ros1Nlink_parserLinktrackNode2(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserLinktrackNode2, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserLinktrackNode2::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/LinktrackNode4Anchor message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserLinktrackNode4Anchor.
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
pub fn publish_Ros1Nlink_parserLinktrackNode4Anchor(
    owner: &Capability,
    value: &Ros1Nlink_parserLinktrackNode4Anchor,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/LinktrackNode4Anchor message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserLinktrackNode4Anchor.
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
pub fn poll_Ros1Nlink_parserLinktrackNode4Anchor(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserLinktrackNode4Anchor, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserLinktrackNode4Anchor::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/LinktrackNode4Tag message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode4Tag.
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
pub fn publish_Ros1Nlink_parserLinktrackNode4Tag(
    owner: &Capability,
    value: &Ros1Nlink_parserLinktrackNode4Tag,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/LinktrackNode4Tag message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserLinktrackNode4Tag.
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
pub fn poll_Ros1Nlink_parserLinktrackNode4Tag(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserLinktrackNode4Tag, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserLinktrackNode4Tag::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/LinktrackNode5 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode5.
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
pub fn publish_Ros1Nlink_parserLinktrackNode5(
    owner: &Capability,
    value: &Ros1Nlink_parserLinktrackNode5,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/LinktrackNode5 message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserLinktrackNode5.
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
pub fn poll_Ros1Nlink_parserLinktrackNode5(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserLinktrackNode5, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserLinktrackNode5::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/LinktrackNode6 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackNode6.
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
pub fn publish_Ros1Nlink_parserLinktrackNode6(
    owner: &Capability,
    value: &Ros1Nlink_parserLinktrackNode6,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/LinktrackNode6 message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserLinktrackNode6.
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
pub fn poll_Ros1Nlink_parserLinktrackNode6(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserLinktrackNode6, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserLinktrackNode6::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/LinktrackNodeframe0 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserLinktrackNodeframe0.
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
pub fn publish_Ros1Nlink_parserLinktrackNodeframe0(
    owner: &Capability,
    value: &Ros1Nlink_parserLinktrackNodeframe0,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/LinktrackNodeframe0 message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserLinktrackNodeframe0.
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
pub fn poll_Ros1Nlink_parserLinktrackNodeframe0(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserLinktrackNodeframe0, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserLinktrackNodeframe0::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/LinktrackNodeframe1 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserLinktrackNodeframe1.
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
pub fn publish_Ros1Nlink_parserLinktrackNodeframe1(
    owner: &Capability,
    value: &Ros1Nlink_parserLinktrackNodeframe1,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/LinktrackNodeframe1 message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserLinktrackNodeframe1.
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
pub fn poll_Ros1Nlink_parserLinktrackNodeframe1(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserLinktrackNodeframe1, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserLinktrackNodeframe1::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/LinktrackNodeframe2 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserLinktrackNodeframe2.
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
pub fn publish_Ros1Nlink_parserLinktrackNodeframe2(
    owner: &Capability,
    value: &Ros1Nlink_parserLinktrackNodeframe2,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/LinktrackNodeframe2 message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserLinktrackNodeframe2.
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
pub fn poll_Ros1Nlink_parserLinktrackNodeframe2(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserLinktrackNodeframe2, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserLinktrackNodeframe2::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/LinktrackNodeframe3 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserLinktrackNodeframe3.
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
pub fn publish_Ros1Nlink_parserLinktrackNodeframe3(
    owner: &Capability,
    value: &Ros1Nlink_parserLinktrackNodeframe3,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/LinktrackNodeframe3 message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserLinktrackNodeframe3.
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
pub fn poll_Ros1Nlink_parserLinktrackNodeframe3(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserLinktrackNodeframe3, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserLinktrackNodeframe3::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/LinktrackNodeframe4 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserLinktrackNodeframe4.
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
pub fn publish_Ros1Nlink_parserLinktrackNodeframe4(
    owner: &Capability,
    value: &Ros1Nlink_parserLinktrackNodeframe4,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/LinktrackNodeframe4 message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserLinktrackNodeframe4.
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
pub fn poll_Ros1Nlink_parserLinktrackNodeframe4(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserLinktrackNodeframe4, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserLinktrackNodeframe4::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/LinktrackNodeframe5 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserLinktrackNodeframe5.
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
pub fn publish_Ros1Nlink_parserLinktrackNodeframe5(
    owner: &Capability,
    value: &Ros1Nlink_parserLinktrackNodeframe5,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/LinktrackNodeframe5 message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserLinktrackNodeframe5.
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
pub fn poll_Ros1Nlink_parserLinktrackNodeframe5(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserLinktrackNodeframe5, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserLinktrackNodeframe5::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/LinktrackNodeframe6 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserLinktrackNodeframe6.
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
pub fn publish_Ros1Nlink_parserLinktrackNodeframe6(
    owner: &Capability,
    value: &Ros1Nlink_parserLinktrackNodeframe6,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/LinktrackNodeframe6 message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserLinktrackNodeframe6.
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
pub fn poll_Ros1Nlink_parserLinktrackNodeframe6(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserLinktrackNodeframe6, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserLinktrackNodeframe6::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/LinktrackTag message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackTag.
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
pub fn publish_Ros1Nlink_parserLinktrackTag(
    owner: &Capability,
    value: &Ros1Nlink_parserLinktrackTag,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/LinktrackTag message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserLinktrackTag.
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
pub fn poll_Ros1Nlink_parserLinktrackTag(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserLinktrackTag, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserLinktrackTag::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/LinktrackTagframe0 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserLinktrackTagframe0.
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
pub fn publish_Ros1Nlink_parserLinktrackTagframe0(
    owner: &Capability,
    value: &Ros1Nlink_parserLinktrackTagframe0,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/LinktrackTagframe0 message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserLinktrackTagframe0.
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
pub fn poll_Ros1Nlink_parserLinktrackTagframe0(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserLinktrackTagframe0, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserLinktrackTagframe0::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/TofsenseCascade message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserTofsenseCascade.
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
pub fn publish_Ros1Nlink_parserTofsenseCascade(
    owner: &Capability,
    value: &Ros1Nlink_parserTofsenseCascade,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/TofsenseCascade message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserTofsenseCascade.
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
pub fn poll_Ros1Nlink_parserTofsenseCascade(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserTofsenseCascade, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserTofsenseCascade::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/TofsenseFrame0 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserTofsenseFrame0.
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
pub fn publish_Ros1Nlink_parserTofsenseFrame0(
    owner: &Capability,
    value: &Ros1Nlink_parserTofsenseFrame0,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/TofsenseFrame0 message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserTofsenseFrame0.
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
pub fn poll_Ros1Nlink_parserTofsenseFrame0(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserTofsenseFrame0, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserTofsenseFrame0::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/TofsenseMFrame0 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Nlink_parserTofsenseMFrame0.
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
pub fn publish_Ros1Nlink_parserTofsenseMFrame0(
    owner: &Capability,
    value: &Ros1Nlink_parserTofsenseMFrame0,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/TofsenseMFrame0 message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserTofsenseMFrame0.
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
pub fn poll_Ros1Nlink_parserTofsenseMFrame0(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserTofsenseMFrame0, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserTofsenseMFrame0::decode(&output[..n])
}
/// @brief Publish one complete nlink_parser/TofsenseMFrame0Pixel message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Nlink_parserTofsenseMFrame0Pixel.
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
pub fn publish_Ros1Nlink_parserTofsenseMFrame0Pixel(
    owner: &Capability,
    value: &Ros1Nlink_parserTofsenseMFrame0Pixel,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete nlink_parser/TofsenseMFrame0Pixel message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Nlink_parserTofsenseMFrame0Pixel.
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
pub fn poll_Ros1Nlink_parserTofsenseMFrame0Pixel(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Nlink_parserTofsenseMFrame0Pixel, Error> {
    let n = owner.poll(output)?;
    Ros1Nlink_parserTofsenseMFrame0Pixel::decode(&output[..n])
}
/// @brief Publish one complete noitom_hi5_hand_udp_python/JoySticks message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Noitom_hi5_hand_udp_pythonJoySticks.
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
pub fn publish_Ros1Noitom_hi5_hand_udp_pythonJoySticks(
    owner: &Capability,
    value: &Ros1Noitom_hi5_hand_udp_pythonJoySticks,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete noitom_hi5_hand_udp_python/JoySticks message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Noitom_hi5_hand_udp_pythonJoySticks.
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
pub fn poll_Ros1Noitom_hi5_hand_udp_pythonJoySticks(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Noitom_hi5_hand_udp_pythonJoySticks, Error> {
    let n = owner.poll(output)?;
    Ros1Noitom_hi5_hand_udp_pythonJoySticks::decode(&output[..n])
}
/// @brief Publish one complete noitom_hi5_hand_udp_python/PoseInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Noitom_hi5_hand_udp_pythonPoseInfo.
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
pub fn publish_Ros1Noitom_hi5_hand_udp_pythonPoseInfo(
    owner: &Capability,
    value: &Ros1Noitom_hi5_hand_udp_pythonPoseInfo,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete noitom_hi5_hand_udp_python/PoseInfo message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Noitom_hi5_hand_udp_pythonPoseInfo.
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
pub fn poll_Ros1Noitom_hi5_hand_udp_pythonPoseInfo(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Noitom_hi5_hand_udp_pythonPoseInfo, Error> {
    let n = owner.poll(output)?;
    Ros1Noitom_hi5_hand_udp_pythonPoseInfo::decode(&output[..n])
}
/// @brief Publish one complete noitom_hi5_hand_udp_python/PoseInfoList message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Noitom_hi5_hand_udp_pythonPoseInfoList.
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
pub fn publish_Ros1Noitom_hi5_hand_udp_pythonPoseInfoList(
    owner: &Capability,
    value: &Ros1Noitom_hi5_hand_udp_pythonPoseInfoList,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete noitom_hi5_hand_udp_python/PoseInfoList message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Noitom_hi5_hand_udp_pythonPoseInfoList.
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
pub fn poll_Ros1Noitom_hi5_hand_udp_pythonPoseInfoList(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Noitom_hi5_hand_udp_pythonPoseInfoList, Error> {
    let n = owner.poll(output)?;
    Ros1Noitom_hi5_hand_udp_pythonPoseInfoList::decode(&output[..n])
}
/// @brief Publish one complete noitom_hi5_hand_udp_python/QuaternionArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Noitom_hi5_hand_udp_pythonQuaternionArray.
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
pub fn publish_Ros1Noitom_hi5_hand_udp_pythonQuaternionArray(
    owner: &Capability,
    value: &Ros1Noitom_hi5_hand_udp_pythonQuaternionArray,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete noitom_hi5_hand_udp_python/QuaternionArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Noitom_hi5_hand_udp_pythonQuaternionArray.
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
pub fn poll_Ros1Noitom_hi5_hand_udp_pythonQuaternionArray(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Noitom_hi5_hand_udp_pythonQuaternionArray, Error> {
    let n = owner.poll(output)?;
    Ros1Noitom_hi5_hand_udp_pythonQuaternionArray::decode(&output[..n])
}
/// @brief Publish one complete noitom_hi5_hand_udp_python/Vector4 message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Noitom_hi5_hand_udp_pythonVector4.
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
pub fn publish_Ros1Noitom_hi5_hand_udp_pythonVector4(
    owner: &Capability,
    value: &Ros1Noitom_hi5_hand_udp_pythonVector4,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete noitom_hi5_hand_udp_python/Vector4 message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Noitom_hi5_hand_udp_pythonVector4.
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
pub fn poll_Ros1Noitom_hi5_hand_udp_pythonVector4(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Noitom_hi5_hand_udp_pythonVector4, Error> {
    let n = owner.poll(output)?;
    Ros1Noitom_hi5_hand_udp_pythonVector4::decode(&output[..n])
}
/// @brief Publish one complete noitom_hi5_hand_udp_python/handRotation message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Noitom_hi5_hand_udp_pythonHandRotation.
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
pub fn publish_Ros1Noitom_hi5_hand_udp_pythonHandRotation(
    owner: &Capability,
    value: &Ros1Noitom_hi5_hand_udp_pythonHandRotation,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete noitom_hi5_hand_udp_python/handRotation message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Noitom_hi5_hand_udp_pythonHandRotation.
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
pub fn poll_Ros1Noitom_hi5_hand_udp_pythonHandRotation(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Noitom_hi5_hand_udp_pythonHandRotation, Error> {
    let n = owner.poll(output)?;
    Ros1Noitom_hi5_hand_udp_pythonHandRotation::decode(&output[..n])
}
/// @brief Publish one complete noitom_hi5_hand_udp_python/handRotationEular message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Noitom_hi5_hand_udp_pythonHandRotationEular.
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
pub fn publish_Ros1Noitom_hi5_hand_udp_pythonHandRotationEular(
    owner: &Capability,
    value: &Ros1Noitom_hi5_hand_udp_pythonHandRotationEular,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete noitom_hi5_hand_udp_python/handRotationEular message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Noitom_hi5_hand_udp_pythonHandRotationEular.
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
pub fn poll_Ros1Noitom_hi5_hand_udp_pythonHandRotationEular(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Noitom_hi5_hand_udp_pythonHandRotationEular, Error> {
    let n = owner.poll(output)?;
    Ros1Noitom_hi5_hand_udp_pythonHandRotationEular::decode(&output[..n])
}
/// @brief Publish one complete ocs2_msgs/constraint message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsConstraint.
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
pub fn publish_Ros1Ocs2_msgsConstraint(
    owner: &Capability,
    value: &Ros1Ocs2_msgsConstraint,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete ocs2_msgs/constraint message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsConstraint.
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
pub fn poll_Ros1Ocs2_msgsConstraint(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Ocs2_msgsConstraint, Error> {
    let n = owner.poll(output)?;
    Ros1Ocs2_msgsConstraint::decode(&output[..n])
}
/// @brief Publish one complete ocs2_msgs/controller_data message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsController_data.
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
pub fn publish_Ros1Ocs2_msgsController_data(
    owner: &Capability,
    value: &Ros1Ocs2_msgsController_data,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete ocs2_msgs/controller_data message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Ocs2_msgsController_data.
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
pub fn poll_Ros1Ocs2_msgsController_data(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Ocs2_msgsController_data, Error> {
    let n = owner.poll(output)?;
    Ros1Ocs2_msgsController_data::decode(&output[..n])
}
/// @brief Publish one complete ocs2_msgs/lagrangian_metrics message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsLagrangian_metrics.
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
pub fn publish_Ros1Ocs2_msgsLagrangian_metrics(
    owner: &Capability,
    value: &Ros1Ocs2_msgsLagrangian_metrics,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete ocs2_msgs/lagrangian_metrics message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Ocs2_msgsLagrangian_metrics.
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
pub fn poll_Ros1Ocs2_msgsLagrangian_metrics(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Ocs2_msgsLagrangian_metrics, Error> {
    let n = owner.poll(output)?;
    Ros1Ocs2_msgsLagrangian_metrics::decode(&output[..n])
}
/// @brief Publish one complete ocs2_msgs/mode_schedule message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMode_schedule.
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
pub fn publish_Ros1Ocs2_msgsMode_schedule(
    owner: &Capability,
    value: &Ros1Ocs2_msgsMode_schedule,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete ocs2_msgs/mode_schedule message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsMode_schedule.
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
pub fn poll_Ros1Ocs2_msgsMode_schedule(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Ocs2_msgsMode_schedule, Error> {
    let n = owner.poll(output)?;
    Ros1Ocs2_msgsMode_schedule::decode(&output[..n])
}
/// @brief Publish one complete ocs2_msgs/mpc_flattened_controller message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Ocs2_msgsMpc_flattened_controller.
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
pub fn publish_Ros1Ocs2_msgsMpc_flattened_controller(
    owner: &Capability,
    value: &Ros1Ocs2_msgsMpc_flattened_controller,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete ocs2_msgs/mpc_flattened_controller message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Ocs2_msgsMpc_flattened_controller.
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
pub fn poll_Ros1Ocs2_msgsMpc_flattened_controller(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Ocs2_msgsMpc_flattened_controller, Error> {
    let n = owner.poll(output)?;
    Ros1Ocs2_msgsMpc_flattened_controller::decode(&output[..n])
}
/// @brief Publish one complete ocs2_msgs/mpc_input message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMpc_input.
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
pub fn publish_Ros1Ocs2_msgsMpc_input(
    owner: &Capability,
    value: &Ros1Ocs2_msgsMpc_input,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete ocs2_msgs/mpc_input message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsMpc_input.
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
pub fn poll_Ros1Ocs2_msgsMpc_input(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Ocs2_msgsMpc_input, Error> {
    let n = owner.poll(output)?;
    Ros1Ocs2_msgsMpc_input::decode(&output[..n])
}
/// @brief Publish one complete ocs2_msgs/mpc_observation message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMpc_observation.
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
pub fn publish_Ros1Ocs2_msgsMpc_observation(
    owner: &Capability,
    value: &Ros1Ocs2_msgsMpc_observation,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete ocs2_msgs/mpc_observation message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Ocs2_msgsMpc_observation.
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
pub fn poll_Ros1Ocs2_msgsMpc_observation(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Ocs2_msgsMpc_observation, Error> {
    let n = owner.poll(output)?;
    Ros1Ocs2_msgsMpc_observation::decode(&output[..n])
}
/// @brief Publish one complete ocs2_msgs/mpc_performance_indices message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Ocs2_msgsMpc_performance_indices.
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
pub fn publish_Ros1Ocs2_msgsMpc_performance_indices(
    owner: &Capability,
    value: &Ros1Ocs2_msgsMpc_performance_indices,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete ocs2_msgs/mpc_performance_indices message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Ocs2_msgsMpc_performance_indices.
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
pub fn poll_Ros1Ocs2_msgsMpc_performance_indices(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Ocs2_msgsMpc_performance_indices, Error> {
    let n = owner.poll(output)?;
    Ros1Ocs2_msgsMpc_performance_indices::decode(&output[..n])
}
/// @brief Publish one complete ocs2_msgs/mpc_solver_data message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMpc_solver_data.
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
pub fn publish_Ros1Ocs2_msgsMpc_solver_data(
    owner: &Capability,
    value: &Ros1Ocs2_msgsMpc_solver_data,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete ocs2_msgs/mpc_solver_data message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Ocs2_msgsMpc_solver_data.
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
pub fn poll_Ros1Ocs2_msgsMpc_solver_data(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Ocs2_msgsMpc_solver_data, Error> {
    let n = owner.poll(output)?;
    Ros1Ocs2_msgsMpc_solver_data::decode(&output[..n])
}
/// @brief Publish one complete ocs2_msgs/mpc_state message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMpc_state.
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
pub fn publish_Ros1Ocs2_msgsMpc_state(
    owner: &Capability,
    value: &Ros1Ocs2_msgsMpc_state,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete ocs2_msgs/mpc_state message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsMpc_state.
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
pub fn poll_Ros1Ocs2_msgsMpc_state(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Ocs2_msgsMpc_state, Error> {
    let n = owner.poll(output)?;
    Ros1Ocs2_msgsMpc_state::decode(&output[..n])
}
/// @brief Publish one complete ocs2_msgs/mpc_target_trajectories message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Ocs2_msgsMpc_target_trajectories.
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
pub fn publish_Ros1Ocs2_msgsMpc_target_trajectories(
    owner: &Capability,
    value: &Ros1Ocs2_msgsMpc_target_trajectories,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete ocs2_msgs/mpc_target_trajectories message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Ocs2_msgsMpc_target_trajectories.
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
pub fn poll_Ros1Ocs2_msgsMpc_target_trajectories(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Ocs2_msgsMpc_target_trajectories, Error> {
    let n = owner.poll(output)?;
    Ros1Ocs2_msgsMpc_target_trajectories::decode(&output[..n])
}
/// @brief Publish one complete ocs2_msgs/multiplier message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Ocs2_msgsMultiplier.
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
pub fn publish_Ros1Ocs2_msgsMultiplier(
    owner: &Capability,
    value: &Ros1Ocs2_msgsMultiplier,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete ocs2_msgs/multiplier message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1Ocs2_msgsMultiplier.
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
pub fn poll_Ros1Ocs2_msgsMultiplier(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Ocs2_msgsMultiplier, Error> {
    let n = owner.poll(output)?;
    Ros1Ocs2_msgsMultiplier::decode(&output[..n])
}
/// @brief Call the selected ocs2_msgs/pause_resume service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Ocs2_msgsPause_resumeRequest, response=Ros1Ocs2_msgsPause_resumeResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Ocs2_msgsPause_resume(
    owner: &Capability,
    value: &Ros1Ocs2_msgsPause_resumeRequest,
    output: &mut [u8],
) -> Result<Ros1Ocs2_msgsPause_resumeResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Ocs2_msgsPause_resumeResponse::decode(&output[..n])
}
/// @brief Call the selected ocs2_msgs/reset service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Ocs2_msgsResetRequest, response=Ros1Ocs2_msgsResetResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Ocs2_msgsReset(
    owner: &Capability,
    value: &Ros1Ocs2_msgsResetRequest,
    output: &mut [u8],
) -> Result<Ros1Ocs2_msgsResetResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Ocs2_msgsResetResponse::decode(&output[..n])
}
/// @brief Publish one complete ocs2_switched_model_msgs/gait message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Ocs2_switched_model_msgsGait.
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
pub fn publish_Ros1Ocs2_switched_model_msgsGait(
    owner: &Capability,
    value: &Ros1Ocs2_switched_model_msgsGait,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete ocs2_switched_model_msgs/gait message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Ocs2_switched_model_msgsGait.
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
pub fn poll_Ros1Ocs2_switched_model_msgsGait(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Ocs2_switched_model_msgsGait, Error> {
    let n = owner.poll(output)?;
    Ros1Ocs2_switched_model_msgsGait::decode(&output[..n])
}
/// @brief Publish one complete ocs2_switched_model_msgs/gait_sequence message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Ocs2_switched_model_msgsGait_sequence.
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
pub fn publish_Ros1Ocs2_switched_model_msgsGait_sequence(
    owner: &Capability,
    value: &Ros1Ocs2_switched_model_msgsGait_sequence,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete ocs2_switched_model_msgs/gait_sequence message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Ocs2_switched_model_msgsGait_sequence.
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
pub fn poll_Ros1Ocs2_switched_model_msgsGait_sequence(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Ocs2_switched_model_msgsGait_sequence, Error> {
    let n = owner.poll(output)?;
    Ros1Ocs2_switched_model_msgsGait_sequence::decode(&output[..n])
}
/// @brief Publish one complete ocs2_switched_model_msgs/scheduled_gait_sequence message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Ocs2_switched_model_msgsScheduled_gait_sequence.
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
pub fn publish_Ros1Ocs2_switched_model_msgsScheduled_gait_sequence(
    owner: &Capability,
    value: &Ros1Ocs2_switched_model_msgsScheduled_gait_sequence,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete ocs2_switched_model_msgs/scheduled_gait_sequence message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Ocs2_switched_model_msgsScheduled_gait_sequence.
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
pub fn poll_Ros1Ocs2_switched_model_msgsScheduled_gait_sequence(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Ocs2_switched_model_msgsScheduled_gait_sequence, Error> {
    let n = owner.poll(output)?;
    Ros1Ocs2_switched_model_msgsScheduled_gait_sequence::decode(&output[..n])
}
/// @brief Call the selected ocs2_switched_model_msgs/trajectory_request service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Ocs2_switched_model_msgsTrajectory_requestRequest,
/// response=Ros1Ocs2_switched_model_msgsTrajectory_requestResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Ocs2_switched_model_msgsTrajectory_request(
    owner: &Capability,
    value: &Ros1Ocs2_switched_model_msgsTrajectory_requestRequest,
    output: &mut [u8],
) -> Result<Ros1Ocs2_switched_model_msgsTrajectory_requestResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Ocs2_switched_model_msgsTrajectory_requestResponse::decode(&output[..n])
}
/// @brief Publish one complete robot_calibration_msgs/CalibrationData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Robot_calibration_msgsCalibrationData.
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
pub fn publish_Ros1Robot_calibration_msgsCalibrationData(
    owner: &Capability,
    value: &Ros1Robot_calibration_msgsCalibrationData,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete robot_calibration_msgs/CalibrationData message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Robot_calibration_msgsCalibrationData.
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
pub fn poll_Ros1Robot_calibration_msgsCalibrationData(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Robot_calibration_msgsCalibrationData, Error> {
    let n = owner.poll(output)?;
    Ros1Robot_calibration_msgsCalibrationData::decode(&output[..n])
}
/// @brief Publish one complete robot_calibration_msgs/CameraParameter message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Robot_calibration_msgsCameraParameter.
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
pub fn publish_Ros1Robot_calibration_msgsCameraParameter(
    owner: &Capability,
    value: &Ros1Robot_calibration_msgsCameraParameter,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete robot_calibration_msgs/CameraParameter message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Robot_calibration_msgsCameraParameter.
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
pub fn poll_Ros1Robot_calibration_msgsCameraParameter(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Robot_calibration_msgsCameraParameter, Error> {
    let n = owner.poll(output)?;
    Ros1Robot_calibration_msgsCameraParameter::decode(&output[..n])
}
/// @brief Publish one complete robot_calibration_msgs/CaptureConfig message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Robot_calibration_msgsCaptureConfig.
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
pub fn publish_Ros1Robot_calibration_msgsCaptureConfig(
    owner: &Capability,
    value: &Ros1Robot_calibration_msgsCaptureConfig,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete robot_calibration_msgs/CaptureConfig message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Robot_calibration_msgsCaptureConfig.
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
pub fn poll_Ros1Robot_calibration_msgsCaptureConfig(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Robot_calibration_msgsCaptureConfig, Error> {
    let n = owner.poll(output)?;
    Ros1Robot_calibration_msgsCaptureConfig::decode(&output[..n])
}
/// @brief Publish one complete robot_calibration_msgs/ExtendedCameraInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Robot_calibration_msgsExtendedCameraInfo.
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
pub fn publish_Ros1Robot_calibration_msgsExtendedCameraInfo(
    owner: &Capability,
    value: &Ros1Robot_calibration_msgsExtendedCameraInfo,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete robot_calibration_msgs/ExtendedCameraInfo message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Robot_calibration_msgsExtendedCameraInfo.
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
pub fn poll_Ros1Robot_calibration_msgsExtendedCameraInfo(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Robot_calibration_msgsExtendedCameraInfo, Error> {
    let n = owner.poll(output)?;
    Ros1Robot_calibration_msgsExtendedCameraInfo::decode(&output[..n])
}
/// @brief Submit a complete robot_calibration_msgs/GripperLedCommand Action goal.
/// @details Validate and encode the entire goal before admission. Return its exact nonzero u64 ownership ID;
/// admission is distinct from acceptance, feedback, cancellation and terminal completion. Components:
/// goal=Ros1Robot_calibration_msgsGripperLedCommandGoal, result=Ros1Robot_calibration_msgsGripperLedCommandResult,
/// feedback=Ros1Robot_calibration_msgsGripperLedCommandFeedback.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] o Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] q Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.
/// @permissions The live same-Instance/backend owner must already carry this exact interface, operation, direction,
/// quota and trusted deadline grant. Source generation grants none.
/// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
/// errors; publish no successful typed value after a failed decode.
/// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
/// additionally borrow the documented decode storage.
/// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
/// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
/// @see share/platform/ros/rs/API-CONTRACT.md
pub fn send_Ros1Robot_calibration_msgsGripperLedCommand(
    o: &Capability,
    q: &Ros1Robot_calibration_msgsGripperLedCommandGoal,
) -> Result<u64, Error> {
    let mut b = [0u8; 8];
    let n = o.request(Operation::ActionSendGoal, &q.encode()?, &mut b)?;
    if n != 8 {
        return Err(Error::new(codes::INVALID));
    }
    let id = u64::from_le_bytes(b);
    if id == 0 {
        return Err(Error::new(codes::INVALID));
    }
    Ok(id)
}
/// @brief Publish one complete robot_calibration_msgs/Observation message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Robot_calibration_msgsObservation.
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
pub fn publish_Ros1Robot_calibration_msgsObservation(
    owner: &Capability,
    value: &Ros1Robot_calibration_msgsObservation,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete robot_calibration_msgs/Observation message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Robot_calibration_msgsObservation.
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
pub fn poll_Ros1Robot_calibration_msgsObservation(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Robot_calibration_msgsObservation, Error> {
    let n = owner.poll(output)?;
    Ros1Robot_calibration_msgsObservation::decode(&output[..n])
}
/// @brief Call the selected robot_localization/FromLL service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Robot_localizationFromLLRequest, response=Ros1Robot_localizationFromLLResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Robot_localizationFromLL(
    owner: &Capability,
    value: &Ros1Robot_localizationFromLLRequest,
    output: &mut [u8],
) -> Result<Ros1Robot_localizationFromLLResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Robot_localizationFromLLResponse::decode(&output[..n])
}
/// @brief Call the selected robot_localization/GetState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Robot_localizationGetStateRequest, response=Ros1Robot_localizationGetStateResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Robot_localizationGetState(
    owner: &Capability,
    value: &Ros1Robot_localizationGetStateRequest,
    output: &mut [u8],
) -> Result<Ros1Robot_localizationGetStateResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Robot_localizationGetStateResponse::decode(&output[..n])
}
/// @brief Call the selected robot_localization/SetDatum service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Robot_localizationSetDatumRequest, response=Ros1Robot_localizationSetDatumResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Robot_localizationSetDatum(
    owner: &Capability,
    value: &Ros1Robot_localizationSetDatumRequest,
    output: &mut [u8],
) -> Result<Ros1Robot_localizationSetDatumResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Robot_localizationSetDatumResponse::decode(&output[..n])
}
/// @brief Call the selected robot_localization/SetPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Robot_localizationSetPoseRequest, response=Ros1Robot_localizationSetPoseResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Robot_localizationSetPose(
    owner: &Capability,
    value: &Ros1Robot_localizationSetPoseRequest,
    output: &mut [u8],
) -> Result<Ros1Robot_localizationSetPoseResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Robot_localizationSetPoseResponse::decode(&output[..n])
}
/// @brief Call the selected robot_localization/SetUTMZone service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Robot_localizationSetUTMZoneRequest, response=Ros1Robot_localizationSetUTMZoneResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Robot_localizationSetUTMZone(
    owner: &Capability,
    value: &Ros1Robot_localizationSetUTMZoneRequest,
    output: &mut [u8],
) -> Result<Ros1Robot_localizationSetUTMZoneResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Robot_localizationSetUTMZoneResponse::decode(&output[..n])
}
/// @brief Call the selected robot_localization/ToLL service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Robot_localizationToLLRequest, response=Ros1Robot_localizationToLLResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Robot_localizationToLL(
    owner: &Capability,
    value: &Ros1Robot_localizationToLLRequest,
    output: &mut [u8],
) -> Result<Ros1Robot_localizationToLLResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Robot_localizationToLLResponse::decode(&output[..n])
}
/// @brief Call the selected robot_localization/ToggleFilterProcessing service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Robot_localizationToggleFilterProcessingRequest,
/// response=Ros1Robot_localizationToggleFilterProcessingResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Robot_localizationToggleFilterProcessing(
    owner: &Capability,
    value: &Ros1Robot_localizationToggleFilterProcessingRequest,
    output: &mut [u8],
) -> Result<Ros1Robot_localizationToggleFilterProcessingResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Robot_localizationToggleFilterProcessingResponse::decode(&output[..n])
}
/// @brief Call the selected taiji_trigger_node/PerformTaiji service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Taiji_trigger_nodePerformTaijiRequest,
/// response=Ros1Taiji_trigger_nodePerformTaijiResponse.
/// @return The typed operation result on success; language error/status on refusal.
/// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
/// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
/// encoding.
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
pub fn call_Ros1Taiji_trigger_nodePerformTaiji(
    owner: &Capability,
    value: &Ros1Taiji_trigger_nodePerformTaijiRequest,
    output: &mut [u8],
) -> Result<Ros1Taiji_trigger_nodePerformTaijiResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Taiji_trigger_nodePerformTaijiResponse::decode(&output[..n])
}
/// @brief Publish one complete user_pkg/piddebug message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1User_pkgPiddebug.
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
pub fn publish_Ros1User_pkgPiddebug(
    owner: &Capability,
    value: &Ros1User_pkgPiddebug,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete user_pkg/piddebug message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1User_pkgPiddebug.
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
pub fn poll_Ros1User_pkgPiddebug(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1User_pkgPiddebug, Error> {
    let n = owner.poll(output)?;
    Ros1User_pkgPiddebug::decode(&output[..n])
}
/// @brief Publish one complete user_pkg/uwbdebug message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1User_pkgUwbdebug.
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
pub fn publish_Ros1User_pkgUwbdebug(
    owner: &Capability,
    value: &Ros1User_pkgUwbdebug,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete user_pkg/uwbdebug message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1User_pkgUwbdebug.
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
pub fn poll_Ros1User_pkgUwbdebug(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1User_pkgUwbdebug, Error> {
    let n = owner.poll(output)?;
    Ros1User_pkgUwbdebug::decode(&output[..n])
}
/// @brief Publish one complete wiimote/IrSourceInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1WiimoteIrSourceInfo.
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
pub fn publish_Ros1WiimoteIrSourceInfo(
    owner: &Capability,
    value: &Ros1WiimoteIrSourceInfo,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete wiimote/IrSourceInfo message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1WiimoteIrSourceInfo.
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
pub fn poll_Ros1WiimoteIrSourceInfo(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1WiimoteIrSourceInfo, Error> {
    let n = owner.poll(output)?;
    Ros1WiimoteIrSourceInfo::decode(&output[..n])
}
/// @brief Publish one complete wiimote/State message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1WiimoteState.
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
pub fn publish_Ros1WiimoteState(owner: &Capability, value: &Ros1WiimoteState) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete wiimote/State message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1WiimoteState.
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
pub fn poll_Ros1WiimoteState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1WiimoteState, Error> {
    let n = owner.poll(output)?;
    Ros1WiimoteState::decode(&output[..n])
}
/// @brief Publish one complete wiimote/TimedSwitch message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1WiimoteTimedSwitch.
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
pub fn publish_Ros1WiimoteTimedSwitch(
    owner: &Capability,
    value: &Ros1WiimoteTimedSwitch,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete wiimote/TimedSwitch message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros1WiimoteTimedSwitch.
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
pub fn poll_Ros1WiimoteTimedSwitch(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1WiimoteTimedSwitch, Error> {
    let n = owner.poll(output)?;
    Ros1WiimoteTimedSwitch::decode(&output[..n])
}
