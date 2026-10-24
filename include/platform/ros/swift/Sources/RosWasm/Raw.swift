// Generated numeric source. Backend selection and imports grant no authority.

import CRosWasm

public enum Raw {
  /// abi_version: Return ABI version 1. This does not open a capability or authorize a resource.
  /// @brief Return ABI version 1. This does not open a capability or authorize a resource.
  /// @details This query creates no owner, endpoint, queue, timer or ROS context.
  /// @return Unsigned ABI version 1; this value is not an errno.
  /// @permissions None beyond module admission; this query creates no ROS rights.
  /// @failure Missing module/signature prevents instantiation; no Host substitute is used.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func abi_version() -> UInt32 {
    return roswasm_c_ffi_invoke(0, 0, 0, 0, 0, 0, 0, 0)
  }
  /// action_advertise: Activate the explicitly granted Action server with an empty command. Poll ID8 plus the selected trusted goal codec; builtin
  /// Fibonacci uses i32 order. Responses require another grant.
  /// @brief Activate the explicitly granted Action server with an empty command. Poll ID8 plus the selected trusted goal codec; builtin Fibonacci uses
  /// i32 order. Responses require another grant.
  /// @details The empty activation request does not choose another Action/type. Handle incoming goals on the caller-driven Guest executor.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func action_advertise(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      1, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// action_cancel_any_goal: Use the separately granted any-cancel operation. Goal ID zero is valid only for this independently authorized operation.
  /// @brief Use the separately granted any-cancel operation. Goal ID zero is valid only for this independently authorized operation.
  /// @details This operation needs its own any-cancel grant. The permitted zero selector here must never leak into own-goal APIs.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func action_cancel_any_goal(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      2, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// action_cancel_own_goal: Request cancellation of one owned Goal using its u64 ID and a separately authorized cancel capability.
  /// @brief Request cancellation of one owned Goal using its u64 ID and a separately authorized cancel capability.
  /// @details The ID must belong to the calling principal. A cancel acknowledgement is distinct from terminal result and physical stopping.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func action_cancel_own_goal(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      3, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// action_receive_feedback: Receive ID8 plus the selected trusted Action feedback codec for an owned Goal. Builtin Fibonacci appends count32/int32
  /// values; an empty queue returns 11.
  /// @brief Receive ID8 plus the selected trusted Action feedback codec for an owned Goal. Builtin Fibonacci appends count32/int32 values; an empty queue
  /// returns 11.
  /// @details Check the complete returned ID prefix before decoding feedback. A copied ID is a value, not a new native ownership grant.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func action_receive_feedback(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      4, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// action_receive_result: Receive ID8/outcome8 plus the selected trusted terminal result codec. Builtin Fibonacci appends count32/int32 values.
  /// Successful terminal consumption retires ownership.
  /// @brief Receive ID8/outcome8 plus the selected trusted terminal result codec. Builtin Fibonacci appends count32/int32 values. Successful terminal
  /// consumption retires ownership.
  /// @details Check ID and terminal outcome before publishing the decoded value. Successful terminal consumption retires that goal ownership.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func action_receive_result(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      5, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// action_respond: Send ID8/kind8 plus the selected trusted feedback/result codec. Builtin Fibonacci appends count32/int32 values. Advertiser and
  /// responder require the same explicit ROS2 QoS contract.
  /// @brief Send ID8/kind8 plus the selected trusted feedback/result codec. Builtin Fibonacci appends count32/int32 values. Advertiser and responder
  /// require the same explicit ROS2 QoS contract.
  /// @details Keep ID, kind and the complete selected feedback/result body. Sending one terminal result must not be replayed after an unknown outcome.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func action_respond(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      6, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// action_send_goal: Send the selected trusted Action goal codec and receive an opaque u64 Goal ID. Builtin Fibonacci uses one canonical i32 order.
  /// Generated bounded Actions require their registered goal codec; all bounds remain explicit.
  /// @brief Send the selected trusted Action goal codec and receive an opaque u64 Goal ID. Builtin Fibonacci uses one canonical i32 order. Generated
  /// bounded Actions require their registered goal codec; all bounds remain explicit.
  /// @details Keep the returned nonzero ID exactly as u64. Record submission before callbacks, and distinguish admitted, terminal and cancelled states.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func action_send_goal(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      7, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// capability_close: Retire this handle generation. The handle may already be retired if later Gateway cleanup returns an error.
  /// @brief Retire this handle generation. The handle may already be retired if later Gateway cleanup returns an error.
  /// @details Retire all local copies before notification. Gateway cleanup failure does not restore the retired generation; never retry the old handle.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func capability_close(_ handle: UInt64) -> UInt32 {
    return roswasm_c_ffi_invoke(8, UInt64(handle), 0, 0, 0, 0, 0, 0)
  }
  /// capability_open: Open one explicitly granted alias in the caller Instance and selected backend. Write an opaque eight-byte little-endian handle on
  /// success.
  /// @brief Open one explicitly granted alias in the caller Instance and selected backend. Write an opaque eight-byte little-endian handle on success.
  /// @details Reserve local owner/slot storage before calling. A failed open creates no usable local owner; success must still return a nonzero handle.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] alias_offset Byte offset of the alias UTF-8 input in memory. Keep its backing storage stable and unchanged through return.
  /// @param[in] alias_length Alias byte count, 1..255; strict UTF-8 with no NUL. The alias selects an existing trusted grant, never a new resource.
  /// @param[out] handle_out_offset Byte offset of a writable eight-byte little-endian handle slot. Read its nonzero value only after status 0.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func capability_open(
    _ memory: UInt32, _ alias_offset: UInt64, _ alias_length: UInt64, _ handle_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      9, UInt64(memory), UInt64(alias_offset), UInt64(alias_length), UInt64(handle_out_offset), 0,
      0, 0)
  }
  /// capability_revoke: Revoke the alias for this Instance/backend, invalidating all its open sibling handles. Reopening cannot restore the revoked grant.
  /// @brief Revoke the alias for this Instance/backend, invalidating all its open sibling handles. Reopening cannot restore the revoked grant.
  /// @details Revocation invalidates sibling handles for this alias in the current principal. It is not physical controller stop or global policy
  /// administration.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func capability_revoke(_ handle: UInt64) -> UInt32 {
    return roswasm_c_ffi_invoke(10, UInt64(handle), 0, 0, 0, 0, 0, 0)
  }
  /// event_poll: Poll a topic, service-request, incoming-goal or ROS2 parameter-event queue. Error 11 means no event; no native callback enters Wasm.
  /// @brief Poll a topic, service-request, incoming-goal or ROS2 parameter-event queue. Error 11 means no event; no native callback enters Wasm.
  /// @details This is the legacy receive contract: an insufficient buffer may already have consumed its event. Do not implement automatic resize/replay.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[out] output_offset Byte offset of caller-owned writable event/readiness storage; readiness writes 32 bytes, polls use capacity.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func event_poll(
    _ handle: UInt64, _ memory: UInt32, _ output_offset: UInt64, _ capacity: UInt64,
    _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      11, UInt64(handle), UInt64(memory), UInt64(output_offset), UInt64(capacity),
      UInt64(length_out_offset), 0, 0)
  }
  /// event_poll_v1: Read one complete versioned64-byte-header event. Error90 writes required size and retains the event; error11 is idle. No automatic
  /// replay.
  /// @brief Read one complete versioned64-byte-header event. Error90 writes required size and retains the event; error11 is idle. No automatic replay.
  /// @details Decode the complete 64-byte versioned header and bounded payload. Capacity 90 retains the pinned event; 11 is idle, not a delivered value.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[out] output_offset Byte offset of caller-owned writable event/readiness storage; readiness writes 32 bytes, polls use capacity.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func event_poll_v1(
    _ handle: UInt64, _ memory: UInt32, _ output_offset: UInt64, _ capacity: UInt64,
    _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      12, UInt64(handle), UInt64(memory), UInt64(output_offset), UInt64(capacity),
      UInt64(length_out_offset), 0, 0)
  }
  /// event_ready: Write32 little-endian bytes: ready count,next record bytes,admission slots,admission bytes. A readiness snapshot is not a reservation.
  /// @brief Write32 little-endian bytes: ready count,next record bytes,admission slots,admission bytes. A readiness snapshot is not a reservation.
  /// @details Decode four LE u64 values. This snapshot neither reserves an admission slot nor guarantees that a later poll has the same capacity.
  /// @param[in] observer_handle Separately authorized event.observe owner paired with the selected source by trusted Host policy.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[out] output_offset Byte offset of caller-owned writable event/readiness storage; readiness writes 32 bytes, polls use capacity.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func event_ready(
    _ observer_handle: UInt64, _ memory: UInt32, _ output_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      13, UInt64(observer_handle), UInt64(memory), UInt64(output_offset), 0, 0, 0, 0)
  }
  /// event_watch: Bind separately granted event.observe and source owners. Correlation is nonzero only when an owned outgoing Action data kind is
  /// selected; metadata-only watches use zero and activate/consume no native payload. No aliases or rights are created.
  /// @brief Bind separately granted event.observe and source owners. Correlation is nonzero only when an owned outgoing Action data kind is selected;
  /// metadata-only watches use zero and activate/consume no native payload. No aliases or rights are created.
  /// @details Keep observer and source owners independently alive. A metadata watch neither activates payload traffic nor inherits business-operation rights.
  /// @param[in] observer_handle Separately authorized event.observe owner paired with the selected source by trusted Host policy.
  /// @param[in] source_handle Separately authorized source owner in this Instance and backend. The observer does not confer source rights.
  /// @param[in] correlation Exact owned u64 outgoing-goal ID for a selected Action data watch; metadata-only watches use 0. It grants no ownership.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func event_watch(
    _ observer_handle: UInt64, _ source_handle: UInt64, _ correlation: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      14, UInt64(observer_handle), UInt64(source_handle), UInt64(correlation), 0, 0, 0, 0)
  }
  /// graph_inspect_action: Inspect the separately configured ROS2 Action filter; ROS1 does not export this function.
  /// @brief Inspect the separately configured ROS2 Action filter; ROS1 does not export this function.
  /// @details Use the exact trusted inspect action filter. Returned sorted canonical String rows confer no discovery or business-operation rights.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func graph_inspect_action(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      15, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// graph_inspect_node: Inspect the configured node filter with an empty request and decode sorted canonical String rows.
  /// @brief Inspect the configured node filter with an empty request and decode sorted canonical String rows.
  /// @details Use the exact trusted inspect node filter. Returned sorted canonical String rows confer no discovery or business-operation rights.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func graph_inspect_node(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      16, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// graph_inspect_service: Inspect the configured service filter with an empty request and decode sorted canonical String rows.
  /// @brief Inspect the configured service filter with an empty request and decode sorted canonical String rows.
  /// @details Use the exact trusted inspect service filter. Returned sorted canonical String rows confer no discovery or business-operation rights.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func graph_inspect_service(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      17, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// graph_inspect_topic: Inspect the configured topic filter with an empty request and decode sorted canonical String rows.
  /// @brief Inspect the configured topic filter with an empty request and decode sorted canonical String rows.
  /// @details Use the exact trusted inspect topic filter. Returned sorted canonical String rows confer no discovery or business-operation rights.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func graph_inspect_topic(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      18, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// graph_list_nodes: List nodes within the explicit graph filter; this is not unrestricted discovery authority.
  /// @brief List nodes within the explicit graph filter; this is not unrestricted discovery authority.
  /// @details Use the exact trusted list nodes filter. Returned sorted canonical String rows confer no discovery or business-operation rights.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func graph_list_nodes(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      19, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// graph_list_services: List services within the explicit graph filter; decode sorted canonical String rows.
  /// @brief List services within the explicit graph filter; decode sorted canonical String rows.
  /// @details Use the exact trusted list services filter. Returned sorted canonical String rows confer no discovery or business-operation rights.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func graph_list_services(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      20, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// graph_list_topics: List topics within the explicit exact/prefix graph filter; decode sorted canonical String rows.
  /// @brief List topics within the explicit exact/prefix graph filter; decode sorted canonical String rows.
  /// @details Use the exact trusted list topics filter. Returned sorted canonical String rows confer no discovery or business-operation rights.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func graph_list_topics(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      21, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// lifecycle_change_state: Apply the single ROS2 transition fixed by policy using an empty request; the guest cannot override that transition.
  /// @brief Apply the single ROS2 transition fixed by policy using an empty request; the guest cannot override that transition.
  /// @details ROS2 only. The single transition is fixed by trusted policy. A timeout/unknown result must not automatically replay controller changes.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func lifecycle_change_state(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      22, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// lifecycle_get_state: Read the separately selected ROS2 lifecycle node state as u8 state ID followed by canonical String label.
  /// @brief Read the separately selected ROS2 lifecycle node state as u8 state ID followed by canonical String label.
  /// @details ROS2 only. Decode state ID and canonical label together; an error is not a lifecycle state or evidence that a transition completed.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func lifecycle_get_state(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      23, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// log_write: Write one canonical String to the separately granted ROS logger. This does not open a file or socket.
  /// @brief Write one canonical String to the separately granted ROS logger. This does not open a file or socket.
  /// @details Encode one complete canonical String for the selected ROS logger. Ordinary stderr is separate and does not require this ROS logging grant.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] payload_offset Byte offset of the complete canonical selected-type payload. It is not a native ROS object or host pointer.
  /// @param[in] payload_length Payload extent in bytes, within memory and the selected type/alias/envelope quota. Zero is type-dependent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func log_write(
    _ handle: UInt64, _ memory: UInt32, _ payload_offset: UInt64, _ payload_length: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      24, UInt64(handle), UInt64(memory), UInt64(payload_offset), UInt64(payload_length), 0, 0, 0)
  }
  /// parameter_declare: Declare a typed parameter on the explicitly selected local ROS2 Gateway node. Remote declaration is unsupported.
  /// @brief Declare a typed parameter on the explicitly selected local ROS2 Gateway node. Remote declaration is unsupported.
  /// @details ROS2 local Gateway node only. Validate the selected kind/default before the call; no remote declaration emulation is supplied.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func parameter_declare(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      25, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// parameter_delete: Delete the explicitly granted ROS1 parameter using an empty request; no implicit parent-name authority is added.
  /// @brief Delete the explicitly granted ROS1 parameter using an empty request; no implicit parent-name authority is added.
  /// @details ROS1 only. Delete exactly the granted key; authority over a child key is not authority over its parent namespace.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func parameter_delete(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      26, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// parameter_describe: Read the separately authorized ROS2 parameter metadata as a canonical String.
  /// @brief Read the separately authorized ROS2 parameter metadata as a canonical String.
  /// @details ROS2 only. Returned metadata describes the selected resource; it neither declares a parameter nor authorizes a value mutation.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func parameter_describe(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      27, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// parameter_exists: Query existence of the explicitly granted ROS1 parameter; decode one canonical Bool response.
  /// @brief Query existence of the explicitly granted ROS1 parameter; decode one canonical Bool response.
  /// @details ROS1 only. Decode one strict canonical Bool; an error must not be converted into a false existence result.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func parameter_exists(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      28, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// parameter_get: Read the value fixed by the capability type. An empty request does not select a different node, name or value kind.
  /// @brief Read the value fixed by the capability type. An empty request does not select a different node, name or value kind.
  /// @details Decode only the value kind fixed by the capability. An empty request does not add node, parameter-name or parent-namespace authority.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func parameter_get(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      29, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// parameter_list: List the separately authorized parameter scope; decode the bounded canonical String result.
  /// @brief List the separately authorized parameter scope; decode the bounded canonical String result.
  /// @details Decode the bounded canonical String result for the selected scope. Returned names do not themselves grant get/set/delete access.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func parameter_list(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      30, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// parameter_search: Search the explicitly granted ROS1 resource with an empty request. Parent namespaces are included only with
  /// search-parent-namespaces=true, for the same final key and within allowed-name-prefix before every native query.
  /// @brief Search the explicitly granted ROS1 resource with an empty request. Parent namespaces are included only with search-parent-namespaces=true,
  /// for the same final key and within allowed-name-prefix before every native query.
  /// @details ROS1 only. Parent search is a separately configured opt-in and remains constrained by allowed-name-prefix before every native query.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func parameter_search(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      31, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// parameter_set: Set a canonical value of the explicitly granted parameter type. Numeric and element bounds remain enforced by the host.
  /// @brief Set a canonical value of the explicitly granted parameter type. Numeric and element bounds remain enforced by the host.
  /// @details Validate the complete typed value and all element bounds before the effect. Timeout does not establish that the native parameter stayed
  /// unchanged.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func parameter_set(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      32, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// parameter_subscribe_events: Activate a separate ROS2 parameter-event projection grant. This takes only one handle, not the seven RPC arguments.
  /// @brief Activate a separate ROS2 parameter-event projection grant. This takes only one handle, not the seven RPC arguments.
  /// @details ROS2 only. Activate the separate projection grant and consume its exact event codec; do not pass the seven RPC arguments.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func parameter_subscribe_events(_ handle: UInt64) -> UInt32 {
    return roswasm_c_ffi_invoke(33, UInt64(handle), 0, 0, 0, 0, 0, 0)
  }
  /// parameter_undeclare: Undeclare a typed parameter on the explicitly selected local ROS2 Gateway node. A missing remote operation is not emulated.
  /// @brief Undeclare a typed parameter on the explicitly selected local ROS2 Gateway node. A missing remote operation is not emulated.
  /// @details ROS2 local Gateway node only. An unsupported remote operation remains unsupported rather than being replaced by delete or set.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func parameter_undeclare(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      34, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// service_advertise: Activate the explicitly granted service server. Poll owned request IDs through event_poll.
  /// @brief Activate the explicitly granted service server. Poll owned request IDs through event_poll.
  /// @details The server owns only requests actually delivered to it. A responder is a separate grant; advertising does not grant arbitrary responses.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func service_advertise(_ handle: UInt64) -> UInt32 {
    return roswasm_c_ffi_invoke(35, UInt64(handle), 0, 0, 0, 0, 0, 0)
  }
  /// service_call: Call the explicitly selected service using its canonical request/response type and configured deadline. Do not automatically replay a
  /// timed-out call.
  /// @brief Call the explicitly selected service using its canonical request/response type and configured deadline. Do not automatically replay a
  /// timed-out call.
  /// @details Use the exact request/response canonical identity selected by the Host. The finite deadline belongs to trusted policy, not a Guest-supplied
  /// route.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func service_call(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      36, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// service_respond: Respond to an owned live request using a separate response grant and u64 request-ID-prefixed canonical response.
  /// @brief Respond to an owned live request using a separate response grant and u64 request-ID-prefixed canonical response.
  /// @details Prefix the response with the actually delivered request ID. This legacy operation does not implement the separate owned-native raw12 protocol.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func service_respond(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      37, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// service_submit: Admit one bounded asynchronous service request. A successful acknowledgement writes requestID; completion requires explicit
  /// service-response and resource-error observation. Never replay a timeout.
  /// @brief Admit one bounded asynchronous service request. A successful acknowledgement writes requestID; completion requires explicit service-response
  /// and resource-error observation. Never replay a timeout.
  /// @details Register correlation/cleanup state before admission. Observe service-response and resource-error events explicitly; never replay unknown
  /// delivery.
  /// @param[in] source_handle Separately authorized source owner in this Instance and backend. The observer does not confer source rights.
  /// @param[in] observer_handle Separately authorized event.observe owner paired with the selected source by trusted Host policy.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] request_id_out_offset Byte offset of an eight-byte LE request-ID slot written on successful admission. Acknowledgement does not mean
  /// that the native service completed.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func service_submit(
    _ source_handle: UInt64, _ observer_handle: UInt64, _ memory: UInt32, _ request_offset: UInt64,
    _ request_length: UInt64, _ request_id_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      38, UInt64(source_handle), UInt64(observer_handle), UInt64(memory), UInt64(request_offset),
      UInt64(request_length), UInt64(request_id_out_offset), 0)
  }
  /// tf_broadcast: Broadcast one canonical TransformStamped for the separately configured frame pair. Do not normalize its quaternion implicitly.
  /// @brief Broadcast one canonical TransformStamped for the separately configured frame pair. Do not normalize its quaternion implicitly.
  /// @details Preserve every TransformStamped field and unit. Neither normalizing a quaternion nor changing frame names is an implicit codec step.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func tf_broadcast(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      39, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// tf_lookup: Request the separately configured source/target frame pair at u64 nanoseconds; zero selects the latest admitted transform.
  /// @brief Request the separately configured source/target frame pair at u64 nanoseconds; zero selects the latest admitted transform.
  /// @details The request is u64 nanoseconds in the admitted clock domain;0 selects latest. Source/target frames remain fixed by the independent grant.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func tf_lookup(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      40, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// time_read_ros: Read the separately authorized ROS clock domain as little-endian u64 nanoseconds.
  /// @brief Read the separately authorized ROS clock domain as little-endian u64 nanoseconds.
  /// @details Read exact u64 nanoseconds in the separately authorized ros domain. Do not treat steady time as an epoch or borrow another clock grant.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func time_read_ros(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      41, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// time_read_steady: Read the independently authorized ROS2 steady clock as u64 nanoseconds.
  /// @brief Read the independently authorized ROS2 steady clock as u64 nanoseconds.
  /// @details Read exact u64 nanoseconds in the separately authorized steady domain. Do not treat steady time as an epoch or borrow another clock grant.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func time_read_steady(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      42, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// time_read_system: Read the independently authorized ROS2 system clock as u64 nanoseconds.
  /// @brief Read the independently authorized ROS2 system clock as u64 nanoseconds.
  /// @details Read exact u64 nanoseconds in the separately authorized system domain. Do not treat steady time as an epoch or borrow another clock grant.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func time_read_system(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      43, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// time_read_wall: Read the independently authorized ROS1 wall clock; another time grant does not imply this one.
  /// @brief Read the independently authorized ROS1 wall clock; another time grant does not imply this one.
  /// @details Read exact u64 nanoseconds in the separately authorized wall domain. Do not treat steady time as an epoch or borrow another clock grant.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty request changes no policy.
  /// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected schema/grant may require less.
  /// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after status/length checks.
  /// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an event.
  /// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may leave it untouched; only an
  /// overwritten sentinel reports a required extent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func time_read_wall(
    _ handle: UInt64, _ memory: UInt32, _ request_offset: UInt64, _ request_length: UInt64,
    _ response_offset: UInt64, _ capacity: UInt64, _ length_out_offset: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      44, UInt64(handle), UInt64(memory), UInt64(request_offset), UInt64(request_length),
      UInt64(response_offset), UInt64(capacity), UInt64(length_out_offset))
  }
  /// topic_publish: Publish one canonical generated message through a separately granted publisher alias.
  /// @brief Publish one canonical generated message through a separately granted publisher alias.
  /// @details Encode the full selected schema before this one effectful call. Acknowledgement is not a physical actuator-completion certificate.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory admitted by its Runtime.
  /// @param[in] payload_offset Byte offset of the complete canonical selected-type payload. It is not a native ROS object or host pointer.
  /// @param[in] payload_length Payload extent in bytes, within memory and the selected type/alias/envelope quota. Zero is type-dependent.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func topic_publish(
    _ handle: UInt64, _ memory: UInt32, _ payload_offset: UInt64, _ payload_length: UInt64
  ) -> UInt32 {
    return roswasm_c_ffi_invoke(
      45, UInt64(handle), UInt64(memory), UInt64(payload_offset), UInt64(payload_length), 0, 0, 0)
  }
  /// topic_subscribe: Activate a separately granted subscription queue. Receive messages through event_poll on the guest execution thread.
  /// @brief Activate a separately granted subscription queue. Receive messages through event_poll on the guest execution thread.
  /// @details Activation and payload consumption are separate. Poll on the Guest execution thread; no native callback re-enters the Guest.
  /// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never synthesize or transfer it.
  /// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
  /// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and deadline; SDK selection grants none.
  /// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110 unknown timeout and 125 revoke.
  /// Do not replay effects.
  /// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer offsets are not GC roots or host
  /// pointers.
  /// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous re-entry is created by this wrapper.
  /// @version ABI 1; exact selected ROS 1/ROS 2 import contract. A private bridge returns 95 for an operation absent from its selected backend.
  /// @see share/platform/ros/swift/API-CONTRACT.md; share/platform/ros/swift/XMAKE-EXAMPLES.md
  public static func topic_subscribe(_ handle: UInt64) -> UInt32 {
    return roswasm_c_ffi_invoke(46, UInt64(handle), 0, 0, 0, 0, 0, 0)
  }
}
public enum RPC: UInt32, CaseIterable {
  case action_advertise = 1
  case action_cancel_any_goal = 2
  case action_cancel_own_goal = 3
  case action_receive_feedback = 4
  case action_receive_result = 5
  case action_respond = 6
  case action_send_goal = 7
  case graph_inspect_action = 15
  case graph_inspect_node = 16
  case graph_inspect_service = 17
  case graph_inspect_topic = 18
  case graph_list_nodes = 19
  case graph_list_services = 20
  case graph_list_topics = 21
  case lifecycle_change_state = 22
  case lifecycle_get_state = 23
  case parameter_declare = 25
  case parameter_delete = 26
  case parameter_describe = 27
  case parameter_exists = 28
  case parameter_get = 29
  case parameter_list = 30
  case parameter_search = 31
  case parameter_set = 32
  case parameter_undeclare = 34
  case service_call = 36
  case service_respond = 37
  case tf_broadcast = 39
  case tf_lookup = 40
  case time_read_ros = 41
  case time_read_steady = 42
  case time_read_system = 43
  case time_read_wall = 44
}
func rawRequest(
  _ op: RPC, _ h: UInt64, _ a: UInt64, _ n: UInt64, _ b: UInt64, _ c: UInt64, _ z: UInt64
) -> UInt32 { roswasm_c_ffi_invoke(op.rawValue, h, 0, a, n, b, c, z) }
