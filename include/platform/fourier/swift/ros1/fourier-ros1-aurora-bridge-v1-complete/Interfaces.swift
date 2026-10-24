// @file Interfaces.swift
// @brief Full fourier swift codecs and original record metadata.
// @details Complete fourier ros1_aurora_bridge_v1 values in swift. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
// Generated typed interface entry points; no implicit resources.
import RosWasm

/// @brief Typed service entry points for uwvm_fourier_bridge/ExecuteMove.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeExecuteMoveRequest,
/// response=Ros1Uwvm_fourier_bridgeExecuteMoveResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeExecuteMoveInterface {
  /// @brief Call the selected uwvm_fourier_bridge/ExecuteMove service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeExecuteMoveRequest,
  /// response=Ros1Uwvm_fourier_bridgeExecuteMoveResponse.
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
  public static func call(_ value: Ros1Uwvm_fourier_bridgeExecuteMoveRequest, owner: Owner) throws
    -> Ros1Uwvm_fourier_bridgeExecuteMoveResponse
  { try owner.call(value, response: Ros1Uwvm_fourier_bridgeExecuteMoveResponse.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/ExecuteMove service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeExecuteMoveRequest, response=Ros1Uwvm_fourier_bridgeExecuteMoveResponse.
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
    Ros1Uwvm_fourier_bridgeExecuteMoveRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeExecuteMoveRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/ExecuteMove service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeExecuteMoveRequest,
  /// response=Ros1Uwvm_fourier_bridgeExecuteMoveResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeExecuteMoveResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/GetBaseData.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeGetBaseDataRequest,
/// response=Ros1Uwvm_fourier_bridgeGetBaseDataResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeGetBaseDataInterface {
  /// @brief Call the selected uwvm_fourier_bridge/GetBaseData service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeGetBaseDataRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetBaseDataResponse.
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
  public static func call(_ value: Ros1Uwvm_fourier_bridgeGetBaseDataRequest, owner: Owner) throws
    -> Ros1Uwvm_fourier_bridgeGetBaseDataResponse
  { try owner.call(value, response: Ros1Uwvm_fourier_bridgeGetBaseDataResponse.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/GetBaseData service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeGetBaseDataRequest, response=Ros1Uwvm_fourier_bridgeGetBaseDataResponse.
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
    Ros1Uwvm_fourier_bridgeGetBaseDataRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeGetBaseDataRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/GetBaseData service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeGetBaseDataRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetBaseDataResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeGetBaseDataResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/GetCartesianState.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeGetCartesianStateRequest,
/// response=Ros1Uwvm_fourier_bridgeGetCartesianStateResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeGetCartesianStateInterface {
  /// @brief Call the selected uwvm_fourier_bridge/GetCartesianState service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeGetCartesianStateRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetCartesianStateResponse.
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
  public static func call(_ value: Ros1Uwvm_fourier_bridgeGetCartesianStateRequest, owner: Owner)
    throws -> Ros1Uwvm_fourier_bridgeGetCartesianStateResponse
  { try owner.call(value, response: Ros1Uwvm_fourier_bridgeGetCartesianStateResponse.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/GetCartesianState service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeGetCartesianStateRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetCartesianStateResponse.
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
    Ros1Uwvm_fourier_bridgeGetCartesianStateRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeGetCartesianStateRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/GetCartesianState service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros1Uwvm_fourier_bridgeGetCartesianStateRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetCartesianStateResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeGetCartesianStateResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/GetContactData.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeGetContactDataRequest,
/// response=Ros1Uwvm_fourier_bridgeGetContactDataResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeGetContactDataInterface {
  /// @brief Call the selected uwvm_fourier_bridge/GetContactData service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeGetContactDataRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetContactDataResponse.
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
  public static func call(_ value: Ros1Uwvm_fourier_bridgeGetContactDataRequest, owner: Owner)
    throws -> Ros1Uwvm_fourier_bridgeGetContactDataResponse
  { try owner.call(value, response: Ros1Uwvm_fourier_bridgeGetContactDataResponse.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/GetContactData service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeGetContactDataRequest, response=Ros1Uwvm_fourier_bridgeGetContactDataResponse.
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
    Ros1Uwvm_fourier_bridgeGetContactDataRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeGetContactDataRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/GetContactData service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeGetContactDataRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetContactDataResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeGetContactDataResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/GetFsmName.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeGetFsmNameRequest,
/// response=Ros1Uwvm_fourier_bridgeGetFsmNameResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeGetFsmNameInterface {
  /// @brief Call the selected uwvm_fourier_bridge/GetFsmName service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeGetFsmNameRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetFsmNameResponse.
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
  public static func call(_ value: Ros1Uwvm_fourier_bridgeGetFsmNameRequest, owner: Owner) throws
    -> Ros1Uwvm_fourier_bridgeGetFsmNameResponse
  { try owner.call(value, response: Ros1Uwvm_fourier_bridgeGetFsmNameResponse.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/GetFsmName service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeGetFsmNameRequest, response=Ros1Uwvm_fourier_bridgeGetFsmNameResponse.
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
    Ros1Uwvm_fourier_bridgeGetFsmNameRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeGetFsmNameRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/GetFsmName service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeGetFsmNameRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetFsmNameResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeGetFsmNameResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/GetFsmState.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeGetFsmStateRequest,
/// response=Ros1Uwvm_fourier_bridgeGetFsmStateResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeGetFsmStateInterface {
  /// @brief Call the selected uwvm_fourier_bridge/GetFsmState service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeGetFsmStateRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetFsmStateResponse.
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
  public static func call(_ value: Ros1Uwvm_fourier_bridgeGetFsmStateRequest, owner: Owner) throws
    -> Ros1Uwvm_fourier_bridgeGetFsmStateResponse
  { try owner.call(value, response: Ros1Uwvm_fourier_bridgeGetFsmStateResponse.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/GetFsmState service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeGetFsmStateRequest, response=Ros1Uwvm_fourier_bridgeGetFsmStateResponse.
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
    Ros1Uwvm_fourier_bridgeGetFsmStateRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeGetFsmStateRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/GetFsmState service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeGetFsmStateRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetFsmStateResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeGetFsmStateResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/GetGroupMotionState.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest,
/// response=Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeGetGroupMotionStateInterface {
  /// @brief Call the selected uwvm_fourier_bridge/GetGroupMotionState service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse.
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
  public static func call(_ value: Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest, owner: Owner)
    throws -> Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse
  { try owner.call(value, response: Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/GetGroupMotionState service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse.
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
    Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/GetGroupMotionState service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/GetGroupMotorCfg.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest,
/// response=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeGetGroupMotorCfgInterface {
  /// @brief Call the selected uwvm_fourier_bridge/GetGroupMotorCfg service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse.
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
  public static func call(_ value: Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest, owner: Owner)
    throws -> Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse
  { try owner.call(value, response: Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/GetGroupMotorCfg service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse.
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
    Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/GetGroupMotorCfg service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/GetGroupState.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeGetGroupStateRequest,
/// response=Ros1Uwvm_fourier_bridgeGetGroupStateResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeGetGroupStateInterface {
  /// @brief Call the selected uwvm_fourier_bridge/GetGroupState service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeGetGroupStateRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetGroupStateResponse.
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
  public static func call(_ value: Ros1Uwvm_fourier_bridgeGetGroupStateRequest, owner: Owner) throws
    -> Ros1Uwvm_fourier_bridgeGetGroupStateResponse
  { try owner.call(value, response: Ros1Uwvm_fourier_bridgeGetGroupStateResponse.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/GetGroupState service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeGetGroupStateRequest, response=Ros1Uwvm_fourier_bridgeGetGroupStateResponse.
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
    Ros1Uwvm_fourier_bridgeGetGroupStateRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeGetGroupStateRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/GetGroupState service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeGetGroupStateRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetGroupStateResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeGetGroupStateResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/GetSnapshot.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeGetSnapshotRequest,
/// response=Ros1Uwvm_fourier_bridgeGetSnapshotResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeGetSnapshotInterface {
  /// @brief Call the selected uwvm_fourier_bridge/GetSnapshot service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeGetSnapshotRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetSnapshotResponse.
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
  public static func call(_ value: Ros1Uwvm_fourier_bridgeGetSnapshotRequest, owner: Owner) throws
    -> Ros1Uwvm_fourier_bridgeGetSnapshotResponse
  { try owner.call(value, response: Ros1Uwvm_fourier_bridgeGetSnapshotResponse.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/GetSnapshot service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeGetSnapshotRequest, response=Ros1Uwvm_fourier_bridgeGetSnapshotResponse.
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
    Ros1Uwvm_fourier_bridgeGetSnapshotRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeGetSnapshotRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/GetSnapshot service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeGetSnapshotRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetSnapshotResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeGetSnapshotResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/GetStandPose.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeGetStandPoseRequest,
/// response=Ros1Uwvm_fourier_bridgeGetStandPoseResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeGetStandPoseInterface {
  /// @brief Call the selected uwvm_fourier_bridge/GetStandPose service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeGetStandPoseRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetStandPoseResponse.
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
  public static func call(_ value: Ros1Uwvm_fourier_bridgeGetStandPoseRequest, owner: Owner) throws
    -> Ros1Uwvm_fourier_bridgeGetStandPoseResponse
  { try owner.call(value, response: Ros1Uwvm_fourier_bridgeGetStandPoseResponse.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/GetStandPose service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeGetStandPoseRequest, response=Ros1Uwvm_fourier_bridgeGetStandPoseResponse.
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
    Ros1Uwvm_fourier_bridgeGetStandPoseRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeGetStandPoseRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/GetStandPose service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeGetStandPoseRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetStandPoseResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeGetStandPoseResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/GetUpperFsmName.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest,
/// response=Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeGetUpperFsmNameInterface {
  /// @brief Call the selected uwvm_fourier_bridge/GetUpperFsmName service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse.
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
  public static func call(_ value: Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest, owner: Owner)
    throws -> Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse
  { try owner.call(value, response: Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/GetUpperFsmName service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest, response=Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse.
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
    Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/GetUpperFsmName service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest, response=Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/GetUpperFsmState.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest,
/// response=Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeGetUpperFsmStateInterface {
  /// @brief Call the selected uwvm_fourier_bridge/GetUpperFsmState service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse.
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
  public static func call(_ value: Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest, owner: Owner)
    throws -> Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse
  { try owner.call(value, response: Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/GetUpperFsmState service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse.
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
    Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/GetUpperFsmState service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/GetVelocitySource.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest,
/// response=Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeGetVelocitySourceInterface {
  /// @brief Call the selected uwvm_fourier_bridge/GetVelocitySource service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse.
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
  public static func call(_ value: Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest, owner: Owner)
    throws -> Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse
  { try owner.call(value, response: Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/GetVelocitySource service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse.
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
    Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/GetVelocitySource service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/GetVelocitySourceName.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest,
/// response=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeGetVelocitySourceNameInterface {
  /// @brief Call the selected uwvm_fourier_bridge/GetVelocitySourceName service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse.
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
    _ value: Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest, owner: Owner
  ) throws -> Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse {
    try owner.call(value, response: Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse.self)
  }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/GetVelocitySourceName service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse.
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
    Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/GetVelocitySourceName service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest,
  /// response=Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed message entry points for uwvm_fourier_bridge/GroupState.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros1Uwvm_fourier_bridgeGroupState.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeGroupStateInterface {
  /// @brief Publish one complete uwvm_fourier_bridge/GroupState message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros1Uwvm_fourier_bridgeGroupState.
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
  public static func publish(_ value: Ros1Uwvm_fourier_bridgeGroupState, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete uwvm_fourier_bridge/GroupState message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros1Uwvm_fourier_bridgeGroupState.
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
  public static func poll(owner: Owner) throws -> Ros1Uwvm_fourier_bridgeGroupState {
    try owner.poll(Ros1Uwvm_fourier_bridgeGroupState.self)
  }
}
/// @brief Typed message entry points for uwvm_fourier_bridge/GroupValues.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros1Uwvm_fourier_bridgeGroupValues.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeGroupValuesInterface {
  /// @brief Publish one complete uwvm_fourier_bridge/GroupValues message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros1Uwvm_fourier_bridgeGroupValues.
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
  public static func publish(_ value: Ros1Uwvm_fourier_bridgeGroupValues, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete uwvm_fourier_bridge/GroupValues message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros1Uwvm_fourier_bridgeGroupValues.
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
  public static func poll(owner: Owner) throws -> Ros1Uwvm_fourier_bridgeGroupValues {
    try owner.poll(Ros1Uwvm_fourier_bridgeGroupValues.self)
  }
}
/// @brief Typed message entry points for uwvm_fourier_bridge/MotionRecipe.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros1Uwvm_fourier_bridgeMotionRecipe.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeMotionRecipeInterface {
  /// @brief Publish one complete uwvm_fourier_bridge/MotionRecipe message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros1Uwvm_fourier_bridgeMotionRecipe.
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
  public static func publish(_ value: Ros1Uwvm_fourier_bridgeMotionRecipe, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete uwvm_fourier_bridge/MotionRecipe message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros1Uwvm_fourier_bridgeMotionRecipe.
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
  public static func poll(owner: Owner) throws -> Ros1Uwvm_fourier_bridgeMotionRecipe {
    try owner.poll(Ros1Uwvm_fourier_bridgeMotionRecipe.self)
  }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/SetFsmState.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeSetFsmStateRequest,
/// response=Ros1Uwvm_fourier_bridgeSetFsmStateResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeSetFsmStateInterface {
  /// @brief Call the selected uwvm_fourier_bridge/SetFsmState service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeSetFsmStateRequest,
  /// response=Ros1Uwvm_fourier_bridgeSetFsmStateResponse.
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
  public static func call(_ value: Ros1Uwvm_fourier_bridgeSetFsmStateRequest, owner: Owner) throws
    -> Ros1Uwvm_fourier_bridgeSetFsmStateResponse
  { try owner.call(value, response: Ros1Uwvm_fourier_bridgeSetFsmStateResponse.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/SetFsmState service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeSetFsmStateRequest, response=Ros1Uwvm_fourier_bridgeSetFsmStateResponse.
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
    Ros1Uwvm_fourier_bridgeSetFsmStateRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeSetFsmStateRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/SetFsmState service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeSetFsmStateRequest,
  /// response=Ros1Uwvm_fourier_bridgeSetFsmStateResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeSetFsmStateResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/SetGroupCommand.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeSetGroupCommandRequest,
/// response=Ros1Uwvm_fourier_bridgeSetGroupCommandResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeSetGroupCommandInterface {
  /// @brief Call the selected uwvm_fourier_bridge/SetGroupCommand service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeSetGroupCommandRequest,
  /// response=Ros1Uwvm_fourier_bridgeSetGroupCommandResponse.
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
  public static func call(_ value: Ros1Uwvm_fourier_bridgeSetGroupCommandRequest, owner: Owner)
    throws -> Ros1Uwvm_fourier_bridgeSetGroupCommandResponse
  { try owner.call(value, response: Ros1Uwvm_fourier_bridgeSetGroupCommandResponse.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/SetGroupCommand service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeSetGroupCommandRequest, response=Ros1Uwvm_fourier_bridgeSetGroupCommandResponse.
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
    Ros1Uwvm_fourier_bridgeSetGroupCommandRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeSetGroupCommandRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/SetGroupCommand service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros1Uwvm_fourier_bridgeSetGroupCommandRequest, response=Ros1Uwvm_fourier_bridgeSetGroupCommandResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeSetGroupCommandResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/SetMotorCfgPd.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest,
/// response=Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeSetMotorCfgPdInterface {
  /// @brief Call the selected uwvm_fourier_bridge/SetMotorCfgPd service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest,
  /// response=Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse.
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
  public static func call(_ value: Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest, owner: Owner) throws
    -> Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse
  { try owner.call(value, response: Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/SetMotorCfgPd service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest, response=Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse.
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
    Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/SetMotorCfgPd service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest,
  /// response=Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/SetStandPose.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeSetStandPoseRequest,
/// response=Ros1Uwvm_fourier_bridgeSetStandPoseResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeSetStandPoseInterface {
  /// @brief Call the selected uwvm_fourier_bridge/SetStandPose service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeSetStandPoseRequest,
  /// response=Ros1Uwvm_fourier_bridgeSetStandPoseResponse.
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
  public static func call(_ value: Ros1Uwvm_fourier_bridgeSetStandPoseRequest, owner: Owner) throws
    -> Ros1Uwvm_fourier_bridgeSetStandPoseResponse
  { try owner.call(value, response: Ros1Uwvm_fourier_bridgeSetStandPoseResponse.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/SetStandPose service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeSetStandPoseRequest, response=Ros1Uwvm_fourier_bridgeSetStandPoseResponse.
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
    Ros1Uwvm_fourier_bridgeSetStandPoseRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeSetStandPoseRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/SetStandPose service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeSetStandPoseRequest,
  /// response=Ros1Uwvm_fourier_bridgeSetStandPoseResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeSetStandPoseResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/SetUpperFsmState.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest,
/// response=Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeSetUpperFsmStateInterface {
  /// @brief Call the selected uwvm_fourier_bridge/SetUpperFsmState service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest,
  /// response=Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse.
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
  public static func call(_ value: Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest, owner: Owner)
    throws -> Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse
  { try owner.call(value, response: Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/SetUpperFsmState service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest,
  /// response=Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse.
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
    Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/SetUpperFsmState service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest,
  /// response=Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/SetVelocity.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeSetVelocityRequest,
/// response=Ros1Uwvm_fourier_bridgeSetVelocityResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeSetVelocityInterface {
  /// @brief Call the selected uwvm_fourier_bridge/SetVelocity service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeSetVelocityRequest,
  /// response=Ros1Uwvm_fourier_bridgeSetVelocityResponse.
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
  public static func call(_ value: Ros1Uwvm_fourier_bridgeSetVelocityRequest, owner: Owner) throws
    -> Ros1Uwvm_fourier_bridgeSetVelocityResponse
  { try owner.call(value, response: Ros1Uwvm_fourier_bridgeSetVelocityResponse.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/SetVelocity service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeSetVelocityRequest, response=Ros1Uwvm_fourier_bridgeSetVelocityResponse.
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
    Ros1Uwvm_fourier_bridgeSetVelocityRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeSetVelocityRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/SetVelocity service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components: request=Ros1Uwvm_fourier_bridgeSetVelocityRequest,
  /// response=Ros1Uwvm_fourier_bridgeSetVelocityResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeSetVelocityResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/SetVelocitySource.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest,
/// response=Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeSetVelocitySourceInterface {
  /// @brief Call the selected uwvm_fourier_bridge/SetVelocitySource service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest,
  /// response=Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse.
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
  public static func call(_ value: Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest, owner: Owner)
    throws -> Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse
  { try owner.call(value, response: Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse.self) }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/SetVelocitySource service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest,
  /// response=Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse.
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
    Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/SetVelocitySource service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest,
  /// response=Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
/// @brief Typed message entry points for uwvm_fourier_bridge/Status.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros1Uwvm_fourier_bridgeStatus.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeStatusInterface {
  /// @brief Publish one complete uwvm_fourier_bridge/Status message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components: message=Ros1Uwvm_fourier_bridgeStatus.
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
  public static func publish(_ value: Ros1Uwvm_fourier_bridgeStatus, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete uwvm_fourier_bridge/Status message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros1Uwvm_fourier_bridgeStatus.
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
  public static func poll(owner: Owner) throws -> Ros1Uwvm_fourier_bridgeStatus {
    try owner.poll(Ros1Uwvm_fourier_bridgeStatus.self)
  }
}
/// @brief Typed message entry points for uwvm_fourier_bridge/VelocityCommand.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: message=Ros1Uwvm_fourier_bridgeVelocityCommand.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeVelocityCommandInterface {
  /// @brief Publish one complete uwvm_fourier_bridge/VelocityCommand message.
  /// @details Encode the complete message before the single effectful publish. A successful return acknowledges
  /// transport admission, not physical controller completion. Components:
  /// message=Ros1Uwvm_fourier_bridgeVelocityCommand.
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
  public static func publish(_ value: Ros1Uwvm_fourier_bridgeVelocityCommand, owner: Owner) throws {
    try owner.publish(value)
  }
  /// @brief Poll and decode one complete uwvm_fourier_bridge/VelocityCommand message.
  /// @details Consume at most one legacy event and decode every field. Idle is an error/status, not a default
  /// message; a capacity refusal may already have consumed the event. Components:
  /// message=Ros1Uwvm_fourier_bridgeVelocityCommand.
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
  public static func poll(owner: Owner) throws -> Ros1Uwvm_fourier_bridgeVelocityCommand {
    try owner.poll(Ros1Uwvm_fourier_bridgeVelocityCommand.self)
  }
}
/// @brief Typed service entry points for uwvm_fourier_bridge/WaitGroupsMotionComplete.
/// @details The selected original ROS 1 interface and every component record are fixed by the finite schema
/// profile. Components: request=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest,
/// response=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse.
/// @permissions Referencing this stateless namespace creates no resource or grant.
/// @version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.
/// @see share/platform/ros/swift/API-CONTRACT.md
public enum Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteInterface {
  /// @brief Call the selected uwvm_fourier_bridge/WaitGroupsMotionComplete service.
  /// @details Encode the exact request and decode the complete response using the separately granted legacy
  /// service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.
  /// Components: request=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest,
  /// response=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse.
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
    _ value: Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest, owner: Owner
  ) throws -> Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse {
    try owner.call(value, response: Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse.self)
  }
  /// @brief Receive an actually delivered uwvm_fourier_bridge/WaitGroupsMotionComplete service request.
  /// @details Retain its exact nonzero request ID with the decoded request. Activation and response permissions are
  /// separate; receipt grants no authority over other requests. Components:
  /// request=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest,
  /// response=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse.
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
    Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest
  > { try owner.incoming(Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest.self) }
  /// @brief Respond once to a delivered uwvm_fourier_bridge/WaitGroupsMotionComplete service request.
  /// @details Prefix the complete selected response with its owned request ID. This legacy response path is not the
  /// separate owned-native raw12 service protocol. Components:
  /// request=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest,
  /// response=Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse.
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
    _ id: UInt64, _ value: Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse, owner: Owner
  ) throws { try owner.respond(id, value) }
}
