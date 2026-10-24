// @file bounded_interfaces.rs
// @brief Full agibot rs codecs and original record metadata.
// @details Complete agibot ros2_sdk_v1_1_0_main values in rs. 166 original records retain 552 fields and 133
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/agibot/en_US/catalog/.
//! Generated typed interfaces; every Owner/role must already be granted.
extern crate alloc;
use super::bounded_records::*;
use roswasm::typed::Canonical;
use roswasm::{codes, Capability, Error, Operation};
/// @brief Publish one complete aimdk_msgs/msg/AgentProperties message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAgentProperties.
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
pub fn publish_Ros2Aimdk_msgsMsgAgentProperties(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgAgentProperties,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AgentProperties message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgAgentProperties.
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
pub fn poll_Ros2Aimdk_msgsMsgAgentProperties(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgAgentProperties, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgAgentProperties::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/AgentPropertiesValue message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgAgentPropertiesValue.
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
pub fn publish_Ros2Aimdk_msgsMsgAgentPropertiesValue(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgAgentPropertiesValue,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AgentPropertiesValue message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgAgentPropertiesValue.
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
pub fn poll_Ros2Aimdk_msgsMsgAgentPropertiesValue(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgAgentPropertiesValue, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgAgentPropertiesValue::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/AgentPropertyIdType message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgAgentPropertyIdType.
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
pub fn publish_Ros2Aimdk_msgsMsgAgentPropertyIdType(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgAgentPropertyIdType,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AgentPropertyIdType message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgAgentPropertyIdType.
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
pub fn poll_Ros2Aimdk_msgsMsgAgentPropertyIdType(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgAgentPropertyIdType, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgAgentPropertyIdType::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/AlertCode message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAlertCode.
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
pub fn publish_Ros2Aimdk_msgsMsgAlertCode(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgAlertCode,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AlertCode message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAlertCode.
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
pub fn poll_Ros2Aimdk_msgsMsgAlertCode(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgAlertCode, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgAlertCode::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/AlertCodeArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAlertCodeArray.
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
pub fn publish_Ros2Aimdk_msgsMsgAlertCodeArray(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgAlertCodeArray,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AlertCodeArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgAlertCodeArray.
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
pub fn poll_Ros2Aimdk_msgsMsgAlertCodeArray(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgAlertCodeArray, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgAlertCodeArray::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/AudioCapture message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioCapture.
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
pub fn publish_Ros2Aimdk_msgsMsgAudioCapture(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgAudioCapture,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AudioCapture message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgAudioCapture.
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
pub fn poll_Ros2Aimdk_msgsMsgAudioCapture(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgAudioCapture, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgAudioCapture::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/AudioData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioData.
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
pub fn publish_Ros2Aimdk_msgsMsgAudioData(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgAudioData,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AudioData message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAudioData.
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
pub fn poll_Ros2Aimdk_msgsMsgAudioData(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgAudioData, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgAudioData::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/AudioFile message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioFile.
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
pub fn publish_Ros2Aimdk_msgsMsgAudioFile(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgAudioFile,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AudioFile message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAudioFile.
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
pub fn poll_Ros2Aimdk_msgsMsgAudioFile(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgAudioFile, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgAudioFile::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/AudioInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioInfo.
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
pub fn publish_Ros2Aimdk_msgsMsgAudioInfo(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgAudioInfo,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AudioInfo message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgAudioInfo.
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
pub fn poll_Ros2Aimdk_msgsMsgAudioInfo(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgAudioInfo, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgAudioInfo::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/AudioPlayback message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioPlayback.
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
pub fn publish_Ros2Aimdk_msgsMsgAudioPlayback(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgAudioPlayback,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AudioPlayback message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgAudioPlayback.
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
pub fn poll_Ros2Aimdk_msgsMsgAudioPlayback(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgAudioPlayback, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgAudioPlayback::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/AudioVadStateType message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioVadStateType.
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
pub fn publish_Ros2Aimdk_msgsMsgAudioVadStateType(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgAudioVadStateType,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/AudioVadStateType message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgAudioVadStateType.
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
pub fn poll_Ros2Aimdk_msgsMsgAudioVadStateType(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgAudioVadStateType, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgAudioVadStateType::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/CommonRequest message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonRequest.
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
pub fn publish_Ros2Aimdk_msgsMsgCommonRequest(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgCommonRequest,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/CommonRequest message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgCommonRequest.
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
pub fn poll_Ros2Aimdk_msgsMsgCommonRequest(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgCommonRequest, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgCommonRequest::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/CommonResponse message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonResponse.
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
pub fn publish_Ros2Aimdk_msgsMsgCommonResponse(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgCommonResponse,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/CommonResponse message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgCommonResponse.
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
pub fn poll_Ros2Aimdk_msgsMsgCommonResponse(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgCommonResponse, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgCommonResponse::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/CommonState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonState.
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
pub fn publish_Ros2Aimdk_msgsMsgCommonState(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgCommonState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/CommonState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgCommonState.
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
pub fn poll_Ros2Aimdk_msgsMsgCommonState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgCommonState, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgCommonState::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/CommonTaskRequest message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonTaskRequest.
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
pub fn publish_Ros2Aimdk_msgsMsgCommonTaskRequest(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgCommonTaskRequest,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/CommonTaskRequest message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgCommonTaskRequest.
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
pub fn poll_Ros2Aimdk_msgsMsgCommonTaskRequest(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgCommonTaskRequest, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgCommonTaskRequest::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/CommonTaskResponse message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgCommonTaskResponse.
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
pub fn publish_Ros2Aimdk_msgsMsgCommonTaskResponse(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgCommonTaskResponse,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/CommonTaskResponse message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgCommonTaskResponse.
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
pub fn poll_Ros2Aimdk_msgsMsgCommonTaskResponse(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgCommonTaskResponse, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgCommonTaskResponse::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/CurrentVersion message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCurrentVersion.
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
pub fn publish_Ros2Aimdk_msgsMsgCurrentVersion(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgCurrentVersion,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/CurrentVersion message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgCurrentVersion.
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
pub fn poll_Ros2Aimdk_msgsMsgCurrentVersion(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgCurrentVersion, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgCurrentVersion::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/DiagnosticInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgDiagnosticInfo.
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
pub fn publish_Ros2Aimdk_msgsMsgDiagnosticInfo(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgDiagnosticInfo,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/DiagnosticInfo message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgDiagnosticInfo.
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
pub fn poll_Ros2Aimdk_msgsMsgDiagnosticInfo(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgDiagnosticInfo, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgDiagnosticInfo::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/DiagnosticInfoArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgDiagnosticInfoArray.
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
pub fn publish_Ros2Aimdk_msgsMsgDiagnosticInfoArray(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgDiagnosticInfoArray,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/DiagnosticInfoArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgDiagnosticInfoArray.
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
pub fn poll_Ros2Aimdk_msgsMsgDiagnosticInfoArray(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgDiagnosticInfoArray, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgDiagnosticInfoArray::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/DiagnosticType message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgDiagnosticType.
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
pub fn publish_Ros2Aimdk_msgsMsgDiagnosticType(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgDiagnosticType,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/DiagnosticType message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgDiagnosticType.
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
pub fn poll_Ros2Aimdk_msgsMsgDiagnosticType(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgDiagnosticType, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgDiagnosticType::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/DomainErrorState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgDomainErrorState.
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
pub fn publish_Ros2Aimdk_msgsMsgDomainErrorState(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgDomainErrorState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/DomainErrorState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgDomainErrorState.
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
pub fn poll_Ros2Aimdk_msgsMsgDomainErrorState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgDomainErrorState, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgDomainErrorState::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/FaceEmojiStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFaceEmojiStatus.
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
pub fn publish_Ros2Aimdk_msgsMsgFaceEmojiStatus(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgFaceEmojiStatus,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/FaceEmojiStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgFaceEmojiStatus.
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
pub fn poll_Ros2Aimdk_msgsMsgFaceEmojiStatus(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgFaceEmojiStatus, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgFaceEmojiStatus::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/FixLineIntroState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFixLineIntroState.
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
pub fn publish_Ros2Aimdk_msgsMsgFixLineIntroState(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgFixLineIntroState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/FixLineIntroState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgFixLineIntroState.
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
pub fn poll_Ros2Aimdk_msgsMsgFixLineIntroState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgFixLineIntroState, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgFixLineIntroState::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/FocusRequester message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFocusRequester.
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
pub fn publish_Ros2Aimdk_msgsMsgFocusRequester(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgFocusRequester,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/FocusRequester message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgFocusRequester.
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
pub fn poll_Ros2Aimdk_msgsMsgFocusRequester(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgFocusRequester, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgFocusRequester::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/FocusResponse message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFocusResponse.
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
pub fn publish_Ros2Aimdk_msgsMsgFocusResponse(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgFocusResponse,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/FocusResponse message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgFocusResponse.
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
pub fn poll_Ros2Aimdk_msgsMsgFocusResponse(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgFocusResponse, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgFocusResponse::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/HRPoint message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHRPoint.
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
pub fn publish_Ros2Aimdk_msgsMsgHRPoint(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgHRPoint,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/HRPoint message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHRPoint.
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
pub fn poll_Ros2Aimdk_msgsMsgHRPoint(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgHRPoint, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgHRPoint::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/HandCommand message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandCommand.
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
pub fn publish_Ros2Aimdk_msgsMsgHandCommand(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgHandCommand,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/HandCommand message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgHandCommand.
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
pub fn poll_Ros2Aimdk_msgsMsgHandCommand(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgHandCommand, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgHandCommand::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/HandCommandArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandCommandArray.
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
pub fn publish_Ros2Aimdk_msgsMsgHandCommandArray(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgHandCommandArray,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/HandCommandArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgHandCommandArray.
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
pub fn poll_Ros2Aimdk_msgsMsgHandCommandArray(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgHandCommandArray, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgHandCommandArray::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/HandState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandState.
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
pub fn publish_Ros2Aimdk_msgsMsgHandState(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgHandState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/HandState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHandState.
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
pub fn poll_Ros2Aimdk_msgsMsgHandState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgHandState, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgHandState::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/HandStateArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandStateArray.
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
pub fn publish_Ros2Aimdk_msgsMsgHandStateArray(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgHandStateArray,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/HandStateArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgHandStateArray.
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
pub fn poll_Ros2Aimdk_msgsMsgHandStateArray(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgHandStateArray, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgHandStateArray::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/HandTouchSensorData message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgHandTouchSensorData.
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
pub fn publish_Ros2Aimdk_msgsMsgHandTouchSensorData(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgHandTouchSensorData,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/HandTouchSensorData message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgHandTouchSensorData.
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
pub fn poll_Ros2Aimdk_msgsMsgHandTouchSensorData(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgHandTouchSensorData, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgHandTouchSensorData::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/HandType message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandType.
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
pub fn publish_Ros2Aimdk_msgsMsgHandType(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgHandType,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/HandType message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHandType.
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
pub fn poll_Ros2Aimdk_msgsMsgHandType(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgHandType, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgHandType::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/HdsEventQuery message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHdsEventQuery.
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
pub fn publish_Ros2Aimdk_msgsMsgHdsEventQuery(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgHdsEventQuery,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/HdsEventQuery message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgHdsEventQuery.
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
pub fn poll_Ros2Aimdk_msgsMsgHdsEventQuery(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgHdsEventQuery, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgHdsEventQuery::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/HdsEventRecord message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHdsEventRecord.
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
pub fn publish_Ros2Aimdk_msgsMsgHdsEventRecord(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgHdsEventRecord,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/HdsEventRecord message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgHdsEventRecord.
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
pub fn poll_Ros2Aimdk_msgsMsgHdsEventRecord(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgHdsEventRecord, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgHdsEventRecord::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/JointCommand message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointCommand.
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
pub fn publish_Ros2Aimdk_msgsMsgJointCommand(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgJointCommand,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/JointCommand message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgJointCommand.
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
pub fn poll_Ros2Aimdk_msgsMsgJointCommand(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgJointCommand, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgJointCommand::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/JointCommandArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointCommandArray.
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
pub fn publish_Ros2Aimdk_msgsMsgJointCommandArray(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgJointCommandArray,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/JointCommandArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgJointCommandArray.
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
pub fn poll_Ros2Aimdk_msgsMsgJointCommandArray(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgJointCommandArray, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgJointCommandArray::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/JointState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointState.
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
pub fn publish_Ros2Aimdk_msgsMsgJointState(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgJointState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/JointState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgJointState.
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
pub fn poll_Ros2Aimdk_msgsMsgJointState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgJointState, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgJointState::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/JointStateArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointStateArray.
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
pub fn publish_Ros2Aimdk_msgsMsgJointStateArray(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgJointStateArray,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/JointStateArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgJointStateArray.
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
pub fn poll_Ros2Aimdk_msgsMsgJointStateArray(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgJointStateArray, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgJointStateArray::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/McAction message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcAction.
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
pub fn publish_Ros2Aimdk_msgsMsgMcAction(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMcAction,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McAction message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcAction.
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
pub fn poll_Ros2Aimdk_msgsMsgMcAction(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMcAction, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMcAction::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/McActionCommand message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcActionCommand.
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
pub fn publish_Ros2Aimdk_msgsMsgMcActionCommand(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMcActionCommand,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McActionCommand message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcActionCommand.
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
pub fn poll_Ros2Aimdk_msgsMsgMcActionCommand(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMcActionCommand, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMcActionCommand::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/McActionInfo message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcActionInfo.
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
pub fn publish_Ros2Aimdk_msgsMsgMcActionInfo(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMcActionInfo,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McActionInfo message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcActionInfo.
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
pub fn poll_Ros2Aimdk_msgsMsgMcActionInfo(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMcActionInfo, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMcActionInfo::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/McActionStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcActionStatus.
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
pub fn publish_Ros2Aimdk_msgsMsgMcActionStatus(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMcActionStatus,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McActionStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcActionStatus.
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
pub fn poll_Ros2Aimdk_msgsMsgMcActionStatus(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMcActionStatus, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMcActionStatus::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/McBodyPoseStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcBodyPoseStatus.
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
pub fn publish_Ros2Aimdk_msgsMsgMcBodyPoseStatus(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMcBodyPoseStatus,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McBodyPoseStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcBodyPoseStatus.
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
pub fn poll_Ros2Aimdk_msgsMsgMcBodyPoseStatus(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMcBodyPoseStatus, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMcBodyPoseStatus::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/McCommonState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcCommonState.
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
pub fn publish_Ros2Aimdk_msgsMsgMcCommonState(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMcCommonState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McCommonState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcCommonState.
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
pub fn poll_Ros2Aimdk_msgsMsgMcCommonState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMcCommonState, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMcCommonState::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/McControlArea message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcControlArea.
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
pub fn publish_Ros2Aimdk_msgsMsgMcControlArea(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMcControlArea,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McControlArea message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcControlArea.
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
pub fn poll_Ros2Aimdk_msgsMsgMcControlArea(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMcControlArea, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMcControlArea::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/McFsmState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcFsmState.
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
pub fn publish_Ros2Aimdk_msgsMsgMcFsmState(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMcFsmState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McFsmState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcFsmState.
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
pub fn poll_Ros2Aimdk_msgsMsgMcFsmState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMcFsmState, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMcFsmState::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/McHandStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcHandStatus.
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
pub fn publish_Ros2Aimdk_msgsMsgMcHandStatus(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMcHandStatus,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McHandStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcHandStatus.
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
pub fn poll_Ros2Aimdk_msgsMsgMcHandStatus(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMcHandStatus, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMcHandStatus::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/McInputAction message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcInputAction.
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
pub fn publish_Ros2Aimdk_msgsMsgMcInputAction(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMcInputAction,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McInputAction message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcInputAction.
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
pub fn poll_Ros2Aimdk_msgsMsgMcInputAction(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMcInputAction, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMcInputAction::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/McInputSource message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcInputSource.
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
pub fn publish_Ros2Aimdk_msgsMsgMcInputSource(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMcInputSource,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McInputSource message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcInputSource.
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
pub fn poll_Ros2Aimdk_msgsMsgMcInputSource(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMcInputSource, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMcInputSource::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/McLocomotionSpeedBounds message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds.
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
pub fn publish_Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McLocomotionSpeedBounds message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds.
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
pub fn poll_Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/McLocomotionSpeedMode message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedMode.
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
pub fn publish_Ros2Aimdk_msgsMsgMcLocomotionSpeedMode(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMcLocomotionSpeedMode,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McLocomotionSpeedMode message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedMode.
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
pub fn poll_Ros2Aimdk_msgsMsgMcLocomotionSpeedMode(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMcLocomotionSpeedMode, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMcLocomotionSpeedMode::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/McLocomotionSpeedStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.
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
pub fn publish_Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McLocomotionSpeedStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.
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
pub fn poll_Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/McLocomotionVelocity message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgMcLocomotionVelocity.
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
pub fn publish_Ros2Aimdk_msgsMsgMcLocomotionVelocity(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMcLocomotionVelocity,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McLocomotionVelocity message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcLocomotionVelocity.
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
pub fn poll_Ros2Aimdk_msgsMsgMcLocomotionVelocity(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMcLocomotionVelocity, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMcLocomotionVelocity::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/McMotionStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcMotionStatus.
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
pub fn publish_Ros2Aimdk_msgsMsgMcMotionStatus(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMcMotionStatus,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McMotionStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcMotionStatus.
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
pub fn poll_Ros2Aimdk_msgsMsgMcMotionStatus(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMcMotionStatus, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMcMotionStatus::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/McMotionType message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcMotionType.
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
pub fn publish_Ros2Aimdk_msgsMsgMcMotionType(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMcMotionType,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McMotionType message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcMotionType.
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
pub fn poll_Ros2Aimdk_msgsMsgMcMotionType(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMcMotionType, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMcMotionType::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/McPlayerState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcPlayerState.
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
pub fn publish_Ros2Aimdk_msgsMsgMcPlayerState(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMcPlayerState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McPlayerState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcPlayerState.
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
pub fn poll_Ros2Aimdk_msgsMsgMcPlayerState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMcPlayerState, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMcPlayerState::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/McPresetMotion message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcPresetMotion.
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
pub fn publish_Ros2Aimdk_msgsMsgMcPresetMotion(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMcPresetMotion,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McPresetMotion message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcPresetMotion.
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
pub fn poll_Ros2Aimdk_msgsMsgMcPresetMotion(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMcPresetMotion, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMcPresetMotion::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/McRuntimeModel message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcRuntimeModel.
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
pub fn publish_Ros2Aimdk_msgsMsgMcRuntimeModel(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMcRuntimeModel,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McRuntimeModel message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcRuntimeModel.
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
pub fn poll_Ros2Aimdk_msgsMsgMcRuntimeModel(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMcRuntimeModel, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMcRuntimeModel::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/McServoStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcServoStatus.
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
pub fn publish_Ros2Aimdk_msgsMsgMcServoStatus(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMcServoStatus,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/McServoStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMcServoStatus.
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
pub fn poll_Ros2Aimdk_msgsMsgMcServoStatus(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMcServoStatus, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMcServoStatus::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/MessageHeader message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMessageHeader.
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
pub fn publish_Ros2Aimdk_msgsMsgMessageHeader(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgMessageHeader,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/MessageHeader message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgMessageHeader.
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
pub fn poll_Ros2Aimdk_msgsMsgMessageHeader(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgMessageHeader, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgMessageHeader::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/NaviPoint message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgNaviPoint.
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
pub fn publish_Ros2Aimdk_msgsMsgNaviPoint(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgNaviPoint,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/NaviPoint message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgNaviPoint.
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
pub fn poll_Ros2Aimdk_msgsMsgNaviPoint(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgNaviPoint, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgNaviPoint::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/Path message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPath.
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
pub fn publish_Ros2Aimdk_msgsMsgPath(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgPath,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/Path message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPath.
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
pub fn poll_Ros2Aimdk_msgsMsgPath(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgPath, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgPath::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/PilotState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPilotState.
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
pub fn publish_Ros2Aimdk_msgsMsgPilotState(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgPilotState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PilotState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgPilotState.
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
pub fn poll_Ros2Aimdk_msgsMsgPilotState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgPilotState, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgPilotState::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/PlayStateChange message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayStateChange.
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
pub fn publish_Ros2Aimdk_msgsMsgPlayStateChange(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgPlayStateChange,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PlayStateChange message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgPlayStateChange.
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
pub fn poll_Ros2Aimdk_msgsMsgPlayStateChange(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgPlayStateChange, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgPlayStateChange::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/PlayStateType message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayStateType.
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
pub fn publish_Ros2Aimdk_msgsMsgPlayStateType(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgPlayStateType,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PlayStateType message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgPlayStateType.
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
pub fn poll_Ros2Aimdk_msgsMsgPlayStateType(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgPlayStateType, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgPlayStateType::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/PlayTtsRequest message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayTtsRequest.
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
pub fn publish_Ros2Aimdk_msgsMsgPlayTtsRequest(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgPlayTtsRequest,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PlayTtsRequest message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgPlayTtsRequest.
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
pub fn poll_Ros2Aimdk_msgsMsgPlayTtsRequest(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgPlayTtsRequest, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgPlayTtsRequest::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/PlayTtsResponse message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayTtsResponse.
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
pub fn publish_Ros2Aimdk_msgsMsgPlayTtsResponse(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgPlayTtsResponse,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PlayTtsResponse message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgPlayTtsResponse.
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
pub fn poll_Ros2Aimdk_msgsMsgPlayTtsResponse(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgPlayTtsResponse, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgPlayTtsResponse::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/PmuLedState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPmuLedState.
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
pub fn publish_Ros2Aimdk_msgsMsgPmuLedState(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgPmuLedState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PmuLedState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgPmuLedState.
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
pub fn poll_Ros2Aimdk_msgsMsgPmuLedState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgPmuLedState, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgPmuLedState::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/PmuState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPmuState.
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
pub fn publish_Ros2Aimdk_msgsMsgPmuState(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgPmuState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PmuState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPmuState.
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
pub fn poll_Ros2Aimdk_msgsMsgPmuState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgPmuState, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgPmuState::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/PncTaskRequest message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPncTaskRequest.
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
pub fn publish_Ros2Aimdk_msgsMsgPncTaskRequest(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgPncTaskRequest,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PncTaskRequest message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgPncTaskRequest.
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
pub fn poll_Ros2Aimdk_msgsMsgPncTaskRequest(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgPncTaskRequest, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgPncTaskRequest::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/PncTaskResponse message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPncTaskResponse.
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
pub fn publish_Ros2Aimdk_msgsMsgPncTaskResponse(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgPncTaskResponse,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PncTaskResponse message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgPncTaskResponse.
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
pub fn poll_Ros2Aimdk_msgsMsgPncTaskResponse(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgPncTaskResponse, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgPncTaskResponse::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/PostProcSig message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPostProcSig.
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
pub fn publish_Ros2Aimdk_msgsMsgPostProcSig(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgPostProcSig,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PostProcSig message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgPostProcSig.
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
pub fn poll_Ros2Aimdk_msgsMsgPostProcSig(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgPostProcSig, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgPostProcSig::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/PostProcSigArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPostProcSigArray.
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
pub fn publish_Ros2Aimdk_msgsMsgPostProcSigArray(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgPostProcSigArray,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/PostProcSigArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgPostProcSigArray.
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
pub fn poll_Ros2Aimdk_msgsMsgPostProcSigArray(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgPostProcSigArray, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgPostProcSigArray::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/ProcessedAudioOutput message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgProcessedAudioOutput.
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
pub fn publish_Ros2Aimdk_msgsMsgProcessedAudioOutput(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgProcessedAudioOutput,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/ProcessedAudioOutput message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgProcessedAudioOutput.
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
pub fn poll_Ros2Aimdk_msgsMsgProcessedAudioOutput(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgProcessedAudioOutput, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgProcessedAudioOutput::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/QRCode message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgQRCode.
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
pub fn publish_Ros2Aimdk_msgsMsgQRCode(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgQRCode,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/QRCode message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgQRCode.
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
pub fn poll_Ros2Aimdk_msgsMsgQRCode(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgQRCode, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgQRCode::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/QRPoint message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgQRPoint.
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
pub fn publish_Ros2Aimdk_msgsMsgQRPoint(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgQRPoint,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/QRPoint message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgQRPoint.
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
pub fn poll_Ros2Aimdk_msgsMsgQRPoint(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgQRPoint, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgQRPoint::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/Region message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgRegion.
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
pub fn publish_Ros2Aimdk_msgsMsgRegion(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgRegion,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/Region message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgRegion.
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
pub fn poll_Ros2Aimdk_msgsMsgRegion(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgRegion, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgRegion::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/RequestHeader message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgRequestHeader.
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
pub fn publish_Ros2Aimdk_msgsMsgRequestHeader(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgRequestHeader,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/RequestHeader message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgRequestHeader.
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
pub fn poll_Ros2Aimdk_msgsMsgRequestHeader(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgRequestHeader, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgRequestHeader::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/ResponseHeader message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgResponseHeader.
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
pub fn publish_Ros2Aimdk_msgsMsgResponseHeader(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgResponseHeader,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/ResponseHeader message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgResponseHeader.
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
pub fn poll_Ros2Aimdk_msgsMsgResponseHeader(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgResponseHeader, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgResponseHeader::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/RobotResource message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgRobotResource.
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
pub fn publish_Ros2Aimdk_msgsMsgRobotResource(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgRobotResource,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/RobotResource message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgRobotResource.
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
pub fn poll_Ros2Aimdk_msgsMsgRobotResource(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgRobotResource, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgRobotResource::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/SigSet message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSigSet.
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
pub fn publish_Ros2Aimdk_msgsMsgSigSet(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgSigSet,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/SigSet message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgSigSet.
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
pub fn poll_Ros2Aimdk_msgsMsgSigSet(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgSigSet, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgSigSet::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/SlaveDevice message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSlaveDevice.
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
pub fn publish_Ros2Aimdk_msgsMsgSlaveDevice(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgSlaveDevice,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/SlaveDevice message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgSlaveDevice.
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
pub fn poll_Ros2Aimdk_msgsMsgSlaveDevice(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgSlaveDevice, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgSlaveDevice::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/SmSystemState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSmSystemState.
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
pub fn publish_Ros2Aimdk_msgsMsgSmSystemState(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgSmSystemState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/SmSystemState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgSmSystemState.
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
pub fn poll_Ros2Aimdk_msgsMsgSmSystemState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgSmSystemState, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgSmSystemState::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/SystemStatus message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSystemStatus.
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
pub fn publish_Ros2Aimdk_msgsMsgSystemStatus(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgSystemStatus,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/SystemStatus message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgSystemStatus.
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
pub fn poll_Ros2Aimdk_msgsMsgSystemStatus(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgSystemStatus, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgSystemStatus::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/TaskMasterState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgTaskMasterState.
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
pub fn publish_Ros2Aimdk_msgsMsgTaskMasterState(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgTaskMasterState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/TaskMasterState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgTaskMasterState.
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
pub fn poll_Ros2Aimdk_msgsMsgTaskMasterState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgTaskMasterState, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgTaskMasterState::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/TouchState message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgTouchState.
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
pub fn publish_Ros2Aimdk_msgsMsgTouchState(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgTouchState,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/TouchState message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgTouchState.
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
pub fn poll_Ros2Aimdk_msgsMsgTouchState(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgTouchState, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgTouchState::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/TtsPriorityLevel message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgTtsPriorityLevel.
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
pub fn publish_Ros2Aimdk_msgsMsgTtsPriorityLevel(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgTtsPriorityLevel,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/TtsPriorityLevel message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgTtsPriorityLevel.
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
pub fn poll_Ros2Aimdk_msgsMsgTtsPriorityLevel(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgTtsPriorityLevel, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgTtsPriorityLevel::decode(&output[..n])
}
/// @brief Publish one complete aimdk_msgs/msg/UpperBodyCommandArray message.
/// @details Encode the complete message before the single effectful publish. A successful return acknowledges
/// transport admission, not physical controller completion. Components:
/// message=Ros2Aimdk_msgsMsgUpperBodyCommandArray.
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
pub fn publish_Ros2Aimdk_msgsMsgUpperBodyCommandArray(
    owner: &Capability,
    value: &Ros2Aimdk_msgsMsgUpperBodyCommandArray,
) -> Result<(), Error> {
    owner.publish(&value.encode()?)
}
/// @brief Poll and decode one complete aimdk_msgs/msg/UpperBodyCommandArray message.
/// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
/// message; a capacity refusal may already have consumed the event. Components:
/// message=Ros2Aimdk_msgsMsgUpperBodyCommandArray.
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
pub fn poll_Ros2Aimdk_msgsMsgUpperBodyCommandArray(
    owner: &Capability,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsMsgUpperBodyCommandArray, Error> {
    let n = owner.poll(output)?;
    Ros2Aimdk_msgsMsgUpperBodyCommandArray::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/AbandonAudioFocus service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvAbandonAudioFocus_Request,
/// response=Ros2Aimdk_msgsSrvAbandonAudioFocus_Response.
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
pub fn call_Ros2Aimdk_msgsSrvAbandonAudioFocus(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvAbandonAudioFocus_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvAbandonAudioFocus_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvAbandonAudioFocus_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/ExecuteActionResource service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvExecuteActionResource_Request,
/// response=Ros2Aimdk_msgsSrvExecuteActionResource_Response.
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
pub fn call_Ros2Aimdk_msgsSrvExecuteActionResource(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvExecuteActionResource_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvExecuteActionResource_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvExecuteActionResource_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/GetAllJointState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetAllJointState_Request,
/// response=Ros2Aimdk_msgsSrvGetAllJointState_Response.
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
pub fn call_Ros2Aimdk_msgsSrvGetAllJointState(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvGetAllJointState_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvGetAllJointState_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvGetAllJointState_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/GetCurrentInputSource service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetCurrentInputSource_Request,
/// response=Ros2Aimdk_msgsSrvGetCurrentInputSource_Response.
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
pub fn call_Ros2Aimdk_msgsSrvGetCurrentInputSource(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvGetCurrentInputSource_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvGetCurrentInputSource_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvGetCurrentInputSource_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/GetHandType service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetHandType_Request, response=Ros2Aimdk_msgsSrvGetHandType_Response.
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
pub fn call_Ros2Aimdk_msgsSrvGetHandType(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvGetHandType_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvGetHandType_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvGetHandType_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/GetHdsEventHistory service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetHdsEventHistory_Request,
/// response=Ros2Aimdk_msgsSrvGetHdsEventHistory_Response.
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
pub fn call_Ros2Aimdk_msgsSrvGetHdsEventHistory(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvGetHdsEventHistory_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvGetHdsEventHistory_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvGetHdsEventHistory_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/GetMcAction service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetMcAction_Request, response=Ros2Aimdk_msgsSrvGetMcAction_Response.
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
pub fn call_Ros2Aimdk_msgsSrvGetMcAction(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvGetMcAction_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvGetMcAction_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvGetMcAction_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/GetMcLocomotionSpeedStatus service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request,
/// response=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response.
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
pub fn call_Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/GetMcPresetMotionState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request,
/// response=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response.
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
pub fn call_Ros2Aimdk_msgsSrvGetMcPresetMotionState(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/GetMicSourceRequest service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetMicSourceRequest_Request,
/// response=Ros2Aimdk_msgsSrvGetMicSourceRequest_Response.
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
pub fn call_Ros2Aimdk_msgsSrvGetMicSourceRequest(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvGetMicSourceRequest_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvGetMicSourceRequest_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvGetMicSourceRequest_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/GetMute service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetMute_Request, response=Ros2Aimdk_msgsSrvGetMute_Response.
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
pub fn call_Ros2Aimdk_msgsSrvGetMute(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvGetMute_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvGetMute_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvGetMute_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/GetRobotResources service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetRobotResources_Request,
/// response=Ros2Aimdk_msgsSrvGetRobotResources_Response.
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
pub fn call_Ros2Aimdk_msgsSrvGetRobotResources(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvGetRobotResources_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvGetRobotResources_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvGetRobotResources_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/GetStoredMapByName service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetStoredMapByName_Request,
/// response=Ros2Aimdk_msgsSrvGetStoredMapByName_Response.
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
pub fn call_Ros2Aimdk_msgsSrvGetStoredMapByName(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvGetStoredMapByName_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvGetStoredMapByName_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvGetStoredMapByName_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/GetSystemState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetSystemState_Request, response=Ros2Aimdk_msgsSrvGetSystemState_Response.
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
pub fn call_Ros2Aimdk_msgsSrvGetSystemState(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvGetSystemState_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvGetSystemState_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvGetSystemState_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/GetVolume service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGetVolume_Request, response=Ros2Aimdk_msgsSrvGetVolume_Response.
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
pub fn call_Ros2Aimdk_msgsSrvGetVolume(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvGetVolume_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvGetVolume_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvGetVolume_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/GroupControlTimeSync service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvGroupControlTimeSync_Request,
/// response=Ros2Aimdk_msgsSrvGroupControlTimeSync_Response.
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
pub fn call_Ros2Aimdk_msgsSrvGroupControlTimeSync(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvGroupControlTimeSync_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvGroupControlTimeSync_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvGroupControlTimeSync_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/MigrateSystemState service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvMigrateSystemState_Request,
/// response=Ros2Aimdk_msgsSrvMigrateSystemState_Response.
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
pub fn call_Ros2Aimdk_msgsSrvMigrateSystemState(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvMigrateSystemState_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvMigrateSystemState_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvMigrateSystemState_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/PlayAudioFile service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvPlayAudioFile_Request, response=Ros2Aimdk_msgsSrvPlayAudioFile_Response.
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
pub fn call_Ros2Aimdk_msgsSrvPlayAudioFile(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvPlayAudioFile_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvPlayAudioFile_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvPlayAudioFile_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/PlayEmoji service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvPlayEmoji_Request, response=Ros2Aimdk_msgsSrvPlayEmoji_Response.
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
pub fn call_Ros2Aimdk_msgsSrvPlayEmoji(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvPlayEmoji_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvPlayEmoji_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvPlayEmoji_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/PlayEmojiGroup service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvPlayEmojiGroup_Request, response=Ros2Aimdk_msgsSrvPlayEmojiGroup_Response.
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
pub fn call_Ros2Aimdk_msgsSrvPlayEmojiGroup(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvPlayEmojiGroup_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvPlayEmojiGroup_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvPlayEmojiGroup_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/PlayTts service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvPlayTts_Request, response=Ros2Aimdk_msgsSrvPlayTts_Response.
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
pub fn call_Ros2Aimdk_msgsSrvPlayTts(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvPlayTts_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvPlayTts_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvPlayTts_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/PlayVideo service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvPlayVideo_Request, response=Ros2Aimdk_msgsSrvPlayVideo_Response.
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
pub fn call_Ros2Aimdk_msgsSrvPlayVideo(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvPlayVideo_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvPlayVideo_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvPlayVideo_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/PlayVideoGroup service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvPlayVideoGroup_Request, response=Ros2Aimdk_msgsSrvPlayVideoGroup_Response.
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
pub fn call_Ros2Aimdk_msgsSrvPlayVideoGroup(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvPlayVideoGroup_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvPlayVideoGroup_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvPlayVideoGroup_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/RequestAudioFocus service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvRequestAudioFocus_Request,
/// response=Ros2Aimdk_msgsSrvRequestAudioFocus_Response.
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
pub fn call_Ros2Aimdk_msgsSrvRequestAudioFocus(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvRequestAudioFocus_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvRequestAudioFocus_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvRequestAudioFocus_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/SetAgentPropertiesRequest service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request,
/// response=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response.
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
pub fn call_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/SetMcAction service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvSetMcAction_Request, response=Ros2Aimdk_msgsSrvSetMcAction_Response.
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
pub fn call_Ros2Aimdk_msgsSrvSetMcAction(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvSetMcAction_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvSetMcAction_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvSetMcAction_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/SetMcInputSource service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvSetMcInputSource_Request,
/// response=Ros2Aimdk_msgsSrvSetMcInputSource_Response.
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
pub fn call_Ros2Aimdk_msgsSrvSetMcInputSource(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvSetMcInputSource_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvSetMcInputSource_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvSetMcInputSource_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/SetMcPresetMotion service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvSetMcPresetMotion_Request,
/// response=Ros2Aimdk_msgsSrvSetMcPresetMotion_Response.
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
pub fn call_Ros2Aimdk_msgsSrvSetMcPresetMotion(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvSetMcPresetMotion_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvSetMcPresetMotion_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvSetMcPresetMotion_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/SetMicSourceRequest service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvSetMicSourceRequest_Request,
/// response=Ros2Aimdk_msgsSrvSetMicSourceRequest_Response.
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
pub fn call_Ros2Aimdk_msgsSrvSetMicSourceRequest(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvSetMicSourceRequest_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvSetMicSourceRequest_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvSetMicSourceRequest_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/SetMute service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvSetMute_Request, response=Ros2Aimdk_msgsSrvSetMute_Response.
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
pub fn call_Ros2Aimdk_msgsSrvSetMute(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvSetMute_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvSetMute_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvSetMute_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/SetPmuLed service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvSetPmuLed_Request, response=Ros2Aimdk_msgsSrvSetPmuLed_Response.
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
pub fn call_Ros2Aimdk_msgsSrvSetPmuLed(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvSetPmuLed_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvSetPmuLed_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvSetPmuLed_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/SetVolume service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvSetVolume_Request, response=Ros2Aimdk_msgsSrvSetVolume_Response.
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
pub fn call_Ros2Aimdk_msgsSrvSetVolume(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvSetVolume_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvSetVolume_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvSetVolume_Response::decode(&output[..n])
}
/// @brief Call the selected aimdk_msgs/srv/StopAudioPlay service.
/// @details Encode the exact request and decode the complete response using the separately granted legacy
/// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
/// Components: request=Ros2Aimdk_msgsSrvStopAudioPlay_Request, response=Ros2Aimdk_msgsSrvStopAudioPlay_Response.
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
pub fn call_Ros2Aimdk_msgsSrvStopAudioPlay(
    owner: &Capability,
    value: &Ros2Aimdk_msgsSrvStopAudioPlay_Request,
    output: &mut [u8],
) -> Result<Ros2Aimdk_msgsSrvStopAudioPlay_Response, Error> {
    let n = owner.request(Operation::ServiceCall, &value.encode()?, output)?;
    Ros2Aimdk_msgsSrvStopAudioPlay_Response::decode(&output[..n])
}
