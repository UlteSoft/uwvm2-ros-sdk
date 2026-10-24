// @file Interfaces.swift
// @brief Full fourier swift codecs and original record metadata.
// @details Complete fourier ros2_aurora_bridge_v1 values in swift. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
// Generated typed interface entry points; no implicit resources.
import RosWasm

/// @brief Typed message entry points for uwvm_fourier_bridge/msg/GroupState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Uwvm_fourier_bridgeMsgGroupState.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeMsgGroupStateInterface {
  /// @brief Publish one complete uwvm_fourier_bridge/msg/GroupState message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Uwvm_fourier_bridgeMsgGroupState.
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
  public static func publish(_ value: Ros2Uwvm_fourier_bridgeMsgGroupState, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete uwvm_fourier_bridge/msg/GroupState message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Uwvm_fourier_bridgeMsgGroupState.
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
  public static func poll(owner: Owner) throws -> Ros2Uwvm_fourier_bridgeMsgGroupState {
    try owner.poll(Ros2Uwvm_fourier_bridgeMsgGroupState.self)
  }
}
/// @brief Typed message entry points for uwvm_fourier_bridge/msg/GroupValues.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Uwvm_fourier_bridgeMsgGroupValues.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeMsgGroupValuesInterface {
  /// @brief Publish one complete uwvm_fourier_bridge/msg/GroupValues message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Uwvm_fourier_bridgeMsgGroupValues.
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
  public static func publish(_ value: Ros2Uwvm_fourier_bridgeMsgGroupValues, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete uwvm_fourier_bridge/msg/GroupValues message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Uwvm_fourier_bridgeMsgGroupValues.
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
  public static func poll(owner: Owner) throws -> Ros2Uwvm_fourier_bridgeMsgGroupValues {
    try owner.poll(Ros2Uwvm_fourier_bridgeMsgGroupValues.self)
  }
}
/// @brief Typed message entry points for uwvm_fourier_bridge/msg/MotionRecipe.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Uwvm_fourier_bridgeMsgMotionRecipe.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeMsgMotionRecipeInterface {
  /// @brief Publish one complete uwvm_fourier_bridge/msg/MotionRecipe message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Uwvm_fourier_bridgeMsgMotionRecipe.
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
  public static func publish(_ value: Ros2Uwvm_fourier_bridgeMsgMotionRecipe, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete uwvm_fourier_bridge/msg/MotionRecipe message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Uwvm_fourier_bridgeMsgMotionRecipe.
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
  public static func poll(owner: Owner) throws -> Ros2Uwvm_fourier_bridgeMsgMotionRecipe {
    try owner.poll(Ros2Uwvm_fourier_bridgeMsgMotionRecipe.self)
  }
}
/// @brief Typed message entry points for uwvm_fourier_bridge/msg/Status.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Uwvm_fourier_bridgeMsgStatus.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeMsgStatusInterface {
  /// @brief Publish one complete uwvm_fourier_bridge/msg/Status message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros2Uwvm_fourier_bridgeMsgStatus.
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
  public static func publish(_ value: Ros2Uwvm_fourier_bridgeMsgStatus, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete uwvm_fourier_bridge/msg/Status message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Uwvm_fourier_bridgeMsgStatus.
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
  public static func poll(owner: Owner) throws -> Ros2Uwvm_fourier_bridgeMsgStatus {
    try owner.poll(Ros2Uwvm_fourier_bridgeMsgStatus.self)
  }
}
/// @brief Typed message entry points for uwvm_fourier_bridge/msg/VelocityCommand.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros2Uwvm_fourier_bridgeMsgVelocityCommand.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeMsgVelocityCommandInterface {
  /// @brief Publish one complete uwvm_fourier_bridge/msg/VelocityCommand message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros2Uwvm_fourier_bridgeMsgVelocityCommand.
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
  public static func publish(_ value: Ros2Uwvm_fourier_bridgeMsgVelocityCommand, owner: Owner)
    throws
  { try owner.publish(value) }
  /// @brief Poll and decode one complete uwvm_fourier_bridge/msg/VelocityCommand message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros2Uwvm_fourier_bridgeMsgVelocityCommand.
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
  public static func poll(owner: Owner) throws -> Ros2Uwvm_fourier_bridgeMsgVelocityCommand {
    try owner.poll(Ros2Uwvm_fourier_bridgeMsgVelocityCommand.self)
  }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/ExecuteMove.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvExecuteMoveInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/ExecuteMove service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response.
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
  public static func call(_ value: Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request, owner: Owner)
    throws -> Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response
  { try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/ExecuteMove service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request, response=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response.
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
    Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/ExecuteMove service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request, response=Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/GetBaseData.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvGetBaseDataInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/GetBaseData service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response.
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
  public static func call(_ value: Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request, owner: Owner)
    throws -> Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response
  { try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/GetBaseData service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request, response=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response.
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
    Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/GetBaseData service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request, response=Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/GetCartesianState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvGetCartesianStateInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/GetCartesianState service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response.
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
    _ value: Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request, owner: Owner
  ) throws -> Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response {
    try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response.self)
  }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/GetCartesianState service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response.
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
    Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/GetCartesianState service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/GetContactData.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvGetContactData_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetContactData_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvGetContactDataInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/GetContactData service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvGetContactData_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetContactData_Response.
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
  public static func call(_ value: Ros2Uwvm_fourier_bridgeSrvGetContactData_Request, owner: Owner)
    throws -> Ros2Uwvm_fourier_bridgeSrvGetContactData_Response
  { try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvGetContactData_Response.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/GetContactData service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetContactData_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetContactData_Response.
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
    Ros2Uwvm_fourier_bridgeSrvGetContactData_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvGetContactData_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/GetContactData service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetContactData_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetContactData_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvGetContactData_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/GetFsmName.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvGetFsmNameInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/GetFsmName service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response.
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
  public static func call(_ value: Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request, owner: Owner)
    throws -> Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response
  { try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/GetFsmName service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request, response=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response.
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
    Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/GetFsmName service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/GetFsmState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvGetFsmStateInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/GetFsmState service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response.
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
  public static func call(_ value: Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request, owner: Owner)
    throws -> Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response
  { try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/GetFsmState service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request, response=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response.
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
    Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/GetFsmState service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request, response=Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/GetGroupMotionState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvGetGroupMotionStateInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/GetGroupMotionState service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response.
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
    _ value: Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request, owner: Owner
  ) throws -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response {
    try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response.self)
  }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/GetGroupMotionState service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response.
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
    Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/GetGroupMotionState service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/GetGroupMotorCfg.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfgInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/GetGroupMotorCfg service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response.
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
  public static func call(_ value: Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request, owner: Owner)
    throws -> Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response
  { try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/GetGroupMotorCfg service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response.
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
    Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/GetGroupMotorCfg service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/GetGroupState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvGetGroupStateInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/GetGroupState service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response.
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
  public static func call(_ value: Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request, owner: Owner)
    throws -> Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response
  { try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/GetGroupState service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response.
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
    Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/GetGroupState service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/GetSnapshot.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvGetSnapshotInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/GetSnapshot service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response.
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
  public static func call(_ value: Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request, owner: Owner)
    throws -> Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response
  { try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/GetSnapshot service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request, response=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response.
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
    Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/GetSnapshot service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request, response=Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/GetStandPose.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvGetStandPoseInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/GetStandPose service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response.
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
  public static func call(_ value: Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request, owner: Owner)
    throws -> Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response
  { try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/GetStandPose service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response.
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
    Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/GetStandPose service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/GetUpperFsmName.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvGetUpperFsmNameInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/GetUpperFsmName service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response.
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
  public static func call(_ value: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request, owner: Owner)
    throws -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response
  { try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/GetUpperFsmName service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response.
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
    Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/GetUpperFsmName service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/GetUpperFsmState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvGetUpperFsmStateInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/GetUpperFsmState service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response.
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
  public static func call(_ value: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request, owner: Owner)
    throws -> Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response
  { try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/GetUpperFsmState service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response.
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
    Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/GetUpperFsmState service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/GetVelocitySource.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/GetVelocitySource service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response.
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
    _ value: Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request, owner: Owner
  ) throws -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response {
    try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response.self)
  }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/GetVelocitySource service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response.
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
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/GetVelocitySource service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/GetVelocitySourceName.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceNameInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/GetVelocitySourceName service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response.
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
    _ value: Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request, owner: Owner
  ) throws -> Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response {
    try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response.self)
  }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/GetVelocitySourceName service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response.
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
    Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/GetVelocitySourceName service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/SetFsmState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvSetFsmStateInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/SetFsmState service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response.
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
  public static func call(_ value: Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request, owner: Owner)
    throws -> Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response
  { try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/SetFsmState service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request, response=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response.
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
    Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/SetFsmState service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request, response=Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/SetGroupCommand.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvSetGroupCommandInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/SetGroupCommand service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response.
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
  public static func call(_ value: Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request, owner: Owner)
    throws -> Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response
  { try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/SetGroupCommand service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response.
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
    Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/SetGroupCommand service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/SetMotorCfgPd.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPdInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/SetMotorCfgPd service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response.
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
  public static func call(_ value: Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request, owner: Owner)
    throws -> Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response
  { try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/SetMotorCfgPd service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response.
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
    Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/SetMotorCfgPd service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/SetStandPose.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvSetStandPoseInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/SetStandPose service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response.
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
  public static func call(_ value: Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request, owner: Owner)
    throws -> Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response
  { try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/SetStandPose service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response.
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
    Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/SetStandPose service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/SetUpperFsmState.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvSetUpperFsmStateInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/SetUpperFsmState service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response.
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
  public static func call(_ value: Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request, owner: Owner)
    throws -> Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response
  { try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/SetUpperFsmState service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response.
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
    Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/SetUpperFsmState service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/SetVelocity.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvSetVelocityInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/SetVelocity service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response.
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
  public static func call(_ value: Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request, owner: Owner)
    throws -> Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response
  { try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/SetVelocity service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request, response=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response.
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
    Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/SetVelocity service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request, response=Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/SetVelocitySource.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvSetVelocitySourceInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/SetVelocitySource service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response.
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
    _ value: Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request, owner: Owner
  ) throws -> Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response {
    try owner.call(value, response: Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response.self)
  }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/SetVelocitySource service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response.
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
    Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/SetVelocitySource service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/srv/WaitGroupsMotionComplete.
/// @details The selected original ROS 2 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request,
/// response=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionCompleteInterface {
  /// @brief Call the selected uwvm_fourier_bridge/srv/WaitGroupsMotionComplete service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response.
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
    _ value: Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request, owner: Owner
  ) throws -> Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response {
    try owner.call(
      value, response: Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response.self)
  }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/srv/WaitGroupsMotionComplete service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response.
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
    Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request
  > { try owner.incoming(Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/srv/WaitGroupsMotionComplete service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request,
  /// response=Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response.
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
    _ id: UInt64, _ value: Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response, owner: Owner
  ) throws { try owner.respond(id, value) }
}
