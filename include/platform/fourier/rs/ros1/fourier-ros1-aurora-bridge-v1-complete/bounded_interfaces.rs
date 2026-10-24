// @file bounded_interfaces.rs
// @brief Full fourier rs codecs and original record metadata.
// @details Complete fourier ros1_aurora_bridge_v1 values in rs. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
//! Generated typed interfaces; every Owner/role must already be granted.
extern crate alloc;
use super::bounded_records::*;
use roswasm::typed::Canonical;
use roswasm::{codes, Capability, Error, Operation};
/// @brief Call the selected uwvm_fourier_bridge/ExecuteMove service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeExecuteMoveRequest,
/// response=Ros1Uwvm_fourier_bridgeExecuteMoveResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeExecuteMove(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeExecuteMoveRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeExecuteMoveResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeExecuteMoveResponse::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/GetBaseData service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetBaseDataRequest,
/// response=Ros1Uwvm_fourier_bridgeGetBaseDataResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetBaseData(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeGetBaseDataRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeGetBaseDataResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeGetBaseDataResponse::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/GetCartesianState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetCartesianStateRequest,
/// response=Ros1Uwvm_fourier_bridgeGetCartesianStateResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetCartesianState(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeGetCartesianStateRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeGetCartesianStateResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeGetCartesianStateResponse::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/GetContactData service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetContactDataRequest,
/// response=Ros1Uwvm_fourier_bridgeGetContactDataResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetContactData(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeGetContactDataRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeGetContactDataResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeGetContactDataResponse::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/GetFsmName service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetFsmNameRequest,
/// response=Ros1Uwvm_fourier_bridgeGetFsmNameResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetFsmName(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeGetFsmNameRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeGetFsmNameResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeGetFsmNameResponse::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/GetFsmState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetFsmStateRequest,
/// response=Ros1Uwvm_fourier_bridgeGetFsmStateResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetFsmState(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeGetFsmStateRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeGetFsmStateResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeGetFsmStateResponse::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/GetGroupMotionState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest,
/// response=Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetGroupMotionState(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/GetGroupMotorCfg service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest,
/// response=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetGroupMotorCfg(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/GetGroupState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetGroupStateRequest,
/// response=Ros1Uwvm_fourier_bridgeGetGroupStateResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetGroupState(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeGetGroupStateRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeGetGroupStateResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeGetGroupStateResponse::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/GetSnapshot service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetSnapshotRequest,
/// response=Ros1Uwvm_fourier_bridgeGetSnapshotResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetSnapshot(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeGetSnapshotRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeGetSnapshotResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeGetSnapshotResponse::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/GetStandPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetStandPoseRequest,
/// response=Ros1Uwvm_fourier_bridgeGetStandPoseResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetStandPose(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeGetStandPoseRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeGetStandPoseResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeGetStandPoseResponse::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/GetUpperFsmName service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest,
/// response=Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetUpperFsmName(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/GetUpperFsmState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest,
/// response=Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetUpperFsmState(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/GetVelocitySource service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest,
/// response=Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetVelocitySource(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/GetVelocitySourceName service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest,
/// response=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeGetVelocitySourceName(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse::decode(&output[..n])
}
/// @brief Publish one complete uwvm_fourier_bridge/GroupState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Uwvm_fourier_bridgeGroupState.
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
pub fn publish_Ros1Uwvm_fourier_bridgeGroupState(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeGroupState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete uwvm_fourier_bridge/GroupState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Uwvm_fourier_bridgeGroupState.
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
pub fn poll_Ros1Uwvm_fourier_bridgeGroupState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeGroupState, Error> {
    let n = owner.poll(output)?;
    Ros1Uwvm_fourier_bridgeGroupState::decode(&output[..n])
}
/// @brief Publish one complete uwvm_fourier_bridge/GroupValues message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Uwvm_fourier_bridgeGroupValues.
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
pub fn publish_Ros1Uwvm_fourier_bridgeGroupValues(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeGroupValues,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete uwvm_fourier_bridge/GroupValues message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Uwvm_fourier_bridgeGroupValues.
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
pub fn poll_Ros1Uwvm_fourier_bridgeGroupValues(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeGroupValues, Error> {
    let n = owner.poll(output)?;
    Ros1Uwvm_fourier_bridgeGroupValues::decode(&output[..n])
}
/// @brief Publish one complete uwvm_fourier_bridge/MotionRecipe message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Uwvm_fourier_bridgeMotionRecipe.
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
pub fn publish_Ros1Uwvm_fourier_bridgeMotionRecipe(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeMotionRecipe,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete uwvm_fourier_bridge/MotionRecipe message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Uwvm_fourier_bridgeMotionRecipe.
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
pub fn poll_Ros1Uwvm_fourier_bridgeMotionRecipe(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeMotionRecipe, Error> {
    let n = owner.poll(output)?;
    Ros1Uwvm_fourier_bridgeMotionRecipe::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/SetFsmState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeSetFsmStateRequest,
/// response=Ros1Uwvm_fourier_bridgeSetFsmStateResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeSetFsmState(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeSetFsmStateRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeSetFsmStateResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeSetFsmStateResponse::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/SetGroupCommand service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeSetGroupCommandRequest,
/// response=Ros1Uwvm_fourier_bridgeSetGroupCommandResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeSetGroupCommand(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeSetGroupCommandRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeSetGroupCommandResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeSetGroupCommandResponse::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/SetMotorCfgPd service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest,
/// response=Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeSetMotorCfgPd(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/SetStandPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeSetStandPoseRequest,
/// response=Ros1Uwvm_fourier_bridgeSetStandPoseResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeSetStandPose(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeSetStandPoseRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeSetStandPoseResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeSetStandPoseResponse::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/SetUpperFsmState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest,
/// response=Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeSetUpperFsmState(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/SetVelocity service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeSetVelocityRequest,
/// response=Ros1Uwvm_fourier_bridgeSetVelocityResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeSetVelocity(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeSetVelocityRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeSetVelocityResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeSetVelocityResponse::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/SetVelocitySource service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest,
/// response=Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeSetVelocitySource(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse::decode(&output[..n])
}
/// @brief Publish one complete uwvm_fourier_bridge/Status message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros1Uwvm_fourier_bridgeStatus.
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
pub fn publish_Ros1Uwvm_fourier_bridgeStatus(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeStatus,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete uwvm_fourier_bridge/Status message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Uwvm_fourier_bridgeStatus.
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
pub fn poll_Ros1Uwvm_fourier_bridgeStatus(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeStatus, Error> {
    let n = owner.poll(output)?;
    Ros1Uwvm_fourier_bridgeStatus::decode(&output[..n])
}
/// @brief Publish one complete uwvm_fourier_bridge/VelocityCommand message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros1Uwvm_fourier_bridgeVelocityCommand.
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
pub fn publish_Ros1Uwvm_fourier_bridgeVelocityCommand(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeVelocityCommand,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete uwvm_fourier_bridge/VelocityCommand message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros1Uwvm_fourier_bridgeVelocityCommand.
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
pub fn poll_Ros1Uwvm_fourier_bridgeVelocityCommand(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeVelocityCommand, Error> {
    let n = owner.poll(output)?;
    Ros1Uwvm_fourier_bridgeVelocityCommand::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/WaitGroupsMotionComplete service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest,
/// response=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse.
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
pub fn call_Ros1Uwvm_fourier_bridgeWaitGroupsMotionComplete(
    owner: &Capability,
    value: &Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest,
    output: &mut [u8],
) -> Result<Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse::decode(&output[..n])
}
