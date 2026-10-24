// @file Interfaces.swift
// @brief Full agibot swift codecs and original record metadata.
// @details Complete agibot ros2_sdk_v0_8_2_main values in swift. 72 original records retain 227 fields and 55
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/agibot/en_US/catalog/.
// Generated typed interface entry points; no implicit resources.
import RosWasm

/// @brief Typed message entry points for aimdk_msgs/msg/AgentProperties.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgAgentProperties.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgAgentPropertiesInterface {
  /// @brief Publish one complete aimdk_msgs/msg/AgentProperties message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAgentProperties.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgAgentProperties, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/AgentProperties message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgAgentProperties.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgAgentProperties {
    try owner.poll(Ros2Aimdk_msgsMsgAgentProperties.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/AgentPropertiesValue.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgAgentPropertiesValue.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgAgentPropertiesValueInterface {
  /// @brief Publish one complete aimdk_msgs/msg/AgentPropertiesValue message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Aimdk_msgsMsgAgentPropertiesValue.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgAgentPropertiesValue, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/AgentPropertiesValue message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgAgentPropertiesValue.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgAgentPropertiesValue {
    try owner.poll(Ros2Aimdk_msgsMsgAgentPropertiesValue.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/AgentPropertyIdType.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgAgentPropertyIdType.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgAgentPropertyIdTypeInterface {
  /// @brief Publish one complete aimdk_msgs/msg/AgentPropertyIdType message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Aimdk_msgsMsgAgentPropertyIdType.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgAgentPropertyIdType, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/AgentPropertyIdType message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgAgentPropertyIdType.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgAgentPropertyIdType {
    try owner.poll(Ros2Aimdk_msgsMsgAgentPropertyIdType.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/AudioVadStateType.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgAudioVadStateType.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgAudioVadStateTypeInterface {
  /// @brief Publish one complete aimdk_msgs/msg/AudioVadStateType message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Aimdk_msgsMsgAudioVadStateType.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgAudioVadStateType, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/AudioVadStateType message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgAudioVadStateType.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgAudioVadStateType {
    try owner.poll(Ros2Aimdk_msgsMsgAudioVadStateType.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/CommonRequest.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgCommonRequest.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgCommonRequestInterface {
  /// @brief Publish one complete aimdk_msgs/msg/CommonRequest message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonRequest.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgCommonRequest, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/CommonRequest message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgCommonRequest.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgCommonRequest {
    try owner.poll(Ros2Aimdk_msgsMsgCommonRequest.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/CommonResponse.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgCommonResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgCommonResponseInterface {
  /// @brief Publish one complete aimdk_msgs/msg/CommonResponse message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonResponse.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgCommonResponse, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/CommonResponse message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgCommonResponse.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgCommonResponse {
    try owner.poll(Ros2Aimdk_msgsMsgCommonResponse.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/CommonState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgCommonState.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgCommonStateInterface {
  /// @brief Publish one complete aimdk_msgs/msg/CommonState message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCommonState.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgCommonState, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/CommonState message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgCommonState.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgCommonState {
    try owner.poll(Ros2Aimdk_msgsMsgCommonState.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/CommonTaskResponse.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgCommonTaskResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgCommonTaskResponseInterface {
  /// @brief Publish one complete aimdk_msgs/msg/CommonTaskResponse message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Aimdk_msgsMsgCommonTaskResponse.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgCommonTaskResponse, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/CommonTaskResponse message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgCommonTaskResponse.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgCommonTaskResponse {
    try owner.poll(Ros2Aimdk_msgsMsgCommonTaskResponse.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/FaceEmojiStatus.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgFaceEmojiStatus.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgFaceEmojiStatusInterface {
  /// @brief Publish one complete aimdk_msgs/msg/FaceEmojiStatus message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFaceEmojiStatus.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgFaceEmojiStatus, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/FaceEmojiStatus message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgFaceEmojiStatus.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgFaceEmojiStatus {
    try owner.poll(Ros2Aimdk_msgsMsgFaceEmojiStatus.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/HandCommand.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgHandCommand.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgHandCommandInterface {
  /// @brief Publish one complete aimdk_msgs/msg/HandCommand message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandCommand.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgHandCommand, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/HandCommand message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgHandCommand.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgHandCommand {
    try owner.poll(Ros2Aimdk_msgsMsgHandCommand.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/HandCommandArray.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgHandCommandArray.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgHandCommandArrayInterface {
  /// @brief Publish one complete aimdk_msgs/msg/HandCommandArray message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandCommandArray.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgHandCommandArray, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/HandCommandArray message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgHandCommandArray.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgHandCommandArray {
    try owner.poll(Ros2Aimdk_msgsMsgHandCommandArray.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/HandState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgHandState.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgHandStateInterface {
  /// @brief Publish one complete aimdk_msgs/msg/HandState message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandState.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgHandState, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/HandState message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgHandState.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgHandState {
    try owner.poll(Ros2Aimdk_msgsMsgHandState.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/HandStateArray.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgHandStateArray.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgHandStateArrayInterface {
  /// @brief Publish one complete aimdk_msgs/msg/HandStateArray message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandStateArray.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgHandStateArray, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/HandStateArray message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgHandStateArray.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgHandStateArray {
    try owner.poll(Ros2Aimdk_msgsMsgHandStateArray.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/HandType.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgHandType.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgHandTypeInterface {
  /// @brief Publish one complete aimdk_msgs/msg/HandType message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHandType.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgHandType, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/HandType message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHandType.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgHandType {
    try owner.poll(Ros2Aimdk_msgsMsgHandType.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/JointCommand.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgJointCommand.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgJointCommandInterface {
  /// @brief Publish one complete aimdk_msgs/msg/JointCommand message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointCommand.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgJointCommand, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/JointCommand message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgJointCommand.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgJointCommand {
    try owner.poll(Ros2Aimdk_msgsMsgJointCommand.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/JointCommandArray.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgJointCommandArray.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgJointCommandArrayInterface {
  /// @brief Publish one complete aimdk_msgs/msg/JointCommandArray message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Aimdk_msgsMsgJointCommandArray.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgJointCommandArray, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/JointCommandArray message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgJointCommandArray.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgJointCommandArray {
    try owner.poll(Ros2Aimdk_msgsMsgJointCommandArray.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/JointState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgJointState.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgJointStateInterface {
  /// @brief Publish one complete aimdk_msgs/msg/JointState message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointState.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgJointState, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/JointState message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgJointState.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgJointState {
    try owner.poll(Ros2Aimdk_msgsMsgJointState.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/JointStateArray.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgJointStateArray.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgJointStateArrayInterface {
  /// @brief Publish one complete aimdk_msgs/msg/JointStateArray message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgJointStateArray.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgJointStateArray, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/JointStateArray message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgJointStateArray.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgJointStateArray {
    try owner.poll(Ros2Aimdk_msgsMsgJointStateArray.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/McAction.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMcAction.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMcActionInterface {
  /// @brief Publish one complete aimdk_msgs/msg/McAction message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcAction.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgMcAction, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/McAction message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgMcAction.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMcAction {
    try owner.poll(Ros2Aimdk_msgsMsgMcAction.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/McActionCommand.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMcActionCommand.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMcActionCommandInterface {
  /// @brief Publish one complete aimdk_msgs/msg/McActionCommand message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcActionCommand.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgMcActionCommand, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/McActionCommand message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgMcActionCommand.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMcActionCommand {
    try owner.poll(Ros2Aimdk_msgsMsgMcActionCommand.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/McActionInfo.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMcActionInfo.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMcActionInfoInterface {
  /// @brief Publish one complete aimdk_msgs/msg/McActionInfo message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcActionInfo.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgMcActionInfo, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/McActionInfo message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgMcActionInfo.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMcActionInfo {
    try owner.poll(Ros2Aimdk_msgsMsgMcActionInfo.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/McActionStatus.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMcActionStatus.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMcActionStatusInterface {
  /// @brief Publish one complete aimdk_msgs/msg/McActionStatus message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcActionStatus.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgMcActionStatus, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/McActionStatus message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgMcActionStatus.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMcActionStatus {
    try owner.poll(Ros2Aimdk_msgsMsgMcActionStatus.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/McControlArea.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMcControlArea.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMcControlAreaInterface {
  /// @brief Publish one complete aimdk_msgs/msg/McControlArea message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcControlArea.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgMcControlArea, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/McControlArea message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgMcControlArea.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMcControlArea {
    try owner.poll(Ros2Aimdk_msgsMsgMcControlArea.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/McInputAction.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMcInputAction.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMcInputActionInterface {
  /// @brief Publish one complete aimdk_msgs/msg/McInputAction message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcInputAction.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgMcInputAction, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/McInputAction message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgMcInputAction.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMcInputAction {
    try owner.poll(Ros2Aimdk_msgsMsgMcInputAction.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/McInputSource.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMcInputSource.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMcInputSourceInterface {
  /// @brief Publish one complete aimdk_msgs/msg/McInputSource message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcInputSource.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgMcInputSource, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/McInputSource message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgMcInputSource.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMcInputSource {
    try owner.poll(Ros2Aimdk_msgsMsgMcInputSource.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/McLocomotionVelocity.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMcLocomotionVelocity.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMcLocomotionVelocityInterface {
  /// @brief Publish one complete aimdk_msgs/msg/McLocomotionVelocity message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Aimdk_msgsMsgMcLocomotionVelocity.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgMcLocomotionVelocity, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/McLocomotionVelocity message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgMcLocomotionVelocity.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMcLocomotionVelocity {
    try owner.poll(Ros2Aimdk_msgsMsgMcLocomotionVelocity.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/McPresetMotion.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMcPresetMotion.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMcPresetMotionInterface {
  /// @brief Publish one complete aimdk_msgs/msg/McPresetMotion message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcPresetMotion.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgMcPresetMotion, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/McPresetMotion message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgMcPresetMotion.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMcPresetMotion {
    try owner.poll(Ros2Aimdk_msgsMsgMcPresetMotion.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/MessageHeader.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMessageHeader.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMessageHeaderInterface {
  /// @brief Publish one complete aimdk_msgs/msg/MessageHeader message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMessageHeader.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgMessageHeader, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/MessageHeader message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgMessageHeader.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMessageHeader {
    try owner.poll(Ros2Aimdk_msgsMsgMessageHeader.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/PlayMediaFileRequest.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgPlayMediaFileRequest.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgPlayMediaFileRequestInterface {
  /// @brief Publish one complete aimdk_msgs/msg/PlayMediaFileRequest message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Aimdk_msgsMsgPlayMediaFileRequest.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgPlayMediaFileRequest, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/PlayMediaFileRequest message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgPlayMediaFileRequest.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgPlayMediaFileRequest {
    try owner.poll(Ros2Aimdk_msgsMsgPlayMediaFileRequest.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/PlayTtsRequest.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgPlayTtsRequest.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgPlayTtsRequestInterface {
  /// @brief Publish one complete aimdk_msgs/msg/PlayTtsRequest message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayTtsRequest.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgPlayTtsRequest, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/PlayTtsRequest message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgPlayTtsRequest.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgPlayTtsRequest {
    try owner.poll(Ros2Aimdk_msgsMsgPlayTtsRequest.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/PlayTtsResponse.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgPlayTtsResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgPlayTtsResponseInterface {
  /// @brief Publish one complete aimdk_msgs/msg/PlayTtsResponse message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayTtsResponse.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgPlayTtsResponse, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/PlayTtsResponse message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgPlayTtsResponse.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgPlayTtsResponse {
    try owner.poll(Ros2Aimdk_msgsMsgPlayTtsResponse.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/PmuState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgPmuState.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgPmuStateInterface {
  /// @brief Publish one complete aimdk_msgs/msg/PmuState message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPmuState.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgPmuState, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/PmuState message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPmuState.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgPmuState {
    try owner.poll(Ros2Aimdk_msgsMsgPmuState.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/ProcessedAudioOutput.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgProcessedAudioOutput.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgProcessedAudioOutputInterface {
  /// @brief Publish one complete aimdk_msgs/msg/ProcessedAudioOutput message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Aimdk_msgsMsgProcessedAudioOutput.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgProcessedAudioOutput, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/ProcessedAudioOutput message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgProcessedAudioOutput.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgProcessedAudioOutput {
    try owner.poll(Ros2Aimdk_msgsMsgProcessedAudioOutput.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/RequestHeader.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgRequestHeader.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgRequestHeaderInterface {
  /// @brief Publish one complete aimdk_msgs/msg/RequestHeader message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgRequestHeader.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgRequestHeader, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/RequestHeader message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgRequestHeader.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgRequestHeader {
    try owner.poll(Ros2Aimdk_msgsMsgRequestHeader.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/ResponseHeader.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgResponseHeader.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgResponseHeaderInterface {
  /// @brief Publish one complete aimdk_msgs/msg/ResponseHeader message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgResponseHeader.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgResponseHeader, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/ResponseHeader message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgResponseHeader.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgResponseHeader {
    try owner.poll(Ros2Aimdk_msgsMsgResponseHeader.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/TouchState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgTouchState.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgTouchStateInterface {
  /// @brief Publish one complete aimdk_msgs/msg/TouchState message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgTouchState.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgTouchState, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/TouchState message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgTouchState.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgTouchState {
    try owner.poll(Ros2Aimdk_msgsMsgTouchState.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/TtsPriorityLevel.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgTtsPriorityLevel.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgTtsPriorityLevelInterface {
  /// @brief Publish one complete aimdk_msgs/msg/TtsPriorityLevel message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgTtsPriorityLevel.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func publish(_ value: Ros2Aimdk_msgsMsgTtsPriorityLevel, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/TtsPriorityLevel message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgTtsPriorityLevel.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgTtsPriorityLevel {
    try owner.poll(Ros2Aimdk_msgsMsgTtsPriorityLevel.self)
  }
}
/// @brief Typed service entry points for aimdk_msgs/srv/GetAllJointState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvGetAllJointState_Request,
/// response=Ros2Aimdk_msgsSrvGetAllJointState_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvGetAllJointStateInterface {
  /// @brief Call the selected aimdk_msgs/srv/GetAllJointState service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvGetAllJointState_Request,
  /// response=Ros2Aimdk_msgsSrvGetAllJointState_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func call(_ value: Ros2Aimdk_msgsSrvGetAllJointState_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvGetAllJointState_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvGetAllJointState_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/GetAllJointState service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvGetAllJointState_Request, response=Ros2Aimdk_msgsSrvGetAllJointState_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func incoming(owner: Owner) throws -> Incoming<
    Ros2Aimdk_msgsSrvGetAllJointState_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvGetAllJointState_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/GetAllJointState service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGetAllJointState_Request,
  /// response=Ros2Aimdk_msgsSrvGetAllJointState_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] id Exact nonzero u64 owned/delivered ID in this Instance/backend; never narrow or synthesize it.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func respond(
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvGetAllJointState_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/GetCurrentInputSource.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvGetCurrentInputSource_Request,
/// response=Ros2Aimdk_msgsSrvGetCurrentInputSource_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvGetCurrentInputSourceInterface {
  /// @brief Call the selected aimdk_msgs/srv/GetCurrentInputSource service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvGetCurrentInputSource_Request,
  /// response=Ros2Aimdk_msgsSrvGetCurrentInputSource_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func call(_ value: Ros2Aimdk_msgsSrvGetCurrentInputSource_Request, owner: Owner)
    throws -> Ros2Aimdk_msgsSrvGetCurrentInputSource_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvGetCurrentInputSource_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/GetCurrentInputSource service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvGetCurrentInputSource_Request,
  /// response=Ros2Aimdk_msgsSrvGetCurrentInputSource_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func incoming(owner: Owner) throws -> Incoming<
    Ros2Aimdk_msgsSrvGetCurrentInputSource_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvGetCurrentInputSource_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/GetCurrentInputSource service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Aimdk_msgsSrvGetCurrentInputSource_Request,
  /// response=Ros2Aimdk_msgsSrvGetCurrentInputSource_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] id Exact nonzero u64 owned/delivered ID in this Instance/backend; never narrow or synthesize it.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func respond(
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvGetCurrentInputSource_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/GetHandType.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvGetHandType_Request,
/// response=Ros2Aimdk_msgsSrvGetHandType_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvGetHandTypeInterface {
  /// @brief Call the selected aimdk_msgs/srv/GetHandType service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvGetHandType_Request, response=Ros2Aimdk_msgsSrvGetHandType_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func call(_ value: Ros2Aimdk_msgsSrvGetHandType_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvGetHandType_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvGetHandType_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/GetHandType service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvGetHandType_Request, response=Ros2Aimdk_msgsSrvGetHandType_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func incoming(owner: Owner) throws -> Incoming<Ros2Aimdk_msgsSrvGetHandType_Request>
  { try owner.incoming(Ros2Aimdk_msgsSrvGetHandType_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/GetHandType service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGetHandType_Request,
  /// response=Ros2Aimdk_msgsSrvGetHandType_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] id Exact nonzero u64 owned/delivered ID in this Instance/backend; never narrow or synthesize it.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func respond(
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvGetHandType_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/GetMcAction.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvGetMcAction_Request,
/// response=Ros2Aimdk_msgsSrvGetMcAction_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvGetMcActionInterface {
  /// @brief Call the selected aimdk_msgs/srv/GetMcAction service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvGetMcAction_Request, response=Ros2Aimdk_msgsSrvGetMcAction_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func call(_ value: Ros2Aimdk_msgsSrvGetMcAction_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvGetMcAction_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvGetMcAction_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/GetMcAction service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvGetMcAction_Request, response=Ros2Aimdk_msgsSrvGetMcAction_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func incoming(owner: Owner) throws -> Incoming<Ros2Aimdk_msgsSrvGetMcAction_Request>
  { try owner.incoming(Ros2Aimdk_msgsSrvGetMcAction_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/GetMcAction service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGetMcAction_Request,
  /// response=Ros2Aimdk_msgsSrvGetMcAction_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] id Exact nonzero u64 owned/delivered ID in this Instance/backend; never narrow or synthesize it.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func respond(
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvGetMcAction_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/GetMute.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvGetMute_Request, response=Ros2Aimdk_msgsSrvGetMute_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvGetMuteInterface {
  /// @brief Call the selected aimdk_msgs/srv/GetMute service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvGetMute_Request, response=Ros2Aimdk_msgsSrvGetMute_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func call(_ value: Ros2Aimdk_msgsSrvGetMute_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvGetMute_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvGetMute_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/GetMute service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvGetMute_Request, response=Ros2Aimdk_msgsSrvGetMute_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func incoming(owner: Owner) throws -> Incoming<Ros2Aimdk_msgsSrvGetMute_Request> {
    try owner.incoming(Ros2Aimdk_msgsSrvGetMute_Request.self)
  }
  /// @brief Respond once to a delivered aimdk_msgs/srv/GetMute service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGetMute_Request,
  /// response=Ros2Aimdk_msgsSrvGetMute_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] id Exact nonzero u64 owned/delivered ID in this Instance/backend; never narrow or synthesize it.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func respond(_ id: UInt64, _ value: Ros2Aimdk_msgsSrvGetMute_Response, owner: Owner)
    throws
  { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/GetVolume.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvGetVolume_Request, response=Ros2Aimdk_msgsSrvGetVolume_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvGetVolumeInterface {
  /// @brief Call the selected aimdk_msgs/srv/GetVolume service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvGetVolume_Request, response=Ros2Aimdk_msgsSrvGetVolume_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func call(_ value: Ros2Aimdk_msgsSrvGetVolume_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvGetVolume_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvGetVolume_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/GetVolume service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvGetVolume_Request, response=Ros2Aimdk_msgsSrvGetVolume_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func incoming(owner: Owner) throws -> Incoming<Ros2Aimdk_msgsSrvGetVolume_Request> {
    try owner.incoming(Ros2Aimdk_msgsSrvGetVolume_Request.self)
  }
  /// @brief Respond once to a delivered aimdk_msgs/srv/GetVolume service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGetVolume_Request,
  /// response=Ros2Aimdk_msgsSrvGetVolume_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] id Exact nonzero u64 owned/delivered ID in this Instance/backend; never narrow or synthesize it.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func respond(
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvGetVolume_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/LedStripCommand.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvLedStripCommand_Request,
/// response=Ros2Aimdk_msgsSrvLedStripCommand_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvLedStripCommandInterface {
  /// @brief Call the selected aimdk_msgs/srv/LedStripCommand service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvLedStripCommand_Request,
  /// response=Ros2Aimdk_msgsSrvLedStripCommand_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func call(_ value: Ros2Aimdk_msgsSrvLedStripCommand_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvLedStripCommand_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvLedStripCommand_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/LedStripCommand service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvLedStripCommand_Request, response=Ros2Aimdk_msgsSrvLedStripCommand_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func incoming(owner: Owner) throws -> Incoming<
    Ros2Aimdk_msgsSrvLedStripCommand_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvLedStripCommand_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/LedStripCommand service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvLedStripCommand_Request,
  /// response=Ros2Aimdk_msgsSrvLedStripCommand_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] id Exact nonzero u64 owned/delivered ID in this Instance/backend; never narrow or synthesize it.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func respond(
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvLedStripCommand_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/PlayEmoji.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvPlayEmoji_Request, response=Ros2Aimdk_msgsSrvPlayEmoji_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvPlayEmojiInterface {
  /// @brief Call the selected aimdk_msgs/srv/PlayEmoji service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvPlayEmoji_Request, response=Ros2Aimdk_msgsSrvPlayEmoji_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func call(_ value: Ros2Aimdk_msgsSrvPlayEmoji_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvPlayEmoji_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvPlayEmoji_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/PlayEmoji service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvPlayEmoji_Request, response=Ros2Aimdk_msgsSrvPlayEmoji_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func incoming(owner: Owner) throws -> Incoming<Ros2Aimdk_msgsSrvPlayEmoji_Request> {
    try owner.incoming(Ros2Aimdk_msgsSrvPlayEmoji_Request.self)
  }
  /// @brief Respond once to a delivered aimdk_msgs/srv/PlayEmoji service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvPlayEmoji_Request,
  /// response=Ros2Aimdk_msgsSrvPlayEmoji_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] id Exact nonzero u64 owned/delivered ID in this Instance/backend; never narrow or synthesize it.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func respond(
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvPlayEmoji_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/PlayMediaFile.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvPlayMediaFile_Request,
/// response=Ros2Aimdk_msgsSrvPlayMediaFile_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvPlayMediaFileInterface {
  /// @brief Call the selected aimdk_msgs/srv/PlayMediaFile service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvPlayMediaFile_Request, response=Ros2Aimdk_msgsSrvPlayMediaFile_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func call(_ value: Ros2Aimdk_msgsSrvPlayMediaFile_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvPlayMediaFile_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvPlayMediaFile_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/PlayMediaFile service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvPlayMediaFile_Request, response=Ros2Aimdk_msgsSrvPlayMediaFile_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func incoming(owner: Owner) throws -> Incoming<
    Ros2Aimdk_msgsSrvPlayMediaFile_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvPlayMediaFile_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/PlayMediaFile service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvPlayMediaFile_Request,
  /// response=Ros2Aimdk_msgsSrvPlayMediaFile_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] id Exact nonzero u64 owned/delivered ID in this Instance/backend; never narrow or synthesize it.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func respond(
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvPlayMediaFile_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/PlayTts.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvPlayTts_Request, response=Ros2Aimdk_msgsSrvPlayTts_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvPlayTtsInterface {
  /// @brief Call the selected aimdk_msgs/srv/PlayTts service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvPlayTts_Request, response=Ros2Aimdk_msgsSrvPlayTts_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func call(_ value: Ros2Aimdk_msgsSrvPlayTts_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvPlayTts_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvPlayTts_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/PlayTts service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvPlayTts_Request, response=Ros2Aimdk_msgsSrvPlayTts_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func incoming(owner: Owner) throws -> Incoming<Ros2Aimdk_msgsSrvPlayTts_Request> {
    try owner.incoming(Ros2Aimdk_msgsSrvPlayTts_Request.self)
  }
  /// @brief Respond once to a delivered aimdk_msgs/srv/PlayTts service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvPlayTts_Request,
  /// response=Ros2Aimdk_msgsSrvPlayTts_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] id Exact nonzero u64 owned/delivered ID in this Instance/backend; never narrow or synthesize it.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func respond(_ id: UInt64, _ value: Ros2Aimdk_msgsSrvPlayTts_Response, owner: Owner)
    throws
  { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/PlayVideo.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvPlayVideo_Request, response=Ros2Aimdk_msgsSrvPlayVideo_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvPlayVideoInterface {
  /// @brief Call the selected aimdk_msgs/srv/PlayVideo service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvPlayVideo_Request, response=Ros2Aimdk_msgsSrvPlayVideo_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func call(_ value: Ros2Aimdk_msgsSrvPlayVideo_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvPlayVideo_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvPlayVideo_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/PlayVideo service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvPlayVideo_Request, response=Ros2Aimdk_msgsSrvPlayVideo_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func incoming(owner: Owner) throws -> Incoming<Ros2Aimdk_msgsSrvPlayVideo_Request> {
    try owner.incoming(Ros2Aimdk_msgsSrvPlayVideo_Request.self)
  }
  /// @brief Respond once to a delivered aimdk_msgs/srv/PlayVideo service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvPlayVideo_Request,
  /// response=Ros2Aimdk_msgsSrvPlayVideo_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] id Exact nonzero u64 owned/delivered ID in this Instance/backend; never narrow or synthesize it.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func respond(
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvPlayVideo_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/SetAgentPropertiesRequest.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request,
/// response=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvSetAgentPropertiesRequestInterface {
  /// @brief Call the selected aimdk_msgs/srv/SetAgentPropertiesRequest service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request,
  /// response=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func call(_ value: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request, owner: Owner)
    throws -> Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/SetAgentPropertiesRequest service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request,
  /// response=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func incoming(owner: Owner) throws -> Incoming<
    Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/SetAgentPropertiesRequest service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request,
  /// response=Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] id Exact nonzero u64 owned/delivered ID in this Instance/backend; never narrow or synthesize it.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func respond(
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/SetMcAction.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvSetMcAction_Request,
/// response=Ros2Aimdk_msgsSrvSetMcAction_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvSetMcActionInterface {
  /// @brief Call the selected aimdk_msgs/srv/SetMcAction service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvSetMcAction_Request, response=Ros2Aimdk_msgsSrvSetMcAction_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func call(_ value: Ros2Aimdk_msgsSrvSetMcAction_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvSetMcAction_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvSetMcAction_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/SetMcAction service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvSetMcAction_Request, response=Ros2Aimdk_msgsSrvSetMcAction_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func incoming(owner: Owner) throws -> Incoming<Ros2Aimdk_msgsSrvSetMcAction_Request>
  { try owner.incoming(Ros2Aimdk_msgsSrvSetMcAction_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/SetMcAction service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvSetMcAction_Request,
  /// response=Ros2Aimdk_msgsSrvSetMcAction_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] id Exact nonzero u64 owned/delivered ID in this Instance/backend; never narrow or synthesize it.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func respond(
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvSetMcAction_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/SetMcInputSource.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvSetMcInputSource_Request,
/// response=Ros2Aimdk_msgsSrvSetMcInputSource_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvSetMcInputSourceInterface {
  /// @brief Call the selected aimdk_msgs/srv/SetMcInputSource service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvSetMcInputSource_Request,
  /// response=Ros2Aimdk_msgsSrvSetMcInputSource_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func call(_ value: Ros2Aimdk_msgsSrvSetMcInputSource_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvSetMcInputSource_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvSetMcInputSource_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/SetMcInputSource service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvSetMcInputSource_Request, response=Ros2Aimdk_msgsSrvSetMcInputSource_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func incoming(owner: Owner) throws -> Incoming<
    Ros2Aimdk_msgsSrvSetMcInputSource_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvSetMcInputSource_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/SetMcInputSource service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvSetMcInputSource_Request,
  /// response=Ros2Aimdk_msgsSrvSetMcInputSource_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] id Exact nonzero u64 owned/delivered ID in this Instance/backend; never narrow or synthesize it.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func respond(
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvSetMcInputSource_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/SetMcPresetMotion.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvSetMcPresetMotion_Request,
/// response=Ros2Aimdk_msgsSrvSetMcPresetMotion_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvSetMcPresetMotionInterface {
  /// @brief Call the selected aimdk_msgs/srv/SetMcPresetMotion service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvSetMcPresetMotion_Request,
  /// response=Ros2Aimdk_msgsSrvSetMcPresetMotion_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func call(_ value: Ros2Aimdk_msgsSrvSetMcPresetMotion_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvSetMcPresetMotion_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvSetMcPresetMotion_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/SetMcPresetMotion service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvSetMcPresetMotion_Request, response=Ros2Aimdk_msgsSrvSetMcPresetMotion_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func incoming(owner: Owner) throws -> Incoming<
    Ros2Aimdk_msgsSrvSetMcPresetMotion_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvSetMcPresetMotion_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/SetMcPresetMotion service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvSetMcPresetMotion_Request,
  /// response=Ros2Aimdk_msgsSrvSetMcPresetMotion_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] id Exact nonzero u64 owned/delivered ID in this Instance/backend; never narrow or synthesize it.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func respond(
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvSetMcPresetMotion_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/SetMute.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvSetMute_Request, response=Ros2Aimdk_msgsSrvSetMute_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvSetMuteInterface {
  /// @brief Call the selected aimdk_msgs/srv/SetMute service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvSetMute_Request, response=Ros2Aimdk_msgsSrvSetMute_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func call(_ value: Ros2Aimdk_msgsSrvSetMute_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvSetMute_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvSetMute_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/SetMute service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvSetMute_Request, response=Ros2Aimdk_msgsSrvSetMute_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func incoming(owner: Owner) throws -> Incoming<Ros2Aimdk_msgsSrvSetMute_Request> {
    try owner.incoming(Ros2Aimdk_msgsSrvSetMute_Request.self)
  }
  /// @brief Respond once to a delivered aimdk_msgs/srv/SetMute service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvSetMute_Request,
  /// response=Ros2Aimdk_msgsSrvSetMute_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] id Exact nonzero u64 owned/delivered ID in this Instance/backend; never narrow or synthesize it.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func respond(_ id: UInt64, _ value: Ros2Aimdk_msgsSrvSetMute_Response, owner: Owner)
    throws
  { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/SetVolume.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvSetVolume_Request, response=Ros2Aimdk_msgsSrvSetVolume_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvSetVolumeInterface {
  /// @brief Call the selected aimdk_msgs/srv/SetVolume service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvSetVolume_Request, response=Ros2Aimdk_msgsSrvSetVolume_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func call(_ value: Ros2Aimdk_msgsSrvSetVolume_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvSetVolume_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvSetVolume_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/SetVolume service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvSetVolume_Request, response=Ros2Aimdk_msgsSrvSetVolume_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func incoming(owner: Owner) throws -> Incoming<Ros2Aimdk_msgsSrvSetVolume_Request> {
    try owner.incoming(Ros2Aimdk_msgsSrvSetVolume_Request.self)
  }
  /// @brief Respond once to a delivered aimdk_msgs/srv/SetVolume service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvSetVolume_Request,
  /// response=Ros2Aimdk_msgsSrvSetVolume_Response.
  /// @return The typed operation result on success; language error/status on refusal.
  /// @param[in] id Exact nonzero u64 owned/delivered ID in this Instance/backend; never narrow or synthesize it.
  /// @param[in] value Complete selected message/request/goal/reply value; keep all backing storage stable during
  /// encoding.
  /// @param[in] owner Live separately granted exact-interface owner; borrow through synchronous return.
  /// @permissions The live same-Instance/backend owner must already carry this exact interface, operation,
  /// direction, quota and trusted deadline grant. Source generation grants none.
  /// @failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported and unknown timeout
  /// errors; publish no successful typed value after a failed decode.
  /// @lifetime Borrow owners, input values and caller buffers until synchronous return. Arena-backed returned values
  /// additionally borrow the documented decode storage.
  /// @thread Call on the admitted Guest executor thread; no callback or background executor is started.
  /// @version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.
  /// @see share/platform/ros/swift/API-CONTRACT.md
  public static func respond(
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvSetVolume_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
