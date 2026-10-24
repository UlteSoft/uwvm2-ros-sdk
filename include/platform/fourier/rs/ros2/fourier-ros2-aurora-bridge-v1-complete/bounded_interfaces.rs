// @file bounded_interfaces.rs
// @brief Full fourier rs codecs and original record metadata.
// @details Complete fourier ros2_aurora_bridge_v1 values in rs. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
//! Generated typed interfaces; every Owner/role must already be granted.
extern crate alloc;
use super::bounded_records::*;
use roswasm::typed::Canonical;
use roswasm::{codes, Capability, Error, Operation};
/// @brief Publish one complete uwvm_fourier_bridge/msg/GroupState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Uwvm_fourier_bridgeMsgGroupState.
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
pub fn publish_Ros2Uwvm_fourier_bridgeMsgGroupState(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeMsgGroupState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete uwvm_fourier_bridge/msg/GroupState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Uwvm_fourier_bridgeMsgGroupState.
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
pub fn poll_Ros2Uwvm_fourier_bridgeMsgGroupState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeMsgGroupState, Error> {
    let n = owner.poll(output)?;
    Ros2Uwvm_fourier_bridgeMsgGroupState::decode(&output[..n])
}
/// @brief Publish one complete uwvm_fourier_bridge/msg/GroupValues message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Uwvm_fourier_bridgeMsgGroupValues.
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
pub fn publish_Ros2Uwvm_fourier_bridgeMsgGroupValues(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeMsgGroupValues,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete uwvm_fourier_bridge/msg/GroupValues message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Uwvm_fourier_bridgeMsgGroupValues.
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
pub fn poll_Ros2Uwvm_fourier_bridgeMsgGroupValues(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeMsgGroupValues, Error> {
    let n = owner.poll(output)?;
    Ros2Uwvm_fourier_bridgeMsgGroupValues::decode(&output[..n])
}
/// @brief Publish one complete uwvm_fourier_bridge/msg/MotionRecipe message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Uwvm_fourier_bridgeMsgMotionRecipe.
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
pub fn publish_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeMsgMotionRecipe,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete uwvm_fourier_bridge/msg/MotionRecipe message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Uwvm_fourier_bridgeMsgMotionRecipe.
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
pub fn poll_Ros2Uwvm_fourier_bridgeMsgMotionRecipe(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeMsgMotionRecipe, Error> {
    let n = owner.poll(output)?;
    Ros2Uwvm_fourier_bridgeMsgMotionRecipe::decode(&output[..n])
}
/// @brief Publish one complete uwvm_fourier_bridge/msg/Status message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Uwvm_fourier_bridgeMsgStatus.
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
pub fn publish_Ros2Uwvm_fourier_bridgeMsgStatus(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeMsgStatus,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete uwvm_fourier_bridge/msg/Status message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Uwvm_fourier_bridgeMsgStatus.
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
pub fn poll_Ros2Uwvm_fourier_bridgeMsgStatus(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeMsgStatus, Error> {
    let n = owner.poll(output)?;
    Ros2Uwvm_fourier_bridgeMsgStatus::decode(&output[..n])
}
/// @brief Publish one complete uwvm_fourier_bridge/msg/VelocityCommand message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Uwvm_fourier_bridgeMsgVelocityCommand.
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
pub fn publish_Ros2Uwvm_fourier_bridgeMsgVelocityCommand(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeMsgVelocityCommand,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete uwvm_fourier_bridge/msg/VelocityCommand message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Uwvm_fourier_bridgeMsgVelocityCommand.
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
pub fn poll_Ros2Uwvm_fourier_bridgeMsgVelocityCommand(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeMsgVelocityCommand, Error> {
    let n = owner.poll(output)?;
    Ros2Uwvm_fourier_bridgeMsgVelocityCommand::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/ExecuteMove service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvExecuteMove(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetBaseData service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetBaseData(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetCartesianState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetCartesianState(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetContactData service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetContactData_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetContactData_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetContactData(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvGetContactData_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvGetContactData_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvGetContactData_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetFsmName service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetFsmName(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetFsmState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetFsmState(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetGroupMotionState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetGroupMotorCfg service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetGroupState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetGroupState(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetSnapshot service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetSnapshot(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetStandPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetStandPose(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetUpperFsmName service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetUpperFsmState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetVelocitySource service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetVelocitySource(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/GetVelocitySourceName service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/SetFsmState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvSetFsmState(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/SetGroupCommand service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvSetGroupCommand(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/SetMotorCfgPd service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/SetStandPose service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvSetStandPose(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/SetUpperFsmState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/SetVelocity service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvSetVelocity(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/SetVelocitySource service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvSetVelocitySource(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response::decode(&output[..n])
}
/// @brief Call the selected uwvm_fourier_bridge/srv/WaitGroupsMotionComplete service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response.
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
pub fn call_Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete(
    owner: &Capability,
    value: &Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request,
    output: &mut [u8],
) -> Result<Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response::decode(&output[..n])
}
