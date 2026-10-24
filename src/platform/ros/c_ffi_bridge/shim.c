/** @file shim.c
 * @brief Dispatch exact-width private FFI operations to original ROS imports.
 * @details Link exactly one selected backend. All offsets remain uint64_t
 * in wasm32 and wasm64; the bridge never dereferences a guest address.
 * Calling an import requires the same explicit runtime authority as a
 * direct source-language call. No owner, buffer, or executor is allocated. */
#include "roswasm_c_ffi.h"
#if !defined(__wasm32__) && !defined(__wasm64__)
# error "This bridge requires a wasm32 or wasm64 guest"
#endif
#if ROSWASM_C_FFI_BACKEND != 1 && ROSWASM_C_FFI_BACKEND != 2
# error "Define exactly ROSWASM_C_FFI_BACKEND=1 or 2"
#endif
#if ROSWASM_C_FFI_BACKEND == 1
/// roswasm_ffi_abi_version: Return ABI version 1. This does not open a capability or authorize a resource.
/// @brief Return ABI version 1. This does not open a capability or authorize a resource.
/// @details This query creates no owner, endpoint, queue, timer or ROS context.
/// @return Unsigned ABI version 1; this value is not an errno.
/// @permissions None beyond module admission; this query creates no ROS rights.
/// @failure Missing module/signature prevents instantiation; no Host substitute is used.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("abi_version"))) extern uint32_t roswasm_ffi_abi_version(void);
/// roswasm_ffi_action_advertise: Activate the explicitly granted Action server with an empty command. Poll ID8 plus the
/// selected trusted goal codec; builtin Fibonacci uses i32 order. Responses require another grant.
/// @brief Activate the explicitly granted Action server with an empty command. Poll ID8 plus the selected trusted goal
/// codec; builtin Fibonacci uses i32 order. Responses require another grant.
/// @details The empty activation request does not choose another Action/type. Handle incoming goals on the
/// caller-driven Guest executor.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("action_advertise"))) extern uint32_t roswasm_ffi_action_advertise(uint64_t handle,
                                                                                                                             uint32_t memory,
                                                                                                                             uint64_t request_offset,
                                                                                                                             uint64_t request_length,
                                                                                                                             uint64_t response_offset,
                                                                                                                             uint64_t capacity,
                                                                                                                             uint64_t length_out_offset);
/// roswasm_ffi_action_cancel_any_goal: Use the separately granted any-cancel operation. Goal ID zero is valid only for
/// this independently authorized operation.
/// @brief Use the separately granted any-cancel operation. Goal ID zero is valid only for this independently authorized
/// operation.
/// @details This operation needs its own any-cancel grant. The permitted zero selector here must never leak into
/// own-goal APIs.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("action_cancel_any_goal"))) extern uint32_t
    roswasm_ffi_action_cancel_any_goal(uint64_t handle,
                                       uint32_t memory,
                                       uint64_t request_offset,
                                       uint64_t request_length,
                                       uint64_t response_offset,
                                       uint64_t capacity,
                                       uint64_t length_out_offset);
/// roswasm_ffi_action_cancel_own_goal: Request cancellation of one owned Goal using its u64 ID and a separately
/// authorized cancel capability.
/// @brief Request cancellation of one owned Goal using its u64 ID and a separately authorized cancel capability.
/// @details The ID must belong to the calling principal. A cancel acknowledgement is distinct from terminal result and
/// physical stopping.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("action_cancel_own_goal"))) extern uint32_t
    roswasm_ffi_action_cancel_own_goal(uint64_t handle,
                                       uint32_t memory,
                                       uint64_t request_offset,
                                       uint64_t request_length,
                                       uint64_t response_offset,
                                       uint64_t capacity,
                                       uint64_t length_out_offset);
/// roswasm_ffi_action_receive_feedback: Receive ID8 plus the selected trusted Action feedback codec for an owned Goal.
/// Builtin Fibonacci appends count32/int32 values; an empty queue returns 11.
/// @brief Receive ID8 plus the selected trusted Action feedback codec for an owned Goal. Builtin Fibonacci appends
/// count32/int32 values; an empty queue returns 11.
/// @details Check the complete returned ID prefix before decoding feedback. A copied ID is a value, not a new native
/// ownership grant.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("action_receive_feedback"))) extern uint32_t
    roswasm_ffi_action_receive_feedback(uint64_t handle,
                                        uint32_t memory,
                                        uint64_t request_offset,
                                        uint64_t request_length,
                                        uint64_t response_offset,
                                        uint64_t capacity,
                                        uint64_t length_out_offset);
/// roswasm_ffi_action_receive_result: Receive ID8/outcome8 plus the selected trusted terminal result codec. Builtin
/// Fibonacci appends count32/int32 values. Successful terminal consumption retires ownership.
/// @brief Receive ID8/outcome8 plus the selected trusted terminal result codec. Builtin Fibonacci appends count32/int32
/// values. Successful terminal consumption retires ownership.
/// @details Check ID and terminal outcome before publishing the decoded value. Successful terminal consumption retires
/// that goal ownership.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("action_receive_result"))) extern uint32_t
    roswasm_ffi_action_receive_result(uint64_t handle,
                                      uint32_t memory,
                                      uint64_t request_offset,
                                      uint64_t request_length,
                                      uint64_t response_offset,
                                      uint64_t capacity,
                                      uint64_t length_out_offset);
/// roswasm_ffi_action_respond: Send ID8/kind8 plus the selected trusted feedback/result codec. Builtin Fibonacci
/// appends count32/int32 values. Advertiser and responder require the same explicit ROS2 QoS contract.
/// @brief Send ID8/kind8 plus the selected trusted feedback/result codec. Builtin Fibonacci appends count32/int32
/// values. Advertiser and responder require the same explicit ROS2 QoS contract.
/// @details Keep ID, kind and the complete selected feedback/result body. Sending one terminal result must not be
/// replayed after an unknown outcome.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("action_respond"))) extern uint32_t roswasm_ffi_action_respond(uint64_t handle,
                                                                                                                         uint32_t memory,
                                                                                                                         uint64_t request_offset,
                                                                                                                         uint64_t request_length,
                                                                                                                         uint64_t response_offset,
                                                                                                                         uint64_t capacity,
                                                                                                                         uint64_t length_out_offset);
/// roswasm_ffi_action_send_goal: Send the selected trusted Action goal codec and receive an opaque u64 Goal ID. Builtin
/// Fibonacci uses one canonical i32 order. Generated bounded Actions require their registered goal codec; all bounds
/// remain explicit.
/// @brief Send the selected trusted Action goal codec and receive an opaque u64 Goal ID. Builtin Fibonacci uses one
/// canonical i32 order. Generated bounded Actions require their registered goal codec; all bounds remain explicit.
/// @details Keep the returned nonzero ID exactly as u64. Record submission before callbacks, and distinguish admitted,
/// terminal and cancelled states.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("action_send_goal"))) extern uint32_t roswasm_ffi_action_send_goal(uint64_t handle,
                                                                                                                             uint32_t memory,
                                                                                                                             uint64_t request_offset,
                                                                                                                             uint64_t request_length,
                                                                                                                             uint64_t response_offset,
                                                                                                                             uint64_t capacity,
                                                                                                                             uint64_t length_out_offset);
/// roswasm_ffi_capability_close: Retire this handle generation. The handle may already be retired if later Gateway
/// cleanup returns an error.
/// @brief Retire this handle generation. The handle may already be retired if later Gateway cleanup returns an error.
/// @details Retire all local copies before notification. Gateway cleanup failure does not restore the retired
/// generation; never retry the old handle.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("capability_close"))) extern uint32_t roswasm_ffi_capability_close(uint64_t handle);
/// roswasm_ffi_capability_open: Open one explicitly granted alias in the caller Instance and selected backend. Write an
/// opaque eight-byte little-endian handle on success.
/// @brief Open one explicitly granted alias in the caller Instance and selected backend. Write an opaque eight-byte
/// little-endian handle on success.
/// @details Reserve local owner/slot storage before calling. A failed open creates no usable local owner; success must
/// still return a nonzero handle.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] alias_offset Byte offset of the alias UTF-8 input in memory. Keep its backing storage stable and
/// unchanged through return.
/// @param[in] alias_length Alias byte count, 1..255; strict UTF-8 with no NUL. The alias selects an existing trusted
/// grant, never a new resource.
/// @param[out] handle_out_offset Byte offset of a writable eight-byte little-endian handle slot. Read its nonzero value
/// only after status 0.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("capability_open"))) extern uint32_t
    roswasm_ffi_capability_open(uint32_t memory, uint64_t alias_offset, uint64_t alias_length, uint64_t handle_out_offset);
/// roswasm_ffi_capability_revoke: Revoke the alias for this Instance/backend, invalidating all its open sibling
/// handles. Reopening cannot restore the revoked grant.
/// @brief Revoke the alias for this Instance/backend, invalidating all its open sibling handles. Reopening cannot
/// restore the revoked grant.
/// @details Revocation invalidates sibling handles for this alias in the current principal. It is not physical
/// controller stop or global policy administration.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("capability_revoke"))) extern uint32_t roswasm_ffi_capability_revoke(uint64_t handle);
/// roswasm_ffi_event_poll: Poll a topic, service-request, incoming-goal or ROS2 parameter-event queue. Error 11 means
/// no event; no native callback enters Wasm.
/// @brief Poll a topic, service-request, incoming-goal or ROS2 parameter-event queue. Error 11 means no event; no
/// native callback enters Wasm.
/// @details This is the legacy receive contract: an insufficient buffer may already have consumed its event. Do not
/// implement automatic resize/replay.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[out] output_offset Byte offset of caller-owned writable event/readiness storage; readiness writes 32 bytes,
/// polls use capacity.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("event_poll"))) extern uint32_t
    roswasm_ffi_event_poll(uint64_t handle, uint32_t memory, uint64_t output_offset, uint64_t capacity, uint64_t length_out_offset);
/// roswasm_ffi_event_poll_v1: Read one complete versioned64-byte-header event. Error90 writes required size and retains
/// the event; error11 is idle. No automatic replay.
/// @brief Read one complete versioned64-byte-header event. Error90 writes required size and retains the event; error11
/// is idle. No automatic replay.
/// @details Decode the complete 64-byte versioned header and bounded payload. Capacity 90 retains the pinned event; 11
/// is idle, not a delivered value.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[out] output_offset Byte offset of caller-owned writable event/readiness storage; readiness writes 32 bytes,
/// polls use capacity.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("event_poll_v1"))) extern uint32_t
    roswasm_ffi_event_poll_v1(uint64_t handle, uint32_t memory, uint64_t output_offset, uint64_t capacity, uint64_t length_out_offset);
/// roswasm_ffi_event_ready: Write32 little-endian bytes: ready count,next record bytes,admission slots,admission bytes.
/// A readiness snapshot is not a reservation.
/// @brief Write32 little-endian bytes: ready count,next record bytes,admission slots,admission bytes. A readiness
/// snapshot is not a reservation.
/// @details Decode four LE u64 values. This snapshot neither reserves an admission slot nor guarantees that a later
/// poll has the same capacity.
/// @param[in] observer_handle Separately authorized event.observe owner paired with the selected source by trusted Host
/// policy.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[out] output_offset Byte offset of caller-owned writable event/readiness storage; readiness writes 32 bytes,
/// polls use capacity.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("event_ready"))) extern uint32_t
    roswasm_ffi_event_ready(uint64_t observer_handle, uint32_t memory, uint64_t output_offset);
/// roswasm_ffi_event_watch: Bind separately granted event.observe and source owners. Correlation is nonzero only when
/// an owned outgoing Action data kind is selected; metadata-only watches use zero and activate/consume no native
/// payload. No aliases or rights are created.
/// @brief Bind separately granted event.observe and source owners. Correlation is nonzero only when an owned outgoing
/// Action data kind is selected; metadata-only watches use zero and activate/consume no native payload. No aliases or
/// rights are created.
/// @details Keep observer and source owners independently alive. A metadata watch neither activates payload traffic nor
/// inherits business-operation rights.
/// @param[in] observer_handle Separately authorized event.observe owner paired with the selected source by trusted Host
/// policy.
/// @param[in] source_handle Separately authorized source owner in this Instance and backend. The observer does not
/// confer source rights.
/// @param[in] correlation Exact owned u64 outgoing-goal ID for a selected Action data watch; metadata-only watches use
/// 0. It grants no ownership.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("event_watch"))) extern uint32_t
    roswasm_ffi_event_watch(uint64_t observer_handle, uint64_t source_handle, uint64_t correlation);
/// roswasm_ffi_graph_inspect_node: Inspect the configured node filter with an empty request and decode sorted canonical
/// String rows.
/// @brief Inspect the configured node filter with an empty request and decode sorted canonical String rows.
/// @details Use the exact trusted inspect node filter. Returned sorted canonical String rows confer no discovery or
/// business-operation rights.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("graph_inspect_node"))) extern uint32_t roswasm_ffi_graph_inspect_node(uint64_t handle,
                                                                                                                                 uint32_t memory,
                                                                                                                                 uint64_t request_offset,
                                                                                                                                 uint64_t request_length,
                                                                                                                                 uint64_t response_offset,
                                                                                                                                 uint64_t capacity,
                                                                                                                                 uint64_t length_out_offset);
/// roswasm_ffi_graph_inspect_service: Inspect the configured service filter with an empty request and decode sorted
/// canonical String rows.
/// @brief Inspect the configured service filter with an empty request and decode sorted canonical String rows.
/// @details Use the exact trusted inspect service filter. Returned sorted canonical String rows confer no discovery or
/// business-operation rights.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("graph_inspect_service"))) extern uint32_t
    roswasm_ffi_graph_inspect_service(uint64_t handle,
                                      uint32_t memory,
                                      uint64_t request_offset,
                                      uint64_t request_length,
                                      uint64_t response_offset,
                                      uint64_t capacity,
                                      uint64_t length_out_offset);
/// roswasm_ffi_graph_inspect_topic: Inspect the configured topic filter with an empty request and decode sorted
/// canonical String rows.
/// @brief Inspect the configured topic filter with an empty request and decode sorted canonical String rows.
/// @details Use the exact trusted inspect topic filter. Returned sorted canonical String rows confer no discovery or
/// business-operation rights.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("graph_inspect_topic"))) extern uint32_t roswasm_ffi_graph_inspect_topic(uint64_t handle,
                                                                                                                                   uint32_t memory,
                                                                                                                                   uint64_t request_offset,
                                                                                                                                   uint64_t request_length,
                                                                                                                                   uint64_t response_offset,
                                                                                                                                   uint64_t capacity,
                                                                                                                                   uint64_t length_out_offset);
/// roswasm_ffi_graph_list_nodes: List nodes within the explicit graph filter; this is not unrestricted discovery
/// authority.
/// @brief List nodes within the explicit graph filter; this is not unrestricted discovery authority.
/// @details Use the exact trusted list nodes filter. Returned sorted canonical String rows confer no discovery or
/// business-operation rights.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("graph_list_nodes"))) extern uint32_t roswasm_ffi_graph_list_nodes(uint64_t handle,
                                                                                                                             uint32_t memory,
                                                                                                                             uint64_t request_offset,
                                                                                                                             uint64_t request_length,
                                                                                                                             uint64_t response_offset,
                                                                                                                             uint64_t capacity,
                                                                                                                             uint64_t length_out_offset);
/// roswasm_ffi_graph_list_services: List services within the explicit graph filter; decode sorted canonical String
/// rows.
/// @brief List services within the explicit graph filter; decode sorted canonical String rows.
/// @details Use the exact trusted list services filter. Returned sorted canonical String rows confer no discovery or
/// business-operation rights.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("graph_list_services"))) extern uint32_t roswasm_ffi_graph_list_services(uint64_t handle,
                                                                                                                                   uint32_t memory,
                                                                                                                                   uint64_t request_offset,
                                                                                                                                   uint64_t request_length,
                                                                                                                                   uint64_t response_offset,
                                                                                                                                   uint64_t capacity,
                                                                                                                                   uint64_t length_out_offset);
/// roswasm_ffi_graph_list_topics: List topics within the explicit exact/prefix graph filter; decode sorted canonical
/// String rows.
/// @brief List topics within the explicit exact/prefix graph filter; decode sorted canonical String rows.
/// @details Use the exact trusted list topics filter. Returned sorted canonical String rows confer no discovery or
/// business-operation rights.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("graph_list_topics"))) extern uint32_t roswasm_ffi_graph_list_topics(uint64_t handle,
                                                                                                                               uint32_t memory,
                                                                                                                               uint64_t request_offset,
                                                                                                                               uint64_t request_length,
                                                                                                                               uint64_t response_offset,
                                                                                                                               uint64_t capacity,
                                                                                                                               uint64_t length_out_offset);
/// roswasm_ffi_log_write: Write one canonical String to the separately granted ROS logger. This does not open a file or
/// socket.
/// @brief Write one canonical String to the separately granted ROS logger. This does not open a file or socket.
/// @details Encode one complete canonical String for the selected ROS logger. Ordinary stderr is separate and does not
/// require this ROS logging grant.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] payload_offset Byte offset of the complete canonical selected-type payload. It is not a native ROS object
/// or host pointer.
/// @param[in] payload_length Payload extent in bytes, within memory and the selected type/alias/envelope quota. Zero is
/// type-dependent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("log_write"))) extern uint32_t
    roswasm_ffi_log_write(uint64_t handle, uint32_t memory, uint64_t payload_offset, uint64_t payload_length);
/// roswasm_ffi_parameter_delete: Delete the explicitly granted ROS1 parameter using an empty request; no implicit
/// parent-name authority is added.
/// @brief Delete the explicitly granted ROS1 parameter using an empty request; no implicit parent-name authority is
/// added.
/// @details ROS1 only. Delete exactly the granted key; authority over a child key is not authority over its parent
/// namespace.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("parameter_delete"))) extern uint32_t roswasm_ffi_parameter_delete(uint64_t handle,
                                                                                                                             uint32_t memory,
                                                                                                                             uint64_t request_offset,
                                                                                                                             uint64_t request_length,
                                                                                                                             uint64_t response_offset,
                                                                                                                             uint64_t capacity,
                                                                                                                             uint64_t length_out_offset);
/// roswasm_ffi_parameter_exists: Query existence of the explicitly granted ROS1 parameter; decode one canonical Bool
/// response.
/// @brief Query existence of the explicitly granted ROS1 parameter; decode one canonical Bool response.
/// @details ROS1 only. Decode one strict canonical Bool; an error must not be converted into a false existence result.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("parameter_exists"))) extern uint32_t roswasm_ffi_parameter_exists(uint64_t handle,
                                                                                                                             uint32_t memory,
                                                                                                                             uint64_t request_offset,
                                                                                                                             uint64_t request_length,
                                                                                                                             uint64_t response_offset,
                                                                                                                             uint64_t capacity,
                                                                                                                             uint64_t length_out_offset);
/// roswasm_ffi_parameter_get: Read the value fixed by the capability type. An empty request does not select a different
/// node, name or value kind.
/// @brief Read the value fixed by the capability type. An empty request does not select a different node, name or value
/// kind.
/// @details Decode only the value kind fixed by the capability. An empty request does not add node, parameter-name or
/// parent-namespace authority.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("parameter_get"))) extern uint32_t roswasm_ffi_parameter_get(uint64_t handle,
                                                                                                                       uint32_t memory,
                                                                                                                       uint64_t request_offset,
                                                                                                                       uint64_t request_length,
                                                                                                                       uint64_t response_offset,
                                                                                                                       uint64_t capacity,
                                                                                                                       uint64_t length_out_offset);
/// roswasm_ffi_parameter_list: List the separately authorized parameter scope; decode the bounded canonical String
/// result.
/// @brief List the separately authorized parameter scope; decode the bounded canonical String result.
/// @details Decode the bounded canonical String result for the selected scope. Returned names do not themselves grant
/// get/set/delete access.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("parameter_list"))) extern uint32_t roswasm_ffi_parameter_list(uint64_t handle,
                                                                                                                         uint32_t memory,
                                                                                                                         uint64_t request_offset,
                                                                                                                         uint64_t request_length,
                                                                                                                         uint64_t response_offset,
                                                                                                                         uint64_t capacity,
                                                                                                                         uint64_t length_out_offset);
/// roswasm_ffi_parameter_search: Search the explicitly granted ROS1 resource with an empty request. Parent namespaces
/// are included only with search-parent-namespaces=true, for the same final key and within allowed-name-prefix before
/// every native query.
/// @brief Search the explicitly granted ROS1 resource with an empty request. Parent namespaces are included only with
/// search-parent-namespaces=true, for the same final key and within allowed-name-prefix before every native query.
/// @details ROS1 only. Parent search is a separately configured opt-in and remains constrained by allowed-name-prefix
/// before every native query.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("parameter_search"))) extern uint32_t roswasm_ffi_parameter_search(uint64_t handle,
                                                                                                                             uint32_t memory,
                                                                                                                             uint64_t request_offset,
                                                                                                                             uint64_t request_length,
                                                                                                                             uint64_t response_offset,
                                                                                                                             uint64_t capacity,
                                                                                                                             uint64_t length_out_offset);
/// roswasm_ffi_parameter_set: Set a canonical value of the explicitly granted parameter type. Numeric and element
/// bounds remain enforced by the host.
/// @brief Set a canonical value of the explicitly granted parameter type. Numeric and element bounds remain enforced by
/// the host.
/// @details Validate the complete typed value and all element bounds before the effect. Timeout does not establish that
/// the native parameter stayed unchanged.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("parameter_set"))) extern uint32_t roswasm_ffi_parameter_set(uint64_t handle,
                                                                                                                       uint32_t memory,
                                                                                                                       uint64_t request_offset,
                                                                                                                       uint64_t request_length,
                                                                                                                       uint64_t response_offset,
                                                                                                                       uint64_t capacity,
                                                                                                                       uint64_t length_out_offset);
/// roswasm_ffi_service_advertise: Activate the explicitly granted service server. Poll owned request IDs through
/// event_poll.
/// @brief Activate the explicitly granted service server. Poll owned request IDs through event_poll.
/// @details The server owns only requests actually delivered to it. A responder is a separate grant; advertising does
/// not grant arbitrary responses.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("service_advertise"))) extern uint32_t roswasm_ffi_service_advertise(uint64_t handle);
/// roswasm_ffi_service_call: Call the explicitly selected service using its canonical request/response type and
/// configured deadline. Do not automatically replay a timed-out call.
/// @brief Call the explicitly selected service using its canonical request/response type and configured deadline. Do
/// not automatically replay a timed-out call.
/// @details Use the exact request/response canonical identity selected by the Host. The finite deadline belongs to
/// trusted policy, not a Guest-supplied route.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("service_call"))) extern uint32_t roswasm_ffi_service_call(uint64_t handle,
                                                                                                                     uint32_t memory,
                                                                                                                     uint64_t request_offset,
                                                                                                                     uint64_t request_length,
                                                                                                                     uint64_t response_offset,
                                                                                                                     uint64_t capacity,
                                                                                                                     uint64_t length_out_offset);
/// roswasm_ffi_service_respond: Respond to an owned live request using a separate response grant and u64
/// request-ID-prefixed canonical response.
/// @brief Respond to an owned live request using a separate response grant and u64 request-ID-prefixed canonical
/// response.
/// @details Prefix the response with the actually delivered request ID. This legacy operation does not implement the
/// separate owned-native raw12 protocol.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("service_respond"))) extern uint32_t roswasm_ffi_service_respond(uint64_t handle,
                                                                                                                           uint32_t memory,
                                                                                                                           uint64_t request_offset,
                                                                                                                           uint64_t request_length,
                                                                                                                           uint64_t response_offset,
                                                                                                                           uint64_t capacity,
                                                                                                                           uint64_t length_out_offset);
/// roswasm_ffi_service_submit: Admit one bounded asynchronous service request. A successful acknowledgement writes
/// requestID; completion requires explicit service-response and resource-error observation. Never replay a timeout.
/// @brief Admit one bounded asynchronous service request. A successful acknowledgement writes requestID; completion
/// requires explicit service-response and resource-error observation. Never replay a timeout.
/// @details Register correlation/cleanup state before admission. Observe service-response and resource-error events
/// explicitly; never replay unknown delivery.
/// @param[in] source_handle Separately authorized source owner in this Instance and backend. The observer does not
/// confer source rights.
/// @param[in] observer_handle Separately authorized event.observe owner paired with the selected source by trusted Host
/// policy.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] request_id_out_offset Byte offset of an eight-byte LE request-ID slot written on successful admission.
/// Acknowledgement does not mean that the native service completed.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("service_submit"))) extern uint32_t roswasm_ffi_service_submit(uint64_t source_handle,
                                                                                                                         uint64_t observer_handle,
                                                                                                                         uint32_t memory,
                                                                                                                         uint64_t request_offset,
                                                                                                                         uint64_t request_length,
                                                                                                                         uint64_t request_id_out_offset);
/// roswasm_ffi_tf_broadcast: Broadcast one canonical TransformStamped for the separately configured frame pair. Do not
/// normalize its quaternion implicitly.
/// @brief Broadcast one canonical TransformStamped for the separately configured frame pair. Do not normalize its
/// quaternion implicitly.
/// @details Preserve every TransformStamped field and unit. Neither normalizing a quaternion nor changing frame names
/// is an implicit codec step.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("tf_broadcast"))) extern uint32_t roswasm_ffi_tf_broadcast(uint64_t handle,
                                                                                                                     uint32_t memory,
                                                                                                                     uint64_t request_offset,
                                                                                                                     uint64_t request_length,
                                                                                                                     uint64_t response_offset,
                                                                                                                     uint64_t capacity,
                                                                                                                     uint64_t length_out_offset);
/// roswasm_ffi_tf_lookup: Request the separately configured source/target frame pair at u64 nanoseconds; zero selects
/// the latest admitted transform.
/// @brief Request the separately configured source/target frame pair at u64 nanoseconds; zero selects the latest
/// admitted transform.
/// @details The request is u64 nanoseconds in the admitted clock domain;0 selects latest. Source/target frames remain
/// fixed by the independent grant.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("tf_lookup"))) extern uint32_t roswasm_ffi_tf_lookup(uint64_t handle,
                                                                                                               uint32_t memory,
                                                                                                               uint64_t request_offset,
                                                                                                               uint64_t request_length,
                                                                                                               uint64_t response_offset,
                                                                                                               uint64_t capacity,
                                                                                                               uint64_t length_out_offset);
/// roswasm_ffi_time_read_ros: Read the separately authorized ROS clock domain as little-endian u64 nanoseconds.
/// @brief Read the separately authorized ROS clock domain as little-endian u64 nanoseconds.
/// @details Read exact u64 nanoseconds in the separately authorized ros domain. Do not treat steady time as an epoch or
/// borrow another clock grant.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("time_read_ros"))) extern uint32_t roswasm_ffi_time_read_ros(uint64_t handle,
                                                                                                                       uint32_t memory,
                                                                                                                       uint64_t request_offset,
                                                                                                                       uint64_t request_length,
                                                                                                                       uint64_t response_offset,
                                                                                                                       uint64_t capacity,
                                                                                                                       uint64_t length_out_offset);
/// roswasm_ffi_time_read_wall: Read the independently authorized ROS1 wall clock; another time grant does not imply
/// this one.
/// @brief Read the independently authorized ROS1 wall clock; another time grant does not imply this one.
/// @details Read exact u64 nanoseconds in the separately authorized wall domain. Do not treat steady time as an epoch
/// or borrow another clock grant.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("time_read_wall"))) extern uint32_t roswasm_ffi_time_read_wall(uint64_t handle,
                                                                                                                         uint32_t memory,
                                                                                                                         uint64_t request_offset,
                                                                                                                         uint64_t request_length,
                                                                                                                         uint64_t response_offset,
                                                                                                                         uint64_t capacity,
                                                                                                                         uint64_t length_out_offset);
/// roswasm_ffi_topic_publish: Publish one canonical generated message through a separately granted publisher alias.
/// @brief Publish one canonical generated message through a separately granted publisher alias.
/// @details Encode the full selected schema before this one effectful call. Acknowledgement is not a physical
/// actuator-completion certificate.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] payload_offset Byte offset of the complete canonical selected-type payload. It is not a native ROS object
/// or host pointer.
/// @param[in] payload_length Payload extent in bytes, within memory and the selected type/alias/envelope quota. Zero is
/// type-dependent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("topic_publish"))) extern uint32_t
    roswasm_ffi_topic_publish(uint64_t handle, uint32_t memory, uint64_t payload_offset, uint64_t payload_length);
/// roswasm_ffi_topic_subscribe: Activate a separately granted subscription queue. Receive messages through event_poll
/// on the guest execution thread.
/// @brief Activate a separately granted subscription queue. Receive messages through event_poll on the guest execution
/// thread.
/// @details Activation and payload consumption are separate. Poll on the Guest execution thread; no native callback
/// re-enters the Guest.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 1 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros1_v1"), import_name("topic_subscribe"))) extern uint32_t roswasm_ffi_topic_subscribe(uint64_t handle);

/** @brief Dispatch one private operation; see roswasm_c_ffi.h for the complete argument contract.
 * @details Only original i32 operands are narrowed. All i64 offsets, sizes,
 * correlations and opaque handles remain intact. An unavailable operation returns 95. */
uint32_t roswasm_c_ffi_invoke(uint32_t operation, uint64_t a0, uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
    switch(operation)
    {
        case 0: return roswasm_ffi_abi_version();
        case 1: return roswasm_ffi_action_advertise(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 2: return roswasm_ffi_action_cancel_any_goal(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 3: return roswasm_ffi_action_cancel_own_goal(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 4: return roswasm_ffi_action_receive_feedback(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 5: return roswasm_ffi_action_receive_result(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 6: return roswasm_ffi_action_respond(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 7: return roswasm_ffi_action_send_goal(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 8: return roswasm_ffi_capability_close(a0);
        case 9: return roswasm_ffi_capability_open((uint32_t)a0, a1, a2, a3);
        case 10: return roswasm_ffi_capability_revoke(a0);
        case 11: return roswasm_ffi_event_poll(a0, (uint32_t)a1, a2, a3, a4);
        case 12: return roswasm_ffi_event_poll_v1(a0, (uint32_t)a1, a2, a3, a4);
        case 13: return roswasm_ffi_event_ready(a0, (uint32_t)a1, a2);
        case 14: return roswasm_ffi_event_watch(a0, a1, a2);
        case 16: return roswasm_ffi_graph_inspect_node(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 17: return roswasm_ffi_graph_inspect_service(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 18: return roswasm_ffi_graph_inspect_topic(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 19: return roswasm_ffi_graph_list_nodes(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 20: return roswasm_ffi_graph_list_services(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 21: return roswasm_ffi_graph_list_topics(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 24: return roswasm_ffi_log_write(a0, (uint32_t)a1, a2, a3);
        case 26: return roswasm_ffi_parameter_delete(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 28: return roswasm_ffi_parameter_exists(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 29: return roswasm_ffi_parameter_get(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 30: return roswasm_ffi_parameter_list(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 31: return roswasm_ffi_parameter_search(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 32: return roswasm_ffi_parameter_set(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 35: return roswasm_ffi_service_advertise(a0);
        case 36: return roswasm_ffi_service_call(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 37: return roswasm_ffi_service_respond(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 38: return roswasm_ffi_service_submit(a0, a1, (uint32_t)a2, a3, a4, a5);
        case 39: return roswasm_ffi_tf_broadcast(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 40: return roswasm_ffi_tf_lookup(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 41: return roswasm_ffi_time_read_ros(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 44: return roswasm_ffi_time_read_wall(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 45: return roswasm_ffi_topic_publish(a0, (uint32_t)a1, a2, a3);
        case 46: return roswasm_ffi_topic_subscribe(a0);
        default: return 95;
    }
}
#endif
#if ROSWASM_C_FFI_BACKEND == 2
/// roswasm_ffi_abi_version: Return ABI version 1. This does not open a capability or authorize a resource.
/// @brief Return ABI version 1. This does not open a capability or authorize a resource.
/// @details This query creates no owner, endpoint, queue, timer or ROS context.
/// @return Unsigned ABI version 1; this value is not an errno.
/// @permissions None beyond module admission; this query creates no ROS rights.
/// @failure Missing module/signature prevents instantiation; no Host substitute is used.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("abi_version"))) extern uint32_t roswasm_ffi_abi_version(void);
/// roswasm_ffi_action_advertise: Activate the explicitly granted Action server with an empty command. Poll ID8 plus the
/// selected trusted goal codec; builtin Fibonacci uses i32 order. Responses require another grant.
/// @brief Activate the explicitly granted Action server with an empty command. Poll ID8 plus the selected trusted goal
/// codec; builtin Fibonacci uses i32 order. Responses require another grant.
/// @details The empty activation request does not choose another Action/type. Handle incoming goals on the
/// caller-driven Guest executor.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("action_advertise"))) extern uint32_t roswasm_ffi_action_advertise(uint64_t handle,
                                                                                                                             uint32_t memory,
                                                                                                                             uint64_t request_offset,
                                                                                                                             uint64_t request_length,
                                                                                                                             uint64_t response_offset,
                                                                                                                             uint64_t capacity,
                                                                                                                             uint64_t length_out_offset);
/// roswasm_ffi_action_cancel_any_goal: Use the separately granted any-cancel operation. Goal ID zero is valid only for
/// this independently authorized operation.
/// @brief Use the separately granted any-cancel operation. Goal ID zero is valid only for this independently authorized
/// operation.
/// @details This operation needs its own any-cancel grant. The permitted zero selector here must never leak into
/// own-goal APIs.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("action_cancel_any_goal"))) extern uint32_t
    roswasm_ffi_action_cancel_any_goal(uint64_t handle,
                                       uint32_t memory,
                                       uint64_t request_offset,
                                       uint64_t request_length,
                                       uint64_t response_offset,
                                       uint64_t capacity,
                                       uint64_t length_out_offset);
/// roswasm_ffi_action_cancel_own_goal: Request cancellation of one owned Goal using its u64 ID and a separately
/// authorized cancel capability.
/// @brief Request cancellation of one owned Goal using its u64 ID and a separately authorized cancel capability.
/// @details The ID must belong to the calling principal. A cancel acknowledgement is distinct from terminal result and
/// physical stopping.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("action_cancel_own_goal"))) extern uint32_t
    roswasm_ffi_action_cancel_own_goal(uint64_t handle,
                                       uint32_t memory,
                                       uint64_t request_offset,
                                       uint64_t request_length,
                                       uint64_t response_offset,
                                       uint64_t capacity,
                                       uint64_t length_out_offset);
/// roswasm_ffi_action_receive_feedback: Receive ID8 plus the selected trusted Action feedback codec for an owned Goal.
/// Builtin Fibonacci appends count32/int32 values; an empty queue returns 11.
/// @brief Receive ID8 plus the selected trusted Action feedback codec for an owned Goal. Builtin Fibonacci appends
/// count32/int32 values; an empty queue returns 11.
/// @details Check the complete returned ID prefix before decoding feedback. A copied ID is a value, not a new native
/// ownership grant.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("action_receive_feedback"))) extern uint32_t
    roswasm_ffi_action_receive_feedback(uint64_t handle,
                                        uint32_t memory,
                                        uint64_t request_offset,
                                        uint64_t request_length,
                                        uint64_t response_offset,
                                        uint64_t capacity,
                                        uint64_t length_out_offset);
/// roswasm_ffi_action_receive_result: Receive ID8/outcome8 plus the selected trusted terminal result codec. Builtin
/// Fibonacci appends count32/int32 values. Successful terminal consumption retires ownership.
/// @brief Receive ID8/outcome8 plus the selected trusted terminal result codec. Builtin Fibonacci appends count32/int32
/// values. Successful terminal consumption retires ownership.
/// @details Check ID and terminal outcome before publishing the decoded value. Successful terminal consumption retires
/// that goal ownership.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("action_receive_result"))) extern uint32_t
    roswasm_ffi_action_receive_result(uint64_t handle,
                                      uint32_t memory,
                                      uint64_t request_offset,
                                      uint64_t request_length,
                                      uint64_t response_offset,
                                      uint64_t capacity,
                                      uint64_t length_out_offset);
/// roswasm_ffi_action_respond: Send ID8/kind8 plus the selected trusted feedback/result codec. Builtin Fibonacci
/// appends count32/int32 values. Advertiser and responder require the same explicit ROS2 QoS contract.
/// @brief Send ID8/kind8 plus the selected trusted feedback/result codec. Builtin Fibonacci appends count32/int32
/// values. Advertiser and responder require the same explicit ROS2 QoS contract.
/// @details Keep ID, kind and the complete selected feedback/result body. Sending one terminal result must not be
/// replayed after an unknown outcome.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("action_respond"))) extern uint32_t roswasm_ffi_action_respond(uint64_t handle,
                                                                                                                         uint32_t memory,
                                                                                                                         uint64_t request_offset,
                                                                                                                         uint64_t request_length,
                                                                                                                         uint64_t response_offset,
                                                                                                                         uint64_t capacity,
                                                                                                                         uint64_t length_out_offset);
/// roswasm_ffi_action_send_goal: Send the selected trusted Action goal codec and receive an opaque u64 Goal ID. Builtin
/// Fibonacci uses one canonical i32 order. Generated bounded Actions require their registered goal codec; all bounds
/// remain explicit.
/// @brief Send the selected trusted Action goal codec and receive an opaque u64 Goal ID. Builtin Fibonacci uses one
/// canonical i32 order. Generated bounded Actions require their registered goal codec; all bounds remain explicit.
/// @details Keep the returned nonzero ID exactly as u64. Record submission before callbacks, and distinguish admitted,
/// terminal and cancelled states.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("action_send_goal"))) extern uint32_t roswasm_ffi_action_send_goal(uint64_t handle,
                                                                                                                             uint32_t memory,
                                                                                                                             uint64_t request_offset,
                                                                                                                             uint64_t request_length,
                                                                                                                             uint64_t response_offset,
                                                                                                                             uint64_t capacity,
                                                                                                                             uint64_t length_out_offset);
/// roswasm_ffi_capability_close: Retire this handle generation. The handle may already be retired if later Gateway
/// cleanup returns an error.
/// @brief Retire this handle generation. The handle may already be retired if later Gateway cleanup returns an error.
/// @details Retire all local copies before notification. Gateway cleanup failure does not restore the retired
/// generation; never retry the old handle.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("capability_close"))) extern uint32_t roswasm_ffi_capability_close(uint64_t handle);
/// roswasm_ffi_capability_open: Open one explicitly granted alias in the caller Instance and selected backend. Write an
/// opaque eight-byte little-endian handle on success.
/// @brief Open one explicitly granted alias in the caller Instance and selected backend. Write an opaque eight-byte
/// little-endian handle on success.
/// @details Reserve local owner/slot storage before calling. A failed open creates no usable local owner; success must
/// still return a nonzero handle.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] alias_offset Byte offset of the alias UTF-8 input in memory. Keep its backing storage stable and
/// unchanged through return.
/// @param[in] alias_length Alias byte count, 1..255; strict UTF-8 with no NUL. The alias selects an existing trusted
/// grant, never a new resource.
/// @param[out] handle_out_offset Byte offset of a writable eight-byte little-endian handle slot. Read its nonzero value
/// only after status 0.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("capability_open"))) extern uint32_t
    roswasm_ffi_capability_open(uint32_t memory, uint64_t alias_offset, uint64_t alias_length, uint64_t handle_out_offset);
/// roswasm_ffi_capability_revoke: Revoke the alias for this Instance/backend, invalidating all its open sibling
/// handles. Reopening cannot restore the revoked grant.
/// @brief Revoke the alias for this Instance/backend, invalidating all its open sibling handles. Reopening cannot
/// restore the revoked grant.
/// @details Revocation invalidates sibling handles for this alias in the current principal. It is not physical
/// controller stop or global policy administration.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("capability_revoke"))) extern uint32_t roswasm_ffi_capability_revoke(uint64_t handle);
/// roswasm_ffi_event_poll: Poll a topic, service-request, incoming-goal or ROS2 parameter-event queue. Error 11 means
/// no event; no native callback enters Wasm.
/// @brief Poll a topic, service-request, incoming-goal or ROS2 parameter-event queue. Error 11 means no event; no
/// native callback enters Wasm.
/// @details This is the legacy receive contract: an insufficient buffer may already have consumed its event. Do not
/// implement automatic resize/replay.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[out] output_offset Byte offset of caller-owned writable event/readiness storage; readiness writes 32 bytes,
/// polls use capacity.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("event_poll"))) extern uint32_t
    roswasm_ffi_event_poll(uint64_t handle, uint32_t memory, uint64_t output_offset, uint64_t capacity, uint64_t length_out_offset);
/// roswasm_ffi_event_poll_v1: Read one complete versioned64-byte-header event. Error90 writes required size and retains
/// the event; error11 is idle. No automatic replay.
/// @brief Read one complete versioned64-byte-header event. Error90 writes required size and retains the event; error11
/// is idle. No automatic replay.
/// @details Decode the complete 64-byte versioned header and bounded payload. Capacity 90 retains the pinned event; 11
/// is idle, not a delivered value.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[out] output_offset Byte offset of caller-owned writable event/readiness storage; readiness writes 32 bytes,
/// polls use capacity.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("event_poll_v1"))) extern uint32_t
    roswasm_ffi_event_poll_v1(uint64_t handle, uint32_t memory, uint64_t output_offset, uint64_t capacity, uint64_t length_out_offset);
/// roswasm_ffi_event_ready: Write32 little-endian bytes: ready count,next record bytes,admission slots,admission bytes.
/// A readiness snapshot is not a reservation.
/// @brief Write32 little-endian bytes: ready count,next record bytes,admission slots,admission bytes. A readiness
/// snapshot is not a reservation.
/// @details Decode four LE u64 values. This snapshot neither reserves an admission slot nor guarantees that a later
/// poll has the same capacity.
/// @param[in] observer_handle Separately authorized event.observe owner paired with the selected source by trusted Host
/// policy.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[out] output_offset Byte offset of caller-owned writable event/readiness storage; readiness writes 32 bytes,
/// polls use capacity.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("event_ready"))) extern uint32_t
    roswasm_ffi_event_ready(uint64_t observer_handle, uint32_t memory, uint64_t output_offset);
/// roswasm_ffi_event_watch: Bind separately granted event.observe and source owners. Correlation is nonzero only when
/// an owned outgoing Action data kind is selected; metadata-only watches use zero and activate/consume no native
/// payload. No aliases or rights are created.
/// @brief Bind separately granted event.observe and source owners. Correlation is nonzero only when an owned outgoing
/// Action data kind is selected; metadata-only watches use zero and activate/consume no native payload. No aliases or
/// rights are created.
/// @details Keep observer and source owners independently alive. A metadata watch neither activates payload traffic nor
/// inherits business-operation rights.
/// @param[in] observer_handle Separately authorized event.observe owner paired with the selected source by trusted Host
/// policy.
/// @param[in] source_handle Separately authorized source owner in this Instance and backend. The observer does not
/// confer source rights.
/// @param[in] correlation Exact owned u64 outgoing-goal ID for a selected Action data watch; metadata-only watches use
/// 0. It grants no ownership.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("event_watch"))) extern uint32_t
    roswasm_ffi_event_watch(uint64_t observer_handle, uint64_t source_handle, uint64_t correlation);
/// roswasm_ffi_graph_inspect_action: Inspect the separately configured ROS2 Action filter; ROS1 does not export this
/// function.
/// @brief Inspect the separately configured ROS2 Action filter; ROS1 does not export this function.
/// @details Use the exact trusted inspect action filter. Returned sorted canonical String rows confer no discovery or
/// business-operation rights.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_inspect_action"))) extern uint32_t
    roswasm_ffi_graph_inspect_action(uint64_t handle,
                                     uint32_t memory,
                                     uint64_t request_offset,
                                     uint64_t request_length,
                                     uint64_t response_offset,
                                     uint64_t capacity,
                                     uint64_t length_out_offset);
/// roswasm_ffi_graph_inspect_node: Inspect the configured node filter with an empty request and decode sorted canonical
/// String rows.
/// @brief Inspect the configured node filter with an empty request and decode sorted canonical String rows.
/// @details Use the exact trusted inspect node filter. Returned sorted canonical String rows confer no discovery or
/// business-operation rights.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_inspect_node"))) extern uint32_t roswasm_ffi_graph_inspect_node(uint64_t handle,
                                                                                                                                 uint32_t memory,
                                                                                                                                 uint64_t request_offset,
                                                                                                                                 uint64_t request_length,
                                                                                                                                 uint64_t response_offset,
                                                                                                                                 uint64_t capacity,
                                                                                                                                 uint64_t length_out_offset);
/// roswasm_ffi_graph_inspect_service: Inspect the configured service filter with an empty request and decode sorted
/// canonical String rows.
/// @brief Inspect the configured service filter with an empty request and decode sorted canonical String rows.
/// @details Use the exact trusted inspect service filter. Returned sorted canonical String rows confer no discovery or
/// business-operation rights.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_inspect_service"))) extern uint32_t
    roswasm_ffi_graph_inspect_service(uint64_t handle,
                                      uint32_t memory,
                                      uint64_t request_offset,
                                      uint64_t request_length,
                                      uint64_t response_offset,
                                      uint64_t capacity,
                                      uint64_t length_out_offset);
/// roswasm_ffi_graph_inspect_topic: Inspect the configured topic filter with an empty request and decode sorted
/// canonical String rows.
/// @brief Inspect the configured topic filter with an empty request and decode sorted canonical String rows.
/// @details Use the exact trusted inspect topic filter. Returned sorted canonical String rows confer no discovery or
/// business-operation rights.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_inspect_topic"))) extern uint32_t roswasm_ffi_graph_inspect_topic(uint64_t handle,
                                                                                                                                   uint32_t memory,
                                                                                                                                   uint64_t request_offset,
                                                                                                                                   uint64_t request_length,
                                                                                                                                   uint64_t response_offset,
                                                                                                                                   uint64_t capacity,
                                                                                                                                   uint64_t length_out_offset);
/// roswasm_ffi_graph_list_nodes: List nodes within the explicit graph filter; this is not unrestricted discovery
/// authority.
/// @brief List nodes within the explicit graph filter; this is not unrestricted discovery authority.
/// @details Use the exact trusted list nodes filter. Returned sorted canonical String rows confer no discovery or
/// business-operation rights.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_list_nodes"))) extern uint32_t roswasm_ffi_graph_list_nodes(uint64_t handle,
                                                                                                                             uint32_t memory,
                                                                                                                             uint64_t request_offset,
                                                                                                                             uint64_t request_length,
                                                                                                                             uint64_t response_offset,
                                                                                                                             uint64_t capacity,
                                                                                                                             uint64_t length_out_offset);
/// roswasm_ffi_graph_list_services: List services within the explicit graph filter; decode sorted canonical String
/// rows.
/// @brief List services within the explicit graph filter; decode sorted canonical String rows.
/// @details Use the exact trusted list services filter. Returned sorted canonical String rows confer no discovery or
/// business-operation rights.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_list_services"))) extern uint32_t roswasm_ffi_graph_list_services(uint64_t handle,
                                                                                                                                   uint32_t memory,
                                                                                                                                   uint64_t request_offset,
                                                                                                                                   uint64_t request_length,
                                                                                                                                   uint64_t response_offset,
                                                                                                                                   uint64_t capacity,
                                                                                                                                   uint64_t length_out_offset);
/// roswasm_ffi_graph_list_topics: List topics within the explicit exact/prefix graph filter; decode sorted canonical
/// String rows.
/// @brief List topics within the explicit exact/prefix graph filter; decode sorted canonical String rows.
/// @details Use the exact trusted list topics filter. Returned sorted canonical String rows confer no discovery or
/// business-operation rights.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("graph_list_topics"))) extern uint32_t roswasm_ffi_graph_list_topics(uint64_t handle,
                                                                                                                               uint32_t memory,
                                                                                                                               uint64_t request_offset,
                                                                                                                               uint64_t request_length,
                                                                                                                               uint64_t response_offset,
                                                                                                                               uint64_t capacity,
                                                                                                                               uint64_t length_out_offset);
/// roswasm_ffi_lifecycle_change_state: Apply the single ROS2 transition fixed by policy using an empty request; the
/// guest cannot override that transition.
/// @brief Apply the single ROS2 transition fixed by policy using an empty request; the guest cannot override that
/// transition.
/// @details ROS2 only. The single transition is fixed by trusted policy. A timeout/unknown result must not
/// automatically replay controller changes.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("lifecycle_change_state"))) extern uint32_t
    roswasm_ffi_lifecycle_change_state(uint64_t handle,
                                       uint32_t memory,
                                       uint64_t request_offset,
                                       uint64_t request_length,
                                       uint64_t response_offset,
                                       uint64_t capacity,
                                       uint64_t length_out_offset);
/// roswasm_ffi_lifecycle_get_state: Read the separately selected ROS2 lifecycle node state as u8 state ID followed by
/// canonical String label.
/// @brief Read the separately selected ROS2 lifecycle node state as u8 state ID followed by canonical String label.
/// @details ROS2 only. Decode state ID and canonical label together; an error is not a lifecycle state or evidence that
/// a transition completed.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("lifecycle_get_state"))) extern uint32_t roswasm_ffi_lifecycle_get_state(uint64_t handle,
                                                                                                                                   uint32_t memory,
                                                                                                                                   uint64_t request_offset,
                                                                                                                                   uint64_t request_length,
                                                                                                                                   uint64_t response_offset,
                                                                                                                                   uint64_t capacity,
                                                                                                                                   uint64_t length_out_offset);
/// roswasm_ffi_log_write: Write one canonical String to the separately granted ROS logger. This does not open a file or
/// socket.
/// @brief Write one canonical String to the separately granted ROS logger. This does not open a file or socket.
/// @details Encode one complete canonical String for the selected ROS logger. Ordinary stderr is separate and does not
/// require this ROS logging grant.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] payload_offset Byte offset of the complete canonical selected-type payload. It is not a native ROS object
/// or host pointer.
/// @param[in] payload_length Payload extent in bytes, within memory and the selected type/alias/envelope quota. Zero is
/// type-dependent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("log_write"))) extern uint32_t
    roswasm_ffi_log_write(uint64_t handle, uint32_t memory, uint64_t payload_offset, uint64_t payload_length);
/// roswasm_ffi_parameter_declare: Declare a typed parameter on the explicitly selected local ROS2 Gateway node. Remote
/// declaration is unsupported.
/// @brief Declare a typed parameter on the explicitly selected local ROS2 Gateway node. Remote declaration is
/// unsupported.
/// @details ROS2 local Gateway node only. Validate the selected kind/default before the call; no remote declaration
/// emulation is supplied.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_declare"))) extern uint32_t roswasm_ffi_parameter_declare(uint64_t handle,
                                                                                                                               uint32_t memory,
                                                                                                                               uint64_t request_offset,
                                                                                                                               uint64_t request_length,
                                                                                                                               uint64_t response_offset,
                                                                                                                               uint64_t capacity,
                                                                                                                               uint64_t length_out_offset);
/// roswasm_ffi_parameter_describe: Read the separately authorized ROS2 parameter metadata as a canonical String.
/// @brief Read the separately authorized ROS2 parameter metadata as a canonical String.
/// @details ROS2 only. Returned metadata describes the selected resource; it neither declares a parameter nor
/// authorizes a value mutation.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_describe"))) extern uint32_t roswasm_ffi_parameter_describe(uint64_t handle,
                                                                                                                                 uint32_t memory,
                                                                                                                                 uint64_t request_offset,
                                                                                                                                 uint64_t request_length,
                                                                                                                                 uint64_t response_offset,
                                                                                                                                 uint64_t capacity,
                                                                                                                                 uint64_t length_out_offset);
/// roswasm_ffi_parameter_get: Read the value fixed by the capability type. An empty request does not select a different
/// node, name or value kind.
/// @brief Read the value fixed by the capability type. An empty request does not select a different node, name or value
/// kind.
/// @details Decode only the value kind fixed by the capability. An empty request does not add node, parameter-name or
/// parent-namespace authority.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_get"))) extern uint32_t roswasm_ffi_parameter_get(uint64_t handle,
                                                                                                                       uint32_t memory,
                                                                                                                       uint64_t request_offset,
                                                                                                                       uint64_t request_length,
                                                                                                                       uint64_t response_offset,
                                                                                                                       uint64_t capacity,
                                                                                                                       uint64_t length_out_offset);
/// roswasm_ffi_parameter_list: List the separately authorized parameter scope; decode the bounded canonical String
/// result.
/// @brief List the separately authorized parameter scope; decode the bounded canonical String result.
/// @details Decode the bounded canonical String result for the selected scope. Returned names do not themselves grant
/// get/set/delete access.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_list"))) extern uint32_t roswasm_ffi_parameter_list(uint64_t handle,
                                                                                                                         uint32_t memory,
                                                                                                                         uint64_t request_offset,
                                                                                                                         uint64_t request_length,
                                                                                                                         uint64_t response_offset,
                                                                                                                         uint64_t capacity,
                                                                                                                         uint64_t length_out_offset);
/// roswasm_ffi_parameter_set: Set a canonical value of the explicitly granted parameter type. Numeric and element
/// bounds remain enforced by the host.
/// @brief Set a canonical value of the explicitly granted parameter type. Numeric and element bounds remain enforced by
/// the host.
/// @details Validate the complete typed value and all element bounds before the effect. Timeout does not establish that
/// the native parameter stayed unchanged.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_set"))) extern uint32_t roswasm_ffi_parameter_set(uint64_t handle,
                                                                                                                       uint32_t memory,
                                                                                                                       uint64_t request_offset,
                                                                                                                       uint64_t request_length,
                                                                                                                       uint64_t response_offset,
                                                                                                                       uint64_t capacity,
                                                                                                                       uint64_t length_out_offset);
/// roswasm_ffi_parameter_subscribe_events: Activate a separate ROS2 parameter-event projection grant. This takes only
/// one handle, not the seven RPC arguments.
/// @brief Activate a separate ROS2 parameter-event projection grant. This takes only one handle, not the seven RPC
/// arguments.
/// @details ROS2 only. Activate the separate projection grant and consume its exact event codec; do not pass the seven
/// RPC arguments.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_subscribe_events"))) extern uint32_t
    roswasm_ffi_parameter_subscribe_events(uint64_t handle);
/// roswasm_ffi_parameter_undeclare: Undeclare a typed parameter on the explicitly selected local ROS2 Gateway node. A
/// missing remote operation is not emulated.
/// @brief Undeclare a typed parameter on the explicitly selected local ROS2 Gateway node. A missing remote operation is
/// not emulated.
/// @details ROS2 local Gateway node only. An unsupported remote operation remains unsupported rather than being
/// replaced by delete or set.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("parameter_undeclare"))) extern uint32_t roswasm_ffi_parameter_undeclare(uint64_t handle,
                                                                                                                                   uint32_t memory,
                                                                                                                                   uint64_t request_offset,
                                                                                                                                   uint64_t request_length,
                                                                                                                                   uint64_t response_offset,
                                                                                                                                   uint64_t capacity,
                                                                                                                                   uint64_t length_out_offset);
/// roswasm_ffi_service_advertise: Activate the explicitly granted service server. Poll owned request IDs through
/// event_poll.
/// @brief Activate the explicitly granted service server. Poll owned request IDs through event_poll.
/// @details The server owns only requests actually delivered to it. A responder is a separate grant; advertising does
/// not grant arbitrary responses.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("service_advertise"))) extern uint32_t roswasm_ffi_service_advertise(uint64_t handle);
/// roswasm_ffi_service_call: Call the explicitly selected service using its canonical request/response type and
/// configured deadline. Do not automatically replay a timed-out call.
/// @brief Call the explicitly selected service using its canonical request/response type and configured deadline. Do
/// not automatically replay a timed-out call.
/// @details Use the exact request/response canonical identity selected by the Host. The finite deadline belongs to
/// trusted policy, not a Guest-supplied route.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("service_call"))) extern uint32_t roswasm_ffi_service_call(uint64_t handle,
                                                                                                                     uint32_t memory,
                                                                                                                     uint64_t request_offset,
                                                                                                                     uint64_t request_length,
                                                                                                                     uint64_t response_offset,
                                                                                                                     uint64_t capacity,
                                                                                                                     uint64_t length_out_offset);
/// roswasm_ffi_service_respond: Respond to an owned live request using a separate response grant and u64
/// request-ID-prefixed canonical response.
/// @brief Respond to an owned live request using a separate response grant and u64 request-ID-prefixed canonical
/// response.
/// @details Prefix the response with the actually delivered request ID. This legacy operation does not implement the
/// separate owned-native raw12 protocol.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("service_respond"))) extern uint32_t roswasm_ffi_service_respond(uint64_t handle,
                                                                                                                           uint32_t memory,
                                                                                                                           uint64_t request_offset,
                                                                                                                           uint64_t request_length,
                                                                                                                           uint64_t response_offset,
                                                                                                                           uint64_t capacity,
                                                                                                                           uint64_t length_out_offset);
/// roswasm_ffi_service_submit: Admit one bounded asynchronous service request. A successful acknowledgement writes
/// requestID; completion requires explicit service-response and resource-error observation. Never replay a timeout.
/// @brief Admit one bounded asynchronous service request. A successful acknowledgement writes requestID; completion
/// requires explicit service-response and resource-error observation. Never replay a timeout.
/// @details Register correlation/cleanup state before admission. Observe service-response and resource-error events
/// explicitly; never replay unknown delivery.
/// @param[in] source_handle Separately authorized source owner in this Instance and backend. The observer does not
/// confer source rights.
/// @param[in] observer_handle Separately authorized event.observe owner paired with the selected source by trusted Host
/// policy.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] request_id_out_offset Byte offset of an eight-byte LE request-ID slot written on successful admission.
/// Acknowledgement does not mean that the native service completed.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("service_submit"))) extern uint32_t roswasm_ffi_service_submit(uint64_t source_handle,
                                                                                                                         uint64_t observer_handle,
                                                                                                                         uint32_t memory,
                                                                                                                         uint64_t request_offset,
                                                                                                                         uint64_t request_length,
                                                                                                                         uint64_t request_id_out_offset);
/// roswasm_ffi_tf_broadcast: Broadcast one canonical TransformStamped for the separately configured frame pair. Do not
/// normalize its quaternion implicitly.
/// @brief Broadcast one canonical TransformStamped for the separately configured frame pair. Do not normalize its
/// quaternion implicitly.
/// @details Preserve every TransformStamped field and unit. Neither normalizing a quaternion nor changing frame names
/// is an implicit codec step.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("tf_broadcast"))) extern uint32_t roswasm_ffi_tf_broadcast(uint64_t handle,
                                                                                                                     uint32_t memory,
                                                                                                                     uint64_t request_offset,
                                                                                                                     uint64_t request_length,
                                                                                                                     uint64_t response_offset,
                                                                                                                     uint64_t capacity,
                                                                                                                     uint64_t length_out_offset);
/// roswasm_ffi_tf_lookup: Request the separately configured source/target frame pair at u64 nanoseconds; zero selects
/// the latest admitted transform.
/// @brief Request the separately configured source/target frame pair at u64 nanoseconds; zero selects the latest
/// admitted transform.
/// @details The request is u64 nanoseconds in the admitted clock domain;0 selects latest. Source/target frames remain
/// fixed by the independent grant.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("tf_lookup"))) extern uint32_t roswasm_ffi_tf_lookup(uint64_t handle,
                                                                                                               uint32_t memory,
                                                                                                               uint64_t request_offset,
                                                                                                               uint64_t request_length,
                                                                                                               uint64_t response_offset,
                                                                                                               uint64_t capacity,
                                                                                                               uint64_t length_out_offset);
/// roswasm_ffi_time_read_ros: Read the separately authorized ROS clock domain as little-endian u64 nanoseconds.
/// @brief Read the separately authorized ROS clock domain as little-endian u64 nanoseconds.
/// @details Read exact u64 nanoseconds in the separately authorized ros domain. Do not treat steady time as an epoch or
/// borrow another clock grant.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("time_read_ros"))) extern uint32_t roswasm_ffi_time_read_ros(uint64_t handle,
                                                                                                                       uint32_t memory,
                                                                                                                       uint64_t request_offset,
                                                                                                                       uint64_t request_length,
                                                                                                                       uint64_t response_offset,
                                                                                                                       uint64_t capacity,
                                                                                                                       uint64_t length_out_offset);
/// roswasm_ffi_time_read_steady: Read the independently authorized ROS2 steady clock as u64 nanoseconds.
/// @brief Read the independently authorized ROS2 steady clock as u64 nanoseconds.
/// @details Read exact u64 nanoseconds in the separately authorized steady domain. Do not treat steady time as an epoch
/// or borrow another clock grant.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("time_read_steady"))) extern uint32_t roswasm_ffi_time_read_steady(uint64_t handle,
                                                                                                                             uint32_t memory,
                                                                                                                             uint64_t request_offset,
                                                                                                                             uint64_t request_length,
                                                                                                                             uint64_t response_offset,
                                                                                                                             uint64_t capacity,
                                                                                                                             uint64_t length_out_offset);
/// roswasm_ffi_time_read_system: Read the independently authorized ROS2 system clock as u64 nanoseconds.
/// @brief Read the independently authorized ROS2 system clock as u64 nanoseconds.
/// @details Read exact u64 nanoseconds in the separately authorized system domain. Do not treat steady time as an epoch
/// or borrow another clock grant.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] request_offset Byte offset of the exact canonical operation request. Borrow input until return; an empty
/// request changes no policy.
/// @param[in] request_length Request byte extent. The ABI request-data ceiling is 4193786 bytes; the selected
/// schema/grant may require less.
/// @param[out] response_offset Byte offset of caller-owned writable response storage. Publish decoded values only after
/// status/length checks.
/// @param[in] capacity Writable output extent in bytes. This allocation does not increase an alias quota or reserve an
/// event.
/// @param[out] length_out_offset Byte offset of an eight-byte LE length slot. Initialize it to UINT64_MAX. Error 90 may
/// leave it untouched; only an overwritten sentinel reports a required extent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("time_read_system"))) extern uint32_t roswasm_ffi_time_read_system(uint64_t handle,
                                                                                                                             uint32_t memory,
                                                                                                                             uint64_t request_offset,
                                                                                                                             uint64_t request_length,
                                                                                                                             uint64_t response_offset,
                                                                                                                             uint64_t capacity,
                                                                                                                             uint64_t length_out_offset);
/// roswasm_ffi_topic_publish: Publish one canonical generated message through a separately granted publisher alias.
/// @brief Publish one canonical generated message through a separately granted publisher alias.
/// @details Encode the full selected schema before this one effectful call. Acknowledgement is not a physical
/// actuator-completion certificate.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @param[in] memory Unsigned Guest memory index. Pointer convenience APIs use memory0; a raw call may name only memory
/// admitted by its Runtime.
/// @param[in] payload_offset Byte offset of the complete canonical selected-type payload. It is not a native ROS object
/// or host pointer.
/// @param[in] payload_length Payload extent in bytes, within memory and the selected type/alias/envelope quota. Zero is
/// type-dependent.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("topic_publish"))) extern uint32_t
    roswasm_ffi_topic_publish(uint64_t handle, uint32_t memory, uint64_t payload_offset, uint64_t payload_length);
/// roswasm_ffi_topic_subscribe: Activate a separately granted subscription queue. Receive messages through event_poll
/// on the guest execution thread.
/// @brief Activate a separately granted subscription queue. Receive messages through event_poll on the guest execution
/// thread.
/// @details Activation and payload consumption are separate. Poll on the Guest execution thread; no native callback
/// re-enters the Guest.
/// @param[in] handle Opaque nonzero u64 handle obtained from this backend and Instance. Borrow it for this call; never
/// synthesize or transfer it.
/// @return Unsigned Host status 0 on success; nonzero is the original ABI errno.
/// @permissions A trusted Host grant for this exact Instance/backend, alias, operation, type, direction, quota and
/// deadline; SDK selection grants none.
/// @failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 unsupported, 107 disconnect, 110
/// unknown timeout and 125 revoke. Do not replay effects.
/// @lifetime All input/output spans must remain live, stable and correctly bounded until synchronous return; integer
/// offsets are not GC roots or host pointers.
/// @thread Call from the admitted Guest execution thread. No native callback, background executor or asynchronous
/// re-entry is created by this wrapper.
/// @version ABI 1; exact selected ROS 2 import contract. A private bridge returns 95 for an operation absent from its
/// selected backend.
/// @see share/platform/ros/c/API-CONTRACT.md; share/platform/ros/c/XMAKE-EXAMPLES.md
__attribute__((import_module("uwvm_ros2_v1"), import_name("topic_subscribe"))) extern uint32_t roswasm_ffi_topic_subscribe(uint64_t handle);

/** @brief Dispatch one private operation; see roswasm_c_ffi.h for the complete argument contract.
 * @details Only original i32 operands are narrowed. All i64 offsets, sizes,
 * correlations and opaque handles remain intact. An unavailable operation returns 95. */
uint32_t roswasm_c_ffi_invoke(uint32_t operation, uint64_t a0, uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
    switch(operation)
    {
        case 0: return roswasm_ffi_abi_version();
        case 1: return roswasm_ffi_action_advertise(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 2: return roswasm_ffi_action_cancel_any_goal(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 3: return roswasm_ffi_action_cancel_own_goal(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 4: return roswasm_ffi_action_receive_feedback(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 5: return roswasm_ffi_action_receive_result(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 6: return roswasm_ffi_action_respond(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 7: return roswasm_ffi_action_send_goal(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 8: return roswasm_ffi_capability_close(a0);
        case 9: return roswasm_ffi_capability_open((uint32_t)a0, a1, a2, a3);
        case 10: return roswasm_ffi_capability_revoke(a0);
        case 11: return roswasm_ffi_event_poll(a0, (uint32_t)a1, a2, a3, a4);
        case 12: return roswasm_ffi_event_poll_v1(a0, (uint32_t)a1, a2, a3, a4);
        case 13: return roswasm_ffi_event_ready(a0, (uint32_t)a1, a2);
        case 14: return roswasm_ffi_event_watch(a0, a1, a2);
        case 15: return roswasm_ffi_graph_inspect_action(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 16: return roswasm_ffi_graph_inspect_node(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 17: return roswasm_ffi_graph_inspect_service(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 18: return roswasm_ffi_graph_inspect_topic(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 19: return roswasm_ffi_graph_list_nodes(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 20: return roswasm_ffi_graph_list_services(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 21: return roswasm_ffi_graph_list_topics(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 22: return roswasm_ffi_lifecycle_change_state(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 23: return roswasm_ffi_lifecycle_get_state(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 24: return roswasm_ffi_log_write(a0, (uint32_t)a1, a2, a3);
        case 25: return roswasm_ffi_parameter_declare(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 27: return roswasm_ffi_parameter_describe(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 29: return roswasm_ffi_parameter_get(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 30: return roswasm_ffi_parameter_list(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 32: return roswasm_ffi_parameter_set(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 33: return roswasm_ffi_parameter_subscribe_events(a0);
        case 34: return roswasm_ffi_parameter_undeclare(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 35: return roswasm_ffi_service_advertise(a0);
        case 36: return roswasm_ffi_service_call(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 37: return roswasm_ffi_service_respond(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 38: return roswasm_ffi_service_submit(a0, a1, (uint32_t)a2, a3, a4, a5);
        case 39: return roswasm_ffi_tf_broadcast(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 40: return roswasm_ffi_tf_lookup(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 41: return roswasm_ffi_time_read_ros(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 42: return roswasm_ffi_time_read_steady(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 43: return roswasm_ffi_time_read_system(a0, (uint32_t)a1, a2, a3, a4, a5, a6);
        case 45: return roswasm_ffi_topic_publish(a0, (uint32_t)a1, a2, a3);
        case 46: return roswasm_ffi_topic_subscribe(a0);
        default: return 95;
    }
}
#endif
