// @file Interfaces.swift
// @brief Full ubtech swift codecs and original record metadata.
// @details Complete ubtech ros2_main values in swift. 8 original records retain 24 fields and 8 interface
// descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
// Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
// manual under document/platform/ubtech/en_US/catalog/.
// Generated typed interface entry points; no implicit resources.
import RosWasm

/// @brief Typed message entry points for grab_demo_msgs/msg/GraspCandidate.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Grab_demo_msgsMsgGraspCandidate.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Grab_demo_msgsMsgGraspCandidateInterface {
  /// @brief Publish one complete grab_demo_msgs/msg/GraspCandidate message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Grab_demo_msgsMsgGraspCandidate.
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
  public static func publish(_ value: Ros2Grab_demo_msgsMsgGraspCandidate, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete grab_demo_msgs/msg/GraspCandidate message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Grab_demo_msgsMsgGraspCandidate.
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
  public static func poll(owner: Owner) throws -> Ros2Grab_demo_msgsMsgGraspCandidate {
    try owner.poll(Ros2Grab_demo_msgsMsgGraspCandidate.self)
  }
}
/// @brief Typed message entry points for grab_demo_msgs/msg/IKRequest.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Grab_demo_msgsMsgIKRequest.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Grab_demo_msgsMsgIKRequestInterface {
  /// @brief Publish one complete grab_demo_msgs/msg/IKRequest message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Grab_demo_msgsMsgIKRequest.
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
  public static func publish(_ value: Ros2Grab_demo_msgsMsgIKRequest, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete grab_demo_msgs/msg/IKRequest message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Grab_demo_msgsMsgIKRequest.
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
  public static func poll(owner: Owner) throws -> Ros2Grab_demo_msgsMsgIKRequest {
    try owner.poll(Ros2Grab_demo_msgsMsgIKRequest.self)
  }
}
