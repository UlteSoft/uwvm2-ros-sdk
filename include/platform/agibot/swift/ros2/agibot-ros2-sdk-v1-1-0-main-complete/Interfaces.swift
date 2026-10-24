// @file Interfaces.swift
// @brief Full agibot swift codecs and original record metadata.
// @details Complete agibot ros2_sdk_v1_1_0_main values in swift. 166 original records retain 552 fields and 133
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
/// @brief Typed message entry points for aimdk_msgs/msg/AlertCode.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgAlertCode.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgAlertCodeInterface {
  /// @brief Publish one complete aimdk_msgs/msg/AlertCode message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAlertCode.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgAlertCode, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/AlertCode message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgAlertCode.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgAlertCode {
    try owner.poll(Ros2Aimdk_msgsMsgAlertCode.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/AlertCodeArray.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgAlertCodeArray.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgAlertCodeArrayInterface {
  /// @brief Publish one complete aimdk_msgs/msg/AlertCodeArray message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAlertCodeArray.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgAlertCodeArray, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/AlertCodeArray message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgAlertCodeArray.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgAlertCodeArray {
    try owner.poll(Ros2Aimdk_msgsMsgAlertCodeArray.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/AudioCapture.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgAudioCapture.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgAudioCaptureInterface {
  /// @brief Publish one complete aimdk_msgs/msg/AudioCapture message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioCapture.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgAudioCapture, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/AudioCapture message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgAudioCapture.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgAudioCapture {
    try owner.poll(Ros2Aimdk_msgsMsgAudioCapture.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/AudioData.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgAudioData.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgAudioDataInterface {
  /// @brief Publish one complete aimdk_msgs/msg/AudioData message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioData.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgAudioData, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/AudioData message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgAudioData.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgAudioData {
    try owner.poll(Ros2Aimdk_msgsMsgAudioData.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/AudioFile.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgAudioFile.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgAudioFileInterface {
  /// @brief Publish one complete aimdk_msgs/msg/AudioFile message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioFile.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgAudioFile, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/AudioFile message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgAudioFile.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgAudioFile {
    try owner.poll(Ros2Aimdk_msgsMsgAudioFile.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/AudioInfo.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgAudioInfo.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgAudioInfoInterface {
  /// @brief Publish one complete aimdk_msgs/msg/AudioInfo message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioInfo.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgAudioInfo, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/AudioInfo message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgAudioInfo.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgAudioInfo {
    try owner.poll(Ros2Aimdk_msgsMsgAudioInfo.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/AudioPlayback.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgAudioPlayback.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgAudioPlaybackInterface {
  /// @brief Publish one complete aimdk_msgs/msg/AudioPlayback message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgAudioPlayback.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgAudioPlayback, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/AudioPlayback message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgAudioPlayback.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgAudioPlayback {
    try owner.poll(Ros2Aimdk_msgsMsgAudioPlayback.self)
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
/// @brief Typed message entry points for aimdk_msgs/msg/CommonTaskRequest.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgCommonTaskRequest.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgCommonTaskRequestInterface {
  /// @brief Publish one complete aimdk_msgs/msg/CommonTaskRequest message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Aimdk_msgsMsgCommonTaskRequest.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgCommonTaskRequest, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/CommonTaskRequest message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgCommonTaskRequest.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgCommonTaskRequest {
    try owner.poll(Ros2Aimdk_msgsMsgCommonTaskRequest.self)
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
/// @brief Typed message entry points for aimdk_msgs/msg/CurrentVersion.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgCurrentVersion.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgCurrentVersionInterface {
  /// @brief Publish one complete aimdk_msgs/msg/CurrentVersion message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgCurrentVersion.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgCurrentVersion, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/CurrentVersion message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgCurrentVersion.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgCurrentVersion {
    try owner.poll(Ros2Aimdk_msgsMsgCurrentVersion.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/DiagnosticInfo.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgDiagnosticInfo.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgDiagnosticInfoInterface {
  /// @brief Publish one complete aimdk_msgs/msg/DiagnosticInfo message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgDiagnosticInfo.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgDiagnosticInfo, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/DiagnosticInfo message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgDiagnosticInfo.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgDiagnosticInfo {
    try owner.poll(Ros2Aimdk_msgsMsgDiagnosticInfo.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/DiagnosticInfoArray.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgDiagnosticInfoArray.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgDiagnosticInfoArrayInterface {
  /// @brief Publish one complete aimdk_msgs/msg/DiagnosticInfoArray message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Aimdk_msgsMsgDiagnosticInfoArray.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgDiagnosticInfoArray, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/DiagnosticInfoArray message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgDiagnosticInfoArray.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgDiagnosticInfoArray {
    try owner.poll(Ros2Aimdk_msgsMsgDiagnosticInfoArray.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/DiagnosticType.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgDiagnosticType.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgDiagnosticTypeInterface {
  /// @brief Publish one complete aimdk_msgs/msg/DiagnosticType message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgDiagnosticType.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgDiagnosticType, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/DiagnosticType message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgDiagnosticType.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgDiagnosticType {
    try owner.poll(Ros2Aimdk_msgsMsgDiagnosticType.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/DomainErrorState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgDomainErrorState.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgDomainErrorStateInterface {
  /// @brief Publish one complete aimdk_msgs/msg/DomainErrorState message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgDomainErrorState.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgDomainErrorState, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/DomainErrorState message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgDomainErrorState.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgDomainErrorState {
    try owner.poll(Ros2Aimdk_msgsMsgDomainErrorState.self)
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
/// @brief Typed message entry points for aimdk_msgs/msg/FixLineIntroState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgFixLineIntroState.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgFixLineIntroStateInterface {
  /// @brief Publish one complete aimdk_msgs/msg/FixLineIntroState message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Aimdk_msgsMsgFixLineIntroState.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgFixLineIntroState, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/FixLineIntroState message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgFixLineIntroState.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgFixLineIntroState {
    try owner.poll(Ros2Aimdk_msgsMsgFixLineIntroState.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/FocusRequester.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgFocusRequester.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgFocusRequesterInterface {
  /// @brief Publish one complete aimdk_msgs/msg/FocusRequester message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFocusRequester.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgFocusRequester, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/FocusRequester message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgFocusRequester.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgFocusRequester {
    try owner.poll(Ros2Aimdk_msgsMsgFocusRequester.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/FocusResponse.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgFocusResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgFocusResponseInterface {
  /// @brief Publish one complete aimdk_msgs/msg/FocusResponse message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgFocusResponse.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgFocusResponse, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/FocusResponse message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgFocusResponse.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgFocusResponse {
    try owner.poll(Ros2Aimdk_msgsMsgFocusResponse.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/HRPoint.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgHRPoint.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgHRPointInterface {
  /// @brief Publish one complete aimdk_msgs/msg/HRPoint message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHRPoint.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgHRPoint, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/HRPoint message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgHRPoint.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgHRPoint {
    try owner.poll(Ros2Aimdk_msgsMsgHRPoint.self)
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
/// @brief Typed message entry points for aimdk_msgs/msg/HandTouchSensorData.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgHandTouchSensorData.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgHandTouchSensorDataInterface {
  /// @brief Publish one complete aimdk_msgs/msg/HandTouchSensorData message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Aimdk_msgsMsgHandTouchSensorData.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgHandTouchSensorData, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/HandTouchSensorData message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgHandTouchSensorData.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgHandTouchSensorData {
    try owner.poll(Ros2Aimdk_msgsMsgHandTouchSensorData.self)
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
/// @brief Typed message entry points for aimdk_msgs/msg/HdsEventQuery.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgHdsEventQuery.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgHdsEventQueryInterface {
  /// @brief Publish one complete aimdk_msgs/msg/HdsEventQuery message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHdsEventQuery.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgHdsEventQuery, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/HdsEventQuery message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgHdsEventQuery.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgHdsEventQuery {
    try owner.poll(Ros2Aimdk_msgsMsgHdsEventQuery.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/HdsEventRecord.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgHdsEventRecord.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgHdsEventRecordInterface {
  /// @brief Publish one complete aimdk_msgs/msg/HdsEventRecord message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgHdsEventRecord.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgHdsEventRecord, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/HdsEventRecord message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgHdsEventRecord.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgHdsEventRecord {
    try owner.poll(Ros2Aimdk_msgsMsgHdsEventRecord.self)
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
/// @brief Typed message entry points for aimdk_msgs/msg/McBodyPoseStatus.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMcBodyPoseStatus.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMcBodyPoseStatusInterface {
  /// @brief Publish one complete aimdk_msgs/msg/McBodyPoseStatus message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcBodyPoseStatus.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgMcBodyPoseStatus, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/McBodyPoseStatus message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgMcBodyPoseStatus.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMcBodyPoseStatus {
    try owner.poll(Ros2Aimdk_msgsMsgMcBodyPoseStatus.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/McCommonState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMcCommonState.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMcCommonStateInterface {
  /// @brief Publish one complete aimdk_msgs/msg/McCommonState message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcCommonState.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgMcCommonState, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/McCommonState message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgMcCommonState.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMcCommonState {
    try owner.poll(Ros2Aimdk_msgsMsgMcCommonState.self)
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
/// @brief Typed message entry points for aimdk_msgs/msg/McFsmState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMcFsmState.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMcFsmStateInterface {
  /// @brief Publish one complete aimdk_msgs/msg/McFsmState message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcFsmState.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgMcFsmState, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/McFsmState message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgMcFsmState.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMcFsmState {
    try owner.poll(Ros2Aimdk_msgsMsgMcFsmState.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/McHandStatus.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMcHandStatus.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMcHandStatusInterface {
  /// @brief Publish one complete aimdk_msgs/msg/McHandStatus message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcHandStatus.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgMcHandStatus, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/McHandStatus message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgMcHandStatus.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMcHandStatus {
    try owner.poll(Ros2Aimdk_msgsMsgMcHandStatus.self)
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
/// @brief Typed message entry points for aimdk_msgs/msg/McLocomotionSpeedBounds.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMcLocomotionSpeedBoundsInterface {
  /// @brief Publish one complete aimdk_msgs/msg/McLocomotionSpeedBounds message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds, owner: Owner) throws
  { try owner.publish(value) }
  /// @brief Poll and decode one complete aimdk_msgs/msg/McLocomotionSpeedBounds message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds {
    try owner.poll(Ros2Aimdk_msgsMsgMcLocomotionSpeedBounds.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/McLocomotionSpeedMode.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMcLocomotionSpeedMode.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMcLocomotionSpeedModeInterface {
  /// @brief Publish one complete aimdk_msgs/msg/McLocomotionSpeedMode message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedMode.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgMcLocomotionSpeedMode, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/McLocomotionSpeedMode message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedMode.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMcLocomotionSpeedMode {
    try owner.poll(Ros2Aimdk_msgsMsgMcLocomotionSpeedMode.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/McLocomotionSpeedStatus.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMcLocomotionSpeedStatusInterface {
  /// @brief Publish one complete aimdk_msgs/msg/McLocomotionSpeedStatus message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus, owner: Owner) throws
  { try owner.publish(value) }
  /// @brief Poll and decode one complete aimdk_msgs/msg/McLocomotionSpeedStatus message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus {
    try owner.poll(Ros2Aimdk_msgsMsgMcLocomotionSpeedStatus.self)
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
/// @brief Typed message entry points for aimdk_msgs/msg/McMotionStatus.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMcMotionStatus.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMcMotionStatusInterface {
  /// @brief Publish one complete aimdk_msgs/msg/McMotionStatus message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcMotionStatus.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgMcMotionStatus, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/McMotionStatus message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgMcMotionStatus.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMcMotionStatus {
    try owner.poll(Ros2Aimdk_msgsMsgMcMotionStatus.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/McMotionType.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMcMotionType.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMcMotionTypeInterface {
  /// @brief Publish one complete aimdk_msgs/msg/McMotionType message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcMotionType.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgMcMotionType, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/McMotionType message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgMcMotionType.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMcMotionType {
    try owner.poll(Ros2Aimdk_msgsMsgMcMotionType.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/McPlayerState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMcPlayerState.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMcPlayerStateInterface {
  /// @brief Publish one complete aimdk_msgs/msg/McPlayerState message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcPlayerState.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgMcPlayerState, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/McPlayerState message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgMcPlayerState.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMcPlayerState {
    try owner.poll(Ros2Aimdk_msgsMsgMcPlayerState.self)
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
/// @brief Typed message entry points for aimdk_msgs/msg/McRuntimeModel.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMcRuntimeModel.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMcRuntimeModelInterface {
  /// @brief Publish one complete aimdk_msgs/msg/McRuntimeModel message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcRuntimeModel.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgMcRuntimeModel, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/McRuntimeModel message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgMcRuntimeModel.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMcRuntimeModel {
    try owner.poll(Ros2Aimdk_msgsMsgMcRuntimeModel.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/McServoStatus.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgMcServoStatus.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgMcServoStatusInterface {
  /// @brief Publish one complete aimdk_msgs/msg/McServoStatus message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgMcServoStatus.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgMcServoStatus, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/McServoStatus message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgMcServoStatus.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgMcServoStatus {
    try owner.poll(Ros2Aimdk_msgsMsgMcServoStatus.self)
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
/// @brief Typed message entry points for aimdk_msgs/msg/NaviPoint.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgNaviPoint.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgNaviPointInterface {
  /// @brief Publish one complete aimdk_msgs/msg/NaviPoint message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgNaviPoint.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgNaviPoint, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/NaviPoint message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgNaviPoint.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgNaviPoint {
    try owner.poll(Ros2Aimdk_msgsMsgNaviPoint.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/Path.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgPath.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgPathInterface {
  /// @brief Publish one complete aimdk_msgs/msg/Path message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPath.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgPath, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/Path message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgPath.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgPath {
    try owner.poll(Ros2Aimdk_msgsMsgPath.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/PilotState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgPilotState.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgPilotStateInterface {
  /// @brief Publish one complete aimdk_msgs/msg/PilotState message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPilotState.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgPilotState, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/PilotState message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgPilotState.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgPilotState {
    try owner.poll(Ros2Aimdk_msgsMsgPilotState.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/PlayStateChange.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgPlayStateChange.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgPlayStateChangeInterface {
  /// @brief Publish one complete aimdk_msgs/msg/PlayStateChange message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayStateChange.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgPlayStateChange, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/PlayStateChange message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgPlayStateChange.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgPlayStateChange {
    try owner.poll(Ros2Aimdk_msgsMsgPlayStateChange.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/PlayStateType.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgPlayStateType.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgPlayStateTypeInterface {
  /// @brief Publish one complete aimdk_msgs/msg/PlayStateType message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPlayStateType.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgPlayStateType, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/PlayStateType message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgPlayStateType.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgPlayStateType {
    try owner.poll(Ros2Aimdk_msgsMsgPlayStateType.self)
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
/// @brief Typed message entry points for aimdk_msgs/msg/PmuLedState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgPmuLedState.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgPmuLedStateInterface {
  /// @brief Publish one complete aimdk_msgs/msg/PmuLedState message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPmuLedState.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgPmuLedState, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/PmuLedState message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgPmuLedState.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgPmuLedState {
    try owner.poll(Ros2Aimdk_msgsMsgPmuLedState.self)
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
/// @brief Typed message entry points for aimdk_msgs/msg/PncTaskRequest.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgPncTaskRequest.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgPncTaskRequestInterface {
  /// @brief Publish one complete aimdk_msgs/msg/PncTaskRequest message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPncTaskRequest.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgPncTaskRequest, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/PncTaskRequest message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgPncTaskRequest.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgPncTaskRequest {
    try owner.poll(Ros2Aimdk_msgsMsgPncTaskRequest.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/PncTaskResponse.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgPncTaskResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgPncTaskResponseInterface {
  /// @brief Publish one complete aimdk_msgs/msg/PncTaskResponse message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPncTaskResponse.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgPncTaskResponse, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/PncTaskResponse message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgPncTaskResponse.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgPncTaskResponse {
    try owner.poll(Ros2Aimdk_msgsMsgPncTaskResponse.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/PostProcSig.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgPostProcSig.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgPostProcSigInterface {
  /// @brief Publish one complete aimdk_msgs/msg/PostProcSig message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPostProcSig.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgPostProcSig, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/PostProcSig message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgPostProcSig.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgPostProcSig {
    try owner.poll(Ros2Aimdk_msgsMsgPostProcSig.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/PostProcSigArray.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgPostProcSigArray.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgPostProcSigArrayInterface {
  /// @brief Publish one complete aimdk_msgs/msg/PostProcSigArray message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgPostProcSigArray.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgPostProcSigArray, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/PostProcSigArray message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgPostProcSigArray.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgPostProcSigArray {
    try owner.poll(Ros2Aimdk_msgsMsgPostProcSigArray.self)
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
/// @brief Typed message entry points for aimdk_msgs/msg/QRCode.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgQRCode.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgQRCodeInterface {
  /// @brief Publish one complete aimdk_msgs/msg/QRCode message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgQRCode.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgQRCode, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/QRCode message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgQRCode.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgQRCode {
    try owner.poll(Ros2Aimdk_msgsMsgQRCode.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/QRPoint.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgQRPoint.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgQRPointInterface {
  /// @brief Publish one complete aimdk_msgs/msg/QRPoint message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgQRPoint.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgQRPoint, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/QRPoint message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgQRPoint.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgQRPoint {
    try owner.poll(Ros2Aimdk_msgsMsgQRPoint.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/Region.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgRegion.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgRegionInterface {
  /// @brief Publish one complete aimdk_msgs/msg/Region message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgRegion.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgRegion, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/Region message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgRegion.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgRegion {
    try owner.poll(Ros2Aimdk_msgsMsgRegion.self)
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
/// @brief Typed message entry points for aimdk_msgs/msg/RobotResource.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgRobotResource.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgRobotResourceInterface {
  /// @brief Publish one complete aimdk_msgs/msg/RobotResource message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgRobotResource.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgRobotResource, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/RobotResource message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgRobotResource.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgRobotResource {
    try owner.poll(Ros2Aimdk_msgsMsgRobotResource.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/SigSet.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgSigSet.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgSigSetInterface {
  /// @brief Publish one complete aimdk_msgs/msg/SigSet message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSigSet.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgSigSet, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/SigSet message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components: message=Ros2Aimdk_msgsMsgSigSet.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgSigSet {
    try owner.poll(Ros2Aimdk_msgsMsgSigSet.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/SlaveDevice.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgSlaveDevice.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgSlaveDeviceInterface {
  /// @brief Publish one complete aimdk_msgs/msg/SlaveDevice message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSlaveDevice.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgSlaveDevice, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/SlaveDevice message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgSlaveDevice.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgSlaveDevice {
    try owner.poll(Ros2Aimdk_msgsMsgSlaveDevice.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/SmSystemState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgSmSystemState.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgSmSystemStateInterface {
  /// @brief Publish one complete aimdk_msgs/msg/SmSystemState message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSmSystemState.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgSmSystemState, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/SmSystemState message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgSmSystemState.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgSmSystemState {
    try owner.poll(Ros2Aimdk_msgsMsgSmSystemState.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/SystemStatus.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgSystemStatus.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgSystemStatusInterface {
  /// @brief Publish one complete aimdk_msgs/msg/SystemStatus message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgSystemStatus.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgSystemStatus, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/SystemStatus message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgSystemStatus.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgSystemStatus {
    try owner.poll(Ros2Aimdk_msgsMsgSystemStatus.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/TaskMasterState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgTaskMasterState.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgTaskMasterStateInterface {
  /// @brief Publish one complete aimdk_msgs/msg/TaskMasterState message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgTaskMasterState.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgTaskMasterState, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/TaskMasterState message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgTaskMasterState.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgTaskMasterState {
    try owner.poll(Ros2Aimdk_msgsMsgTaskMasterState.self)
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
/// @brief Typed message entry points for aimdk_msgs/msg/UpperBodyCommandArray.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgUpperBodyCommandArray.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgUpperBodyCommandArrayInterface {
  /// @brief Publish one complete aimdk_msgs/msg/UpperBodyCommandArray message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Aimdk_msgsMsgUpperBodyCommandArray.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgUpperBodyCommandArray, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/UpperBodyCommandArray message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgUpperBodyCommandArray.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgUpperBodyCommandArray {
    try owner.poll(Ros2Aimdk_msgsMsgUpperBodyCommandArray.self)
  }
}
/// @brief Typed service entry points for aimdk_msgs/srv/AbandonAudioFocus.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvAbandonAudioFocus_Request,
/// response=Ros2Aimdk_msgsSrvAbandonAudioFocus_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvAbandonAudioFocusInterface {
  /// @brief Call the selected aimdk_msgs/srv/AbandonAudioFocus service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvAbandonAudioFocus_Request,
  /// response=Ros2Aimdk_msgsSrvAbandonAudioFocus_Response.
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
  public static func call(_ value: Ros2Aimdk_msgsSrvAbandonAudioFocus_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvAbandonAudioFocus_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvAbandonAudioFocus_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/AbandonAudioFocus service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvAbandonAudioFocus_Request, response=Ros2Aimdk_msgsSrvAbandonAudioFocus_Response.
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
    Ros2Aimdk_msgsSrvAbandonAudioFocus_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvAbandonAudioFocus_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/AbandonAudioFocus service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvAbandonAudioFocus_Request,
  /// response=Ros2Aimdk_msgsSrvAbandonAudioFocus_Response.
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
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvAbandonAudioFocus_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/ExecuteActionResource.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvExecuteActionResource_Request,
/// response=Ros2Aimdk_msgsSrvExecuteActionResource_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvExecuteActionResourceInterface {
  /// @brief Call the selected aimdk_msgs/srv/ExecuteActionResource service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvExecuteActionResource_Request,
  /// response=Ros2Aimdk_msgsSrvExecuteActionResource_Response.
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
  public static func call(_ value: Ros2Aimdk_msgsSrvExecuteActionResource_Request, owner: Owner)
    throws -> Ros2Aimdk_msgsSrvExecuteActionResource_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvExecuteActionResource_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/ExecuteActionResource service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvExecuteActionResource_Request,
  /// response=Ros2Aimdk_msgsSrvExecuteActionResource_Response.
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
    Ros2Aimdk_msgsSrvExecuteActionResource_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvExecuteActionResource_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/ExecuteActionResource service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Aimdk_msgsSrvExecuteActionResource_Request,
  /// response=Ros2Aimdk_msgsSrvExecuteActionResource_Response.
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
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvExecuteActionResource_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
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
/// @brief Typed service entry points for aimdk_msgs/srv/GetHdsEventHistory.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvGetHdsEventHistory_Request,
/// response=Ros2Aimdk_msgsSrvGetHdsEventHistory_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvGetHdsEventHistoryInterface {
  /// @brief Call the selected aimdk_msgs/srv/GetHdsEventHistory service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvGetHdsEventHistory_Request,
  /// response=Ros2Aimdk_msgsSrvGetHdsEventHistory_Response.
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
  public static func call(_ value: Ros2Aimdk_msgsSrvGetHdsEventHistory_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvGetHdsEventHistory_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvGetHdsEventHistory_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/GetHdsEventHistory service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvGetHdsEventHistory_Request, response=Ros2Aimdk_msgsSrvGetHdsEventHistory_Response.
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
    Ros2Aimdk_msgsSrvGetHdsEventHistory_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvGetHdsEventHistory_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/GetHdsEventHistory service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGetHdsEventHistory_Request,
  /// response=Ros2Aimdk_msgsSrvGetHdsEventHistory_Response.
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
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvGetHdsEventHistory_Response, owner: Owner
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
/// @brief Typed service entry points for aimdk_msgs/srv/GetMcLocomotionSpeedStatus.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request,
/// response=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatusInterface {
  /// @brief Call the selected aimdk_msgs/srv/GetMcLocomotionSpeedStatus service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request,
  /// response=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response.
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
  public static func call(
    _ value: Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request, owner: Owner
  ) throws -> Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response {
    try owner.call(value, response: Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response.self)
  }
  /// @brief Receive an actually delivered aimdk_msgs/srv/GetMcLocomotionSpeedStatus service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request,
  /// response=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response.
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
    Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/GetMcLocomotionSpeedStatus service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Request,
  /// response=Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response.
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
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvGetMcLocomotionSpeedStatus_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/GetMcPresetMotionState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request,
/// response=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvGetMcPresetMotionStateInterface {
  /// @brief Call the selected aimdk_msgs/srv/GetMcPresetMotionState service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request,
  /// response=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response.
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
  public static func call(_ value: Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request, owner: Owner)
    throws -> Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/GetMcPresetMotionState service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request,
  /// response=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response.
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
    Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/GetMcPresetMotionState service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Request,
  /// response=Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response.
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
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvGetMcPresetMotionState_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/GetMicSourceRequest.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvGetMicSourceRequest_Request,
/// response=Ros2Aimdk_msgsSrvGetMicSourceRequest_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvGetMicSourceRequestInterface {
  /// @brief Call the selected aimdk_msgs/srv/GetMicSourceRequest service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvGetMicSourceRequest_Request,
  /// response=Ros2Aimdk_msgsSrvGetMicSourceRequest_Response.
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
  public static func call(_ value: Ros2Aimdk_msgsSrvGetMicSourceRequest_Request, owner: Owner)
    throws -> Ros2Aimdk_msgsSrvGetMicSourceRequest_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvGetMicSourceRequest_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/GetMicSourceRequest service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvGetMicSourceRequest_Request, response=Ros2Aimdk_msgsSrvGetMicSourceRequest_Response.
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
    Ros2Aimdk_msgsSrvGetMicSourceRequest_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvGetMicSourceRequest_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/GetMicSourceRequest service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGetMicSourceRequest_Request,
  /// response=Ros2Aimdk_msgsSrvGetMicSourceRequest_Response.
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
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvGetMicSourceRequest_Response, owner: Owner
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
/// @brief Typed service entry points for aimdk_msgs/srv/GetRobotResources.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvGetRobotResources_Request,
/// response=Ros2Aimdk_msgsSrvGetRobotResources_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvGetRobotResourcesInterface {
  /// @brief Call the selected aimdk_msgs/srv/GetRobotResources service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvGetRobotResources_Request,
  /// response=Ros2Aimdk_msgsSrvGetRobotResources_Response.
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
  public static func call(_ value: Ros2Aimdk_msgsSrvGetRobotResources_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvGetRobotResources_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvGetRobotResources_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/GetRobotResources service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvGetRobotResources_Request, response=Ros2Aimdk_msgsSrvGetRobotResources_Response.
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
    Ros2Aimdk_msgsSrvGetRobotResources_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvGetRobotResources_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/GetRobotResources service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGetRobotResources_Request,
  /// response=Ros2Aimdk_msgsSrvGetRobotResources_Response.
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
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvGetRobotResources_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/GetStoredMapByName.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvGetStoredMapByName_Request,
/// response=Ros2Aimdk_msgsSrvGetStoredMapByName_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvGetStoredMapByNameInterface {
  /// @brief Call the selected aimdk_msgs/srv/GetStoredMapByName service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvGetStoredMapByName_Request,
  /// response=Ros2Aimdk_msgsSrvGetStoredMapByName_Response.
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
  public static func call(_ value: Ros2Aimdk_msgsSrvGetStoredMapByName_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvGetStoredMapByName_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvGetStoredMapByName_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/GetStoredMapByName service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvGetStoredMapByName_Request, response=Ros2Aimdk_msgsSrvGetStoredMapByName_Response.
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
    Ros2Aimdk_msgsSrvGetStoredMapByName_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvGetStoredMapByName_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/GetStoredMapByName service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGetStoredMapByName_Request,
  /// response=Ros2Aimdk_msgsSrvGetStoredMapByName_Response.
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
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvGetStoredMapByName_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/GetSystemState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvGetSystemState_Request,
/// response=Ros2Aimdk_msgsSrvGetSystemState_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvGetSystemStateInterface {
  /// @brief Call the selected aimdk_msgs/srv/GetSystemState service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvGetSystemState_Request, response=Ros2Aimdk_msgsSrvGetSystemState_Response.
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
  public static func call(_ value: Ros2Aimdk_msgsSrvGetSystemState_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvGetSystemState_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvGetSystemState_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/GetSystemState service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvGetSystemState_Request, response=Ros2Aimdk_msgsSrvGetSystemState_Response.
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
    Ros2Aimdk_msgsSrvGetSystemState_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvGetSystemState_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/GetSystemState service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvGetSystemState_Request,
  /// response=Ros2Aimdk_msgsSrvGetSystemState_Response.
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
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvGetSystemState_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
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
/// @brief Typed service entry points for aimdk_msgs/srv/GroupControlTimeSync.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvGroupControlTimeSync_Request,
/// response=Ros2Aimdk_msgsSrvGroupControlTimeSync_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvGroupControlTimeSyncInterface {
  /// @brief Call the selected aimdk_msgs/srv/GroupControlTimeSync service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvGroupControlTimeSync_Request,
  /// response=Ros2Aimdk_msgsSrvGroupControlTimeSync_Response.
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
  public static func call(_ value: Ros2Aimdk_msgsSrvGroupControlTimeSync_Request, owner: Owner)
    throws -> Ros2Aimdk_msgsSrvGroupControlTimeSync_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvGroupControlTimeSync_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/GroupControlTimeSync service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvGroupControlTimeSync_Request, response=Ros2Aimdk_msgsSrvGroupControlTimeSync_Response.
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
    Ros2Aimdk_msgsSrvGroupControlTimeSync_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvGroupControlTimeSync_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/GroupControlTimeSync service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Aimdk_msgsSrvGroupControlTimeSync_Request, response=Ros2Aimdk_msgsSrvGroupControlTimeSync_Response.
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
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvGroupControlTimeSync_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/MigrateSystemState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvMigrateSystemState_Request,
/// response=Ros2Aimdk_msgsSrvMigrateSystemState_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvMigrateSystemStateInterface {
  /// @brief Call the selected aimdk_msgs/srv/MigrateSystemState service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvMigrateSystemState_Request,
  /// response=Ros2Aimdk_msgsSrvMigrateSystemState_Response.
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
  public static func call(_ value: Ros2Aimdk_msgsSrvMigrateSystemState_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvMigrateSystemState_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvMigrateSystemState_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/MigrateSystemState service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvMigrateSystemState_Request, response=Ros2Aimdk_msgsSrvMigrateSystemState_Response.
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
    Ros2Aimdk_msgsSrvMigrateSystemState_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvMigrateSystemState_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/MigrateSystemState service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvMigrateSystemState_Request,
  /// response=Ros2Aimdk_msgsSrvMigrateSystemState_Response.
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
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvMigrateSystemState_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/PlayAudioFile.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvPlayAudioFile_Request,
/// response=Ros2Aimdk_msgsSrvPlayAudioFile_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvPlayAudioFileInterface {
  /// @brief Call the selected aimdk_msgs/srv/PlayAudioFile service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvPlayAudioFile_Request, response=Ros2Aimdk_msgsSrvPlayAudioFile_Response.
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
  public static func call(_ value: Ros2Aimdk_msgsSrvPlayAudioFile_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvPlayAudioFile_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvPlayAudioFile_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/PlayAudioFile service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvPlayAudioFile_Request, response=Ros2Aimdk_msgsSrvPlayAudioFile_Response.
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
    Ros2Aimdk_msgsSrvPlayAudioFile_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvPlayAudioFile_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/PlayAudioFile service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvPlayAudioFile_Request,
  /// response=Ros2Aimdk_msgsSrvPlayAudioFile_Response.
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
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvPlayAudioFile_Response, owner: Owner
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
/// @brief Typed service entry points for aimdk_msgs/srv/PlayEmojiGroup.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvPlayEmojiGroup_Request,
/// response=Ros2Aimdk_msgsSrvPlayEmojiGroup_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvPlayEmojiGroupInterface {
  /// @brief Call the selected aimdk_msgs/srv/PlayEmojiGroup service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvPlayEmojiGroup_Request, response=Ros2Aimdk_msgsSrvPlayEmojiGroup_Response.
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
  public static func call(_ value: Ros2Aimdk_msgsSrvPlayEmojiGroup_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvPlayEmojiGroup_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvPlayEmojiGroup_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/PlayEmojiGroup service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvPlayEmojiGroup_Request, response=Ros2Aimdk_msgsSrvPlayEmojiGroup_Response.
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
    Ros2Aimdk_msgsSrvPlayEmojiGroup_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvPlayEmojiGroup_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/PlayEmojiGroup service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvPlayEmojiGroup_Request,
  /// response=Ros2Aimdk_msgsSrvPlayEmojiGroup_Response.
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
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvPlayEmojiGroup_Response, owner: Owner
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
/// @brief Typed service entry points for aimdk_msgs/srv/PlayVideoGroup.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvPlayVideoGroup_Request,
/// response=Ros2Aimdk_msgsSrvPlayVideoGroup_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvPlayVideoGroupInterface {
  /// @brief Call the selected aimdk_msgs/srv/PlayVideoGroup service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvPlayVideoGroup_Request, response=Ros2Aimdk_msgsSrvPlayVideoGroup_Response.
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
  public static func call(_ value: Ros2Aimdk_msgsSrvPlayVideoGroup_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvPlayVideoGroup_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvPlayVideoGroup_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/PlayVideoGroup service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvPlayVideoGroup_Request, response=Ros2Aimdk_msgsSrvPlayVideoGroup_Response.
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
    Ros2Aimdk_msgsSrvPlayVideoGroup_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvPlayVideoGroup_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/PlayVideoGroup service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvPlayVideoGroup_Request,
  /// response=Ros2Aimdk_msgsSrvPlayVideoGroup_Response.
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
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvPlayVideoGroup_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for aimdk_msgs/srv/RequestAudioFocus.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvRequestAudioFocus_Request,
/// response=Ros2Aimdk_msgsSrvRequestAudioFocus_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvRequestAudioFocusInterface {
  /// @brief Call the selected aimdk_msgs/srv/RequestAudioFocus service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvRequestAudioFocus_Request,
  /// response=Ros2Aimdk_msgsSrvRequestAudioFocus_Response.
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
  public static func call(_ value: Ros2Aimdk_msgsSrvRequestAudioFocus_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvRequestAudioFocus_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvRequestAudioFocus_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/RequestAudioFocus service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvRequestAudioFocus_Request, response=Ros2Aimdk_msgsSrvRequestAudioFocus_Response.
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
    Ros2Aimdk_msgsSrvRequestAudioFocus_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvRequestAudioFocus_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/RequestAudioFocus service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvRequestAudioFocus_Request,
  /// response=Ros2Aimdk_msgsSrvRequestAudioFocus_Response.
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
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvRequestAudioFocus_Response, owner: Owner
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
/// @brief Typed service entry points for aimdk_msgs/srv/SetMicSourceRequest.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvSetMicSourceRequest_Request,
/// response=Ros2Aimdk_msgsSrvSetMicSourceRequest_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvSetMicSourceRequestInterface {
  /// @brief Call the selected aimdk_msgs/srv/SetMicSourceRequest service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvSetMicSourceRequest_Request,
  /// response=Ros2Aimdk_msgsSrvSetMicSourceRequest_Response.
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
  public static func call(_ value: Ros2Aimdk_msgsSrvSetMicSourceRequest_Request, owner: Owner)
    throws -> Ros2Aimdk_msgsSrvSetMicSourceRequest_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvSetMicSourceRequest_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/SetMicSourceRequest service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvSetMicSourceRequest_Request, response=Ros2Aimdk_msgsSrvSetMicSourceRequest_Response.
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
    Ros2Aimdk_msgsSrvSetMicSourceRequest_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvSetMicSourceRequest_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/SetMicSourceRequest service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvSetMicSourceRequest_Request,
  /// response=Ros2Aimdk_msgsSrvSetMicSourceRequest_Response.
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
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvSetMicSourceRequest_Response, owner: Owner
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
/// @brief Typed service entry points for aimdk_msgs/srv/SetPmuLed.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvSetPmuLed_Request, response=Ros2Aimdk_msgsSrvSetPmuLed_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvSetPmuLedInterface {
  /// @brief Call the selected aimdk_msgs/srv/SetPmuLed service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvSetPmuLed_Request, response=Ros2Aimdk_msgsSrvSetPmuLed_Response.
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
  public static func call(_ value: Ros2Aimdk_msgsSrvSetPmuLed_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvSetPmuLed_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvSetPmuLed_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/SetPmuLed service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvSetPmuLed_Request, response=Ros2Aimdk_msgsSrvSetPmuLed_Response.
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
  public static func incoming(owner: Owner) throws -> Incoming<Ros2Aimdk_msgsSrvSetPmuLed_Request> {
    try owner.incoming(Ros2Aimdk_msgsSrvSetPmuLed_Request.self)
  }
  /// @brief Respond once to a delivered aimdk_msgs/srv/SetPmuLed service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvSetPmuLed_Request,
  /// response=Ros2Aimdk_msgsSrvSetPmuLed_Response.
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
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvSetPmuLed_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
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
/// @brief Typed service entry points for aimdk_msgs/srv/StopAudioPlay.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Aimdk_msgsSrvStopAudioPlay_Request,
/// response=Ros2Aimdk_msgsSrvStopAudioPlay_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsSrvStopAudioPlayInterface {
  /// @brief Call the selected aimdk_msgs/srv/StopAudioPlay service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Aimdk_msgsSrvStopAudioPlay_Request, response=Ros2Aimdk_msgsSrvStopAudioPlay_Response.
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
  public static func call(_ value: Ros2Aimdk_msgsSrvStopAudioPlay_Request, owner: Owner) throws
    -> Ros2Aimdk_msgsSrvStopAudioPlay_Response
  { try owner.call(value, response: Ros2Aimdk_msgsSrvStopAudioPlay_Response.self) }
  /// @brief Receive an actually delivered aimdk_msgs/srv/StopAudioPlay service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Aimdk_msgsSrvStopAudioPlay_Request, response=Ros2Aimdk_msgsSrvStopAudioPlay_Response.
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
    Ros2Aimdk_msgsSrvStopAudioPlay_Request
  > { try owner.incoming(Ros2Aimdk_msgsSrvStopAudioPlay_Request.self) }
  /// @brief Respond once to a delivered aimdk_msgs/srv/StopAudioPlay service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Aimdk_msgsSrvStopAudioPlay_Request,
  /// response=Ros2Aimdk_msgsSrvStopAudioPlay_Response.
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
    _ id: UInt64, _ value: Ros2Aimdk_msgsSrvStopAudioPlay_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
