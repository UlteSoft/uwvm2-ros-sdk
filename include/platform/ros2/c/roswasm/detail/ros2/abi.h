/** @file
 * @brief Complete ROS 2 ABI v1 imports for C89 and later C or C++ guests.
 * Imports resolve from `uwvm_ros2_v1`; no native ROS library is linked.
 * Every operation needs its own host-granted alias. All offsets and lengths are
 * i64, memory indices are i32, and handles/length slots are eight-byte LE values.
 * Error 90 may leave output length unwritten; do not infer a required size from
 * that error alone. Do not automatically retry a consumed event or RPC.
 */
#ifndef UWVM_ROS2_ABI_H
#define UWVM_ROS2_ABI_H
#include <platform/ros/c/roswasm/detail/common/abi.h>
#ifdef __cplusplus
extern "C"
{
#endif
#if defined(__wasm__)
# define UWVM_ROS2_IMPORT(name) __attribute__((import_module("uwvm_ros2_v1"), import_name(name)))
#else
# define UWVM_ROS2_IMPORT(name)
#endif
    /**
     * @brief Return ABI version 1 (a value, not an errno).
     *
     * @details Observe this import namespace's actual ABI version. The result is a version value,
     * not an errno.
     *
     * @par C storage and execution contract
     * @return Actual namespace version1 for the supported ABI; this value is not UWVM_ROS_SUCCESS.
     * @par Permissions
     * None; version observation opens no alias.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_session_check_abi()
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("abi_version") uwvm_ros_u32 uwvm_ros2_abi_version(void);
    /**
     * @brief Open one explicitly granted alias; write its owned handle only on success.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] alias_offset Offset of nonempty alias bytes (not NUL terminated).
     * @param[in] alias_length Alias byte count, at most 255.
     * @param[in] handle_out_offset Writable eight-byte little-endian handle slot offset.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Resolve one nonempty, explicitly granted alias and commit one owned handle.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("capability_open")
    uwvm_ros_u32 uwvm_ros2_capability_open(uwvm_ros_u32 memory, uwvm_ros_u64 alias_offset, uwvm_ros_u64 alias_length, uwvm_ros_u64 handle_out_offset);
    /**
     * @brief Retire this owned handle before native cleanup; a transport error can still mean
     * retired.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Retire one owned handle before a single bounded native cleanup attempt.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("capability_close") uwvm_ros_u32 uwvm_ros2_capability_close(uwvm_ros_u64 handle);
    /**
     * @brief Revoke this alias for this instance and retire its existing handles.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Revoke the instance-local alias and retire all its existing handles.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("capability_revoke") uwvm_ros_u32 uwvm_ros2_capability_revoke(uwvm_ros_u64 handle);
    /**
     * @brief Publish one complete canonical message through a topic.publish alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] payload_offset Complete canonical message offset.
     * @param[in] payload_length Canonical message byte count.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Copy one complete canonical message into the independently bounded publication
     * path.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("topic_publish")
    uwvm_ros_u32 uwvm_ros2_topic_publish(uwvm_ros_u64 handle, uwvm_ros_u32 memory, uwvm_ros_u64 payload_offset, uwvm_ros_u64 payload_length);
    /**
     * @brief Activate a topic.subscribe queue; read it with event_poll.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Activate the granted subscription queue without obtaining publication rights.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("topic_subscribe") uwvm_ros_u32 uwvm_ros2_topic_subscribe(uwvm_ros_u64 handle);
    /**
     * @brief Copy one queued event; error 11 means currently empty. No native guest callback
     * occurs.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] payload_out_offset Writable output buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Consume at most one legacy queued record; a size failure may already have consumed
     * it.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("event_poll")
    uwvm_ros_u32
        uwvm_ros2_event_poll(uwvm_ros_u64 handle, uwvm_ros_u32 memory, uwvm_ros_u64 payload_out_offset, uwvm_ros_u64 capacity, uwvm_ros_u64 length_out_offset);
    /**
     * @brief Bind separately granted event.observe and source owners; correlation is nonzero only
     * for
     * an owned outgoing Action goal. No aliases or rights are created.
     * All i64 addresses reference the selected guest memory; only service_submit
     * writes its request slot on success. Close/revoke metadata needs its own mask.
     *
     * @details Bind an independent observer to an existing source; correlation selects the
     * documented data role.
     *
     * @par C storage and execution contract
     * @param[in] observer_handle Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @param[in] source_handle Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @param[in] correlation Full-width event correlation ID; zero is metadata-only where
     * specified above.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("event_watch")
    uwvm_ros_u32 uwvm_ros2_event_watch(uwvm_ros_u64 observer_handle, uwvm_ros_u64 source_handle, uwvm_ros_u64 correlation);
    /**
     * @brief Read one complete versioned64-byte-header event. Error90 writes required size and
     * retains
     * the event; error11 is idle. No automatic replay.
     * All i64 addresses reference the selected guest memory; only service_submit
     * writes its request slot on success. Close/revoke metadata needs its own mask.
     *
     * @details Copy at most one unified record; this additive API retains the record on capacity
     * error90.
     *
     * @par C storage and execution contract
     * @param[in] handle Opaque full64 capability handle owned by this Runtime instance/backend;
     * never a native pointer.
     * @param[in] memory Actual Guest linear-memory index (i32); pointer convenience APIs use
     * memory0.
     * @param[in] output_offset Unsigned i64 offset in the selected Guest memory; the complete
     * documented range must be live and accessible.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @param[in] length_out_offset Unsigned i64 offset in the selected Guest memory; the complete
     * documented range must be live and accessible.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("event_poll_v1")
    uwvm_ros_u32
        uwvm_ros2_event_poll_v1(uwvm_ros_u64 handle, uwvm_ros_u32 memory, uwvm_ros_u64 output_offset, uwvm_ros_u64 capacity, uwvm_ros_u64 length_out_offset);
    /**
     * @brief Write32 little-endian bytes: ready count,next record bytes,admission slots,admission
     * bytes. A readiness snapshot is not a reservation.
     * All i64 addresses reference the selected guest memory; only service_submit
     * writes its request slot on success. Close/revoke metadata needs its own mask.
     *
     * @details Read four bounded queue/admission counters without consuming a record or granting
     * credit.
     *
     * @par C storage and execution contract
     * @param[in] observer_handle Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @param[in] memory Actual Guest linear-memory index (i32); pointer convenience APIs use
     * memory0.
     * @param[in] output_offset Unsigned i64 offset in the selected Guest memory; the complete
     * documented range must be live and accessible.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("event_ready")
    uwvm_ros_u32 uwvm_ros2_event_ready(uwvm_ros_u64 observer_handle, uwvm_ros_u32 memory, uwvm_ros_u64 output_offset);
    /**
     * @brief Admit one bounded asynchronous service request. A successful acknowledgement writes
     * requestID; completion requires explicit service-response and resource-error observation.
     * Never
     * replay a timeout.
     * All i64 addresses reference the selected guest memory; only service_submit
     * writes its request slot on success. Close/revoke metadata needs its own mask.
     *
     * @details Admit one asynchronous request and commit a nonzero request ID; do not replay it.
     *
     * @par C storage and execution contract
     * @param[in] source_handle Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @param[in] observer_handle Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @param[in] memory Actual Guest linear-memory index (i32); pointer convenience APIs use
     * memory0.
     * @param[in] request_offset Unsigned i64 offset in the selected Guest memory; the complete
     * documented range must be live and accessible.
     * @param[in] request_length Exact count in bytes for the associated live storage; no implicit
     * NUL terminator or native padding.
     * @param[in] request_id_out_offset Unsigned i64 offset in the selected Guest memory; the
     * complete documented range must be live and accessible.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("service_submit")
    uwvm_ros_u32 uwvm_ros2_service_submit(uwvm_ros_u64 source_handle,
                                          uwvm_ros_u64 observer_handle,
                                          uwvm_ros_u32 memory,
                                          uwvm_ros_u64 request_offset,
                                          uwvm_ros_u64 request_length,
                                          uwvm_ros_u64 request_id_out_offset);
    /**
     * @brief Perform service call using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Perform one synchronous Service request/response attempt under the Host's finite
     * deadline.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("service_call")
    uwvm_ros_u32 uwvm_ros2_service_call(uwvm_ros_u64 handle,
                                        uwvm_ros_u32 memory,
                                        uwvm_ros_u64 request_offset,
                                        uwvm_ros_u64 request_length,
                                        uwvm_ros_u64 response_offset,
                                        uwvm_ros_u64 capacity,
                                        uwvm_ros_u64 length_out_offset);
    /**
     * @brief Activate a service.advertise queue; events carry an owned request ID.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Activate the independently granted Service request queue.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("service_advertise") uwvm_ros_u32 uwvm_ros2_service_advertise(uwvm_ros_u64 handle);
    /**
     * @brief Perform service respond using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Respond once to an owned live request ticket using a separate response capability.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("service_respond")
    uwvm_ros_u32 uwvm_ros2_service_respond(uwvm_ros_u64 handle,
                                           uwvm_ros_u32 memory,
                                           uwvm_ros_u64 request_offset,
                                           uwvm_ros_u64 request_length,
                                           uwvm_ros_u64 response_offset,
                                           uwvm_ros_u64 capacity,
                                           uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform action send goal using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Submit one complete canonical goal and return its live native-correlated goal ID.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("action_send_goal")
    uwvm_ros_u32 uwvm_ros2_action_send_goal(uwvm_ros_u64 handle,
                                            uwvm_ros_u32 memory,
                                            uwvm_ros_u64 request_offset,
                                            uwvm_ros_u64 request_length,
                                            uwvm_ros_u64 response_offset,
                                            uwvm_ros_u64 capacity,
                                            uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform action cancel own goal using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Request cancellation only for the selected source owner's live goal.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("action_cancel_own_goal")
    uwvm_ros_u32 uwvm_ros2_action_cancel_own_goal(uwvm_ros_u64 handle,
                                                  uwvm_ros_u32 memory,
                                                  uwvm_ros_u64 request_offset,
                                                  uwvm_ros_u64 request_length,
                                                  uwvm_ros_u64 response_offset,
                                                  uwvm_ros_u64 capacity,
                                                  uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform action cancel any goal using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Use the stronger separately granted cancellation role; zero selects all only where
     * documented.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("action_cancel_any_goal")
    uwvm_ros_u32 uwvm_ros2_action_cancel_any_goal(uwvm_ros_u64 handle,
                                                  uwvm_ros_u32 memory,
                                                  uwvm_ros_u64 request_offset,
                                                  uwvm_ros_u64 request_length,
                                                  uwvm_ros_u64 response_offset,
                                                  uwvm_ros_u64 capacity,
                                                  uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform action receive feedback using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Receive one feedback record for the selected live goal without obtaining result
     * rights.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("action_receive_feedback")
    uwvm_ros_u32 uwvm_ros2_action_receive_feedback(uwvm_ros_u64 handle,
                                                   uwvm_ros_u32 memory,
                                                   uwvm_ros_u64 request_offset,
                                                   uwvm_ros_u64 request_length,
                                                   uwvm_ros_u64 response_offset,
                                                   uwvm_ros_u64 capacity,
                                                   uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform action receive result using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Receive one terminal result for the selected goal; do not replay a consumed result.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("action_receive_result")
    uwvm_ros_u32 uwvm_ros2_action_receive_result(uwvm_ros_u64 handle,
                                                 uwvm_ros_u32 memory,
                                                 uwvm_ros_u64 request_offset,
                                                 uwvm_ros_u64 request_length,
                                                 uwvm_ros_u64 response_offset,
                                                 uwvm_ros_u64 capacity,
                                                 uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform action advertise using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Activate one granted Action server queue without accepting a goal implicitly.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("action_advertise")
    uwvm_ros_u32 uwvm_ros2_action_advertise(uwvm_ros_u64 handle,
                                            uwvm_ros_u32 memory,
                                            uwvm_ros_u64 request_offset,
                                            uwvm_ros_u64 request_length,
                                            uwvm_ros_u64 response_offset,
                                            uwvm_ros_u64 capacity,
                                            uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform action respond using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Send one complete feedback/terminal record for an owned incoming goal.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("action_respond")
    uwvm_ros_u32 uwvm_ros2_action_respond(uwvm_ros_u64 handle,
                                          uwvm_ros_u32 memory,
                                          uwvm_ros_u64 request_offset,
                                          uwvm_ros_u64 request_length,
                                          uwvm_ros_u64 response_offset,
                                          uwvm_ros_u64 capacity,
                                          uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform tf lookup using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Perform one bounded lookup for the transform and time fixed by the granted
     * resource.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("tf_lookup")
    uwvm_ros_u32 uwvm_ros2_tf_lookup(uwvm_ros_u64 handle,
                                     uwvm_ros_u32 memory,
                                     uwvm_ros_u64 request_offset,
                                     uwvm_ros_u64 request_length,
                                     uwvm_ros_u64 response_offset,
                                     uwvm_ros_u64 capacity,
                                     uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform tf broadcast using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Broadcast one complete validated canonical transform through its own granted alias.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("tf_broadcast")
    uwvm_ros_u32 uwvm_ros2_tf_broadcast(uwvm_ros_u64 handle,
                                        uwvm_ros_u32 memory,
                                        uwvm_ros_u64 request_offset,
                                        uwvm_ros_u64 request_length,
                                        uwvm_ros_u64 response_offset,
                                        uwvm_ros_u64 capacity,
                                        uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform parameter get using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Read the granted parameter's complete tagged canonical value.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("parameter_get")
    uwvm_ros_u32 uwvm_ros2_parameter_get(uwvm_ros_u64 handle,
                                         uwvm_ros_u32 memory,
                                         uwvm_ros_u64 request_offset,
                                         uwvm_ros_u64 request_length,
                                         uwvm_ros_u64 response_offset,
                                         uwvm_ros_u64 capacity,
                                         uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform parameter set using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Set one complete canonical value; the Host validates the original native type and
     * range.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("parameter_set")
    uwvm_ros_u32 uwvm_ros2_parameter_set(uwvm_ros_u64 handle,
                                         uwvm_ros_u32 memory,
                                         uwvm_ros_u64 request_offset,
                                         uwvm_ros_u64 request_length,
                                         uwvm_ros_u64 response_offset,
                                         uwvm_ros_u64 capacity,
                                         uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform parameter list using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details List the finite parameter view permitted by the Host resource.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("parameter_list")
    uwvm_ros_u32 uwvm_ros2_parameter_list(uwvm_ros_u64 handle,
                                          uwvm_ros_u32 memory,
                                          uwvm_ros_u64 request_offset,
                                          uwvm_ros_u64 request_length,
                                          uwvm_ros_u64 response_offset,
                                          uwvm_ros_u64 capacity,
                                          uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform parameter describe using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Read ROS2 parameter metadata; unsupported ROS1 dispatch remains error95.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("parameter_describe")
    uwvm_ros_u32 uwvm_ros2_parameter_describe(uwvm_ros_u64 handle,
                                              uwvm_ros_u32 memory,
                                              uwvm_ros_u64 request_offset,
                                              uwvm_ros_u64 request_length,
                                              uwvm_ros_u64 response_offset,
                                              uwvm_ros_u64 capacity,
                                              uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform parameter declare using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Declare the granted ROS2 parameter with its complete tagged value.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("parameter_declare")
    uwvm_ros_u32 uwvm_ros2_parameter_declare(uwvm_ros_u64 handle,
                                             uwvm_ros_u32 memory,
                                             uwvm_ros_u64 request_offset,
                                             uwvm_ros_u64 request_length,
                                             uwvm_ros_u64 response_offset,
                                             uwvm_ros_u64 capacity,
                                             uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform parameter undeclare using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Undeclare the granted ROS2 parameter without broadening its namespace.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("parameter_undeclare")
    uwvm_ros_u32 uwvm_ros2_parameter_undeclare(uwvm_ros_u64 handle,
                                               uwvm_ros_u32 memory,
                                               uwvm_ros_u64 request_offset,
                                               uwvm_ros_u64 request_length,
                                               uwvm_ros_u64 response_offset,
                                               uwvm_ros_u64 capacity,
                                               uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform graph inspect topic using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Inspect the single topic view permitted by the graph resource.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("graph_inspect_topic")
    uwvm_ros_u32 uwvm_ros2_graph_inspect_topic(uwvm_ros_u64 handle,
                                               uwvm_ros_u32 memory,
                                               uwvm_ros_u64 request_offset,
                                               uwvm_ros_u64 request_length,
                                               uwvm_ros_u64 response_offset,
                                               uwvm_ros_u64 capacity,
                                               uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform graph inspect node using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Inspect the single node view permitted by the graph resource.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("graph_inspect_node")
    uwvm_ros_u32 uwvm_ros2_graph_inspect_node(uwvm_ros_u64 handle,
                                              uwvm_ros_u32 memory,
                                              uwvm_ros_u64 request_offset,
                                              uwvm_ros_u64 request_length,
                                              uwvm_ros_u64 response_offset,
                                              uwvm_ros_u64 capacity,
                                              uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform graph inspect service using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Inspect the single Service view permitted by the graph resource.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("graph_inspect_service")
    uwvm_ros_u32 uwvm_ros2_graph_inspect_service(uwvm_ros_u64 handle,
                                                 uwvm_ros_u32 memory,
                                                 uwvm_ros_u64 request_offset,
                                                 uwvm_ros_u64 request_length,
                                                 uwvm_ros_u64 response_offset,
                                                 uwvm_ros_u64 capacity,
                                                 uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform graph inspect action using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Inspect a ROS2 Action view; unsupported ROS1 dispatch remains error95.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("graph_inspect_action")
    uwvm_ros_u32 uwvm_ros2_graph_inspect_action(uwvm_ros_u64 handle,
                                                uwvm_ros_u32 memory,
                                                uwvm_ros_u64 request_offset,
                                                uwvm_ros_u64 request_length,
                                                uwvm_ros_u64 response_offset,
                                                uwvm_ros_u64 capacity,
                                                uwvm_ros_u64 length_out_offset);
    /**
     * @brief Activate an independently granted ROS2 parameter-event queue.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Activate the independently granted ROS2 parameter-event queue.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("parameter_subscribe_events")
    uwvm_ros_u32 uwvm_ros2_parameter_subscribe_events(uwvm_ros_u64 handle);
    /**
     * @brief Perform graph list topics using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Copy the bounded topic listing permitted by the graph resource.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("graph_list_topics")
    uwvm_ros_u32 uwvm_ros2_graph_list_topics(uwvm_ros_u64 handle,
                                             uwvm_ros_u32 memory,
                                             uwvm_ros_u64 request_offset,
                                             uwvm_ros_u64 request_length,
                                             uwvm_ros_u64 response_offset,
                                             uwvm_ros_u64 capacity,
                                             uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform graph list nodes using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Copy the bounded node listing permitted by the graph resource.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("graph_list_nodes")
    uwvm_ros_u32 uwvm_ros2_graph_list_nodes(uwvm_ros_u64 handle,
                                            uwvm_ros_u32 memory,
                                            uwvm_ros_u64 request_offset,
                                            uwvm_ros_u64 request_length,
                                            uwvm_ros_u64 response_offset,
                                            uwvm_ros_u64 capacity,
                                            uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform graph list services using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Copy the bounded Service listing permitted by the graph resource.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("graph_list_services")
    uwvm_ros_u32 uwvm_ros2_graph_list_services(uwvm_ros_u64 handle,
                                               uwvm_ros_u32 memory,
                                               uwvm_ros_u64 request_offset,
                                               uwvm_ros_u64 request_length,
                                               uwvm_ros_u64 response_offset,
                                               uwvm_ros_u64 capacity,
                                               uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform lifecycle get state using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Read one ROS2 lifecycle state and its complete canonical label.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("lifecycle_get_state")
    uwvm_ros_u32 uwvm_ros2_lifecycle_get_state(uwvm_ros_u64 handle,
                                               uwvm_ros_u32 memory,
                                               uwvm_ros_u64 request_offset,
                                               uwvm_ros_u64 request_length,
                                               uwvm_ros_u64 response_offset,
                                               uwvm_ros_u64 capacity,
                                               uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform lifecycle change state using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Attempt the transition fixed by the ROS2 grant once and return native acceptance.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("lifecycle_change_state")
    uwvm_ros_u32 uwvm_ros2_lifecycle_change_state(uwvm_ros_u64 handle,
                                                  uwvm_ros_u32 memory,
                                                  uwvm_ros_u64 request_offset,
                                                  uwvm_ros_u64 request_length,
                                                  uwvm_ros_u64 response_offset,
                                                  uwvm_ros_u64 capacity,
                                                  uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform time read ros using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Read the permitted ROS-domain time snapshot in unsigned nanoseconds.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("time_read_ros")
    uwvm_ros_u32 uwvm_ros2_time_read_ros(uwvm_ros_u64 handle,
                                         uwvm_ros_u32 memory,
                                         uwvm_ros_u64 request_offset,
                                         uwvm_ros_u64 request_length,
                                         uwvm_ros_u64 response_offset,
                                         uwvm_ros_u64 capacity,
                                         uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform time read system using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Read the permitted ROS2 system-clock snapshot in unsigned nanoseconds.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("time_read_system")
    uwvm_ros_u32 uwvm_ros2_time_read_system(uwvm_ros_u64 handle,
                                            uwvm_ros_u32 memory,
                                            uwvm_ros_u64 request_offset,
                                            uwvm_ros_u64 request_length,
                                            uwvm_ros_u64 response_offset,
                                            uwvm_ros_u64 capacity,
                                            uwvm_ros_u64 length_out_offset);
    /**
     * @brief Perform time read steady using its own explicitly granted alias.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @param[in] response_offset Writable response buffer offset.
     * @param[in] capacity Explicit output byte capacity, subject to independent host quotas.
     * @param[in] length_out_offset Writable eight-byte LE length slot; read only if actually
     * written.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Read the permitted ROS2 steady-clock snapshot in unsigned nanoseconds.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("time_read_steady")
    uwvm_ros_u32 uwvm_ros2_time_read_steady(uwvm_ros_u64 handle,
                                            uwvm_ros_u32 memory,
                                            uwvm_ros_u64 request_offset,
                                            uwvm_ros_u64 request_length,
                                            uwvm_ros_u64 response_offset,
                                            uwvm_ros_u64 capacity,
                                            uwvm_ros_u64 length_out_offset);
    /**
     * @brief Write UTF-8 bytes using the host-selected logger and severity.
     * @param[in] handle Opaque handle owned by this instance and ROS backend.
     * @param[in] memory Guest memory index; convenience wrappers use memory zero.
     * @param[in] request_offset Canonical request offset; empty requests may use zero.
     * @param[in] request_length Canonical request byte count.
     * @return Numeric ABI errno; zero is success. Unwritten output slots retain their previous
     * bytes.
     *
     * @details Emit one bounded UTF-8 log record at the severity selected by the Host grant.
     *
     * @par C storage and execution contract
     * @par Permissions
     * The separately granted operation-specific capability and native resource described above are
     * required; default ROS authority is empty.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_open(), roswasmc_result
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS2_IMPORT("log_write")
    uwvm_ros_u32 uwvm_ros2_log_write(uwvm_ros_u64 handle, uwvm_ros_u32 memory, uwvm_ros_u64 request_offset, uwvm_ros_u64 request_length);
#undef UWVM_ROS2_IMPORT
#ifdef __cplusplus
}
#endif
/**
 * @brief Memory-zero open helper; caller buffers remain valid throughout the synchronous call.
 *
 * @details Execute the bounded operation described above with the supplied complete values and
 * stable owners. Inspect its actual result before using output; do not implicitly retry a consumed
 * event or uncertain external operation.
 *
 * @par C storage and execution contract
 * @param[in] alias Counted non-NUL-terminated Host-granted alias bytes; a native ROS name is not a
 * substitute.
 * @param[in] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @param[in,out] handle Opaque full64 capability handle owned by this Runtime instance/backend;
 * never a native pointer.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * The matching operation-specific aliases must already be explicitly granted; this facade never
 * supplies Host policy, endpoints or native identity.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_open(), roswasmc_result
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 uwvm_ros2_open(char const* alias, uwvm_ros_u64 length, uwvm_ros_handle* handle)
{
    unsigned char encoded[8] = {0};
    uwvm_ros_u64 next;
    uwvm_ros_u32 e;
    if(!alias || !length || length > 255 || !handle)
    {
        return UWVM_ROS_INVALID;
    }
    e = uwvm_ros2_capability_open(0, uwvm_ros_address(alias), length, uwvm_ros_address(encoded));
    if(!e)
    {
        next = uwvm_ros_load_u64(encoded);
        if(!next)
        {
            return UWVM_ROS_INVALID;
        }
        *handle = next;
    }
    return e;
}

/**
 * @brief Memory-zero publish helper; caller buffers remain valid throughout the synchronous call.
 *
 * @details Execute the bounded operation described above with the supplied complete values and
 * stable owners. Inspect its actual result before using output; do not implicitly retry a consumed
 * event or uncertain external operation.
 *
 * @par C storage and execution contract
 * @param[in] handle Opaque full64 capability handle owned by this Runtime instance/backend; never
 * a native pointer.
 * @param[in] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * The matching operation-specific aliases must already be explicitly granted; this facade never
 * supplies Host policy, endpoints or native identity.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_open(), roswasmc_result
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 uwvm_ros2_publish(uwvm_ros_handle handle, void const* bytes, uwvm_ros_u64 length)
{
    if((!bytes && length) || length > UWVM_ROS_SIZE_MAX)
    {
        return UWVM_ROS_INVALID;
    }
    return uwvm_ros2_topic_publish(handle, 0, uwvm_ros_address(bytes), length);
}

/**
 * @brief Memory-zero poll helper; caller buffers remain valid throughout the synchronous call.
 *
 * @details Execute the bounded operation described above with the supplied complete values and
 * stable owners. Inspect its actual result before using output; do not implicitly retry a consumed
 * event or uncertain external operation.
 *
 * @par C storage and execution contract
 * @param[in] handle Opaque full64 capability handle owned by this Runtime instance/backend; never
 * a native pointer.
 * @param[in,out] bytes Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @param[out] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * The matching operation-specific aliases must already be explicitly granted; this facade never
 * supplies Host policy, endpoints or native identity.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_open(), roswasmc_result
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 uwvm_ros2_poll(uwvm_ros_handle handle, void* bytes, uwvm_ros_u64 capacity, uwvm_ros_u64* length)
{
    unsigned char encoded[8] = {255, 255, 255, 255, 255, 255, 255, 255};
    uwvm_ros_u64 next;
    uwvm_ros_u32 e;
    if(!length || (!bytes && capacity) || capacity > UWVM_ROS_SIZE_MAX)
    {
        return UWVM_ROS_INVALID;
    }
    e = uwvm_ros2_event_poll(handle, 0, uwvm_ros_address(bytes), capacity, uwvm_ros_address(encoded));
    next = uwvm_ros_load_u64(encoded);
    if(!e)
    {
        if(next == UWVM_ROS_U64_MAX || next > capacity)
        {
            return UWVM_ROS_INVALID;
        }
        *length = next;
    }
    else if(e == UWVM_ROS_TOO_LARGE && next != UWVM_ROS_U64_MAX)
    {
        *length = next;
    }
    return e;
}
#endif
