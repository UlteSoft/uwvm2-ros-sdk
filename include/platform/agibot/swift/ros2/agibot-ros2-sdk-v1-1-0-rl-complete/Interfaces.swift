// @file Interfaces.swift
// @brief Full agibot swift codecs and original record metadata.
// @details Complete agibot ros2_sdk_v1_1_0_rl values in swift. 19 original records retain 71 fields and 19
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/agibot/en_US/catalog/.
// Generated typed interface entry points; no implicit resources.
import RosWasm

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
/// @brief Typed message entry points for aimdk_msgs/msg/ModuleChannelInfo.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgModuleChannelInfo.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgModuleChannelInfoInterface {
  /// @brief Publish one complete aimdk_msgs/msg/ModuleChannelInfo message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Aimdk_msgsMsgModuleChannelInfo.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgModuleChannelInfo, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/ModuleChannelInfo message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgModuleChannelInfo.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgModuleChannelInfo {
    try owner.poll(Ros2Aimdk_msgsMsgModuleChannelInfo.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/ModuleResourceInfo.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgModuleResourceInfo.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgModuleResourceInfoInterface {
  /// @brief Publish one complete aimdk_msgs/msg/ModuleResourceInfo message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Aimdk_msgsMsgModuleResourceInfo.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgModuleResourceInfo, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/ModuleResourceInfo message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgModuleResourceInfo.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgModuleResourceInfo {
    try owner.poll(Ros2Aimdk_msgsMsgModuleResourceInfo.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/ModuleRpcInfo.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgModuleRpcInfo.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgModuleRpcInfoInterface {
  /// @brief Publish one complete aimdk_msgs/msg/ModuleRpcInfo message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgModuleRpcInfo.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgModuleRpcInfo, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/ModuleRpcInfo message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgModuleRpcInfo.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgModuleRpcInfo {
    try owner.poll(Ros2Aimdk_msgsMsgModuleRpcInfo.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/ProcessInfo.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgProcessInfo.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgProcessInfoInterface {
  /// @brief Publish one complete aimdk_msgs/msg/ProcessInfo message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Aimdk_msgsMsgProcessInfo.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgProcessInfo, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/ProcessInfo message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgProcessInfo.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgProcessInfo {
    try owner.poll(Ros2Aimdk_msgsMsgProcessInfo.self)
  }
}
/// @brief Typed message entry points for aimdk_msgs/msg/ProcessResourceInfo.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgProcessResourceInfo.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgProcessResourceInfoInterface {
  /// @brief Publish one complete aimdk_msgs/msg/ProcessResourceInfo message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Aimdk_msgsMsgProcessResourceInfo.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgProcessResourceInfo, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/ProcessResourceInfo message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgProcessResourceInfo.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgProcessResourceInfo {
    try owner.poll(Ros2Aimdk_msgsMsgProcessResourceInfo.self)
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
/// @brief Typed message entry points for aimdk_msgs/msg/ThreadResourceInfo.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Aimdk_msgsMsgThreadResourceInfo.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Aimdk_msgsMsgThreadResourceInfoInterface {
  /// @brief Publish one complete aimdk_msgs/msg/ThreadResourceInfo message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Aimdk_msgsMsgThreadResourceInfo.
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
  public static func publish(_ value: Ros2Aimdk_msgsMsgThreadResourceInfo, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete aimdk_msgs/msg/ThreadResourceInfo message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Aimdk_msgsMsgThreadResourceInfo.
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
  public static func poll(owner: Owner) throws -> Ros2Aimdk_msgsMsgThreadResourceInfo {
    try owner.poll(Ros2Aimdk_msgsMsgThreadResourceInfo.self)
  }
}
