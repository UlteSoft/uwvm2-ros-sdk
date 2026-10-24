/** @file
 * @brief Optional numeric imports for retained native ROS2 clients/services.
 *
 * Default rights remain empty. Explicitly open service.call plus its selected
 * event.observe observer for a client, or service.advertise plus a distinct
 * service.respond owner for a server. Activation binds those actual current
 * handles to one retained native incarnation; aliases and full type/QoS remain
 * Host policy choices. Numeric arguments grant no authority. There is no weak
 * fallback and no update/debug/policy/management import in this namespace.
 *
 * Activation/inspection copy exactly UMRE256, containing both actual native QoS
 * profiles and any actual native client GID. A client GID is NOT a request writer
 * GUID. Submission returns one full-u64 Gateway ticket in little-endian bytes;
 * the ticket is not a native signed sequence or bearer permission. A successful
 * send is submission only, never an already completed service response.
 *
 * Peek copies one UMRC160 + same-take URMI192 + entire canonical body. Its
 * capacity includes all headers (minimum352, maximum published IPC ceiling).
 * UMRC record_bytes is internal; no second output-length slot is written.
 * Validate every association and exact extent before using any byte. Full
 * actual writer GUID, signed native sequence and source/receive timestamps
 * belong to the SAME take as the body. Real zero-valued native bytes are data.
 * Resource-error/closed controls preserve actual error/flags/correlation with
 * no invented service metadata. Logical zero-body Empty remains zero.
 *
 * Peek borrows; commit consumes exactly the positive accepted sequence plus
 * independent per-attempt nonce. Cancel preserves its record, and a later borrow
 * uses a fresh nonce even at the same sequence. Never retry ambiguous sends,
 * responses or commit/cancel ACKs. Late/lost ACK requires source/session
 * retirement; no rollback, delivery, cancellation or successful completion may
 * be invented. client_abandon is local abandonment and late-response disposal,
 * not a claim that DDS/native request cancellation exists.
 *
 * Availability needs a separately opened service.available capability, exact
 * current client/type/QoS pairing and its own explicit finite bound. It queries
 * THIS retained client; it never constructs a probe client or uses graph lists.
 * Output is one byte0/1. wait_ns0 performs one observation; finite waiting must
 * remain within actual independently admitted Host/native deadlines.
 *
 * Every nonzero error preserves output bytes. Offsets and extents are64-bit;
 * memory is the actual memory index. Pointer-based C providers select memory0.
 * Retire each native incarnation once, then independently close all raw owners,
 * retaining primary/commit/cancel/retire/close outcomes. Guest code cannot select
 * a different Runtime principal, replay an old incarnation or reset its quota.
 */
#ifndef UWVM_ROSWASM_RMW_SERVICE_V1_H
#define UWVM_ROSWASM_RMW_SERVICE_V1_H
#include <platform/ros/c/roswasm/detail/common/c_portability.h>
#ifdef __cplusplus
extern "C"
{
#endif
#if defined(__wasm__)
# define UWVM_ROS_RMW_SERVICE_IMPORT(name) __attribute__((__import_module__("uwvm_ros2_rmw_srv_v1"), __import_name__(name)))
#else
# define UWVM_ROS_RMW_SERVICE_IMPORT(name)
#endif
    enum
    {
        /**
         * @brief Stable ABI constant: rmw service endpoint bytes.
         *
         * @details Stable canonical discriminator or size constant whose exact value and valid range
         * are declared here. Preserve it across backend/profile changes; it grants no native
         * operation.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see uwvm_ros_error
         * @see @ref roswasmc_c_contracts
         */
        UWVM_ROS_RMW_SERVICE_ENDPOINT_BYTES = 256,
        /**
         * @brief Stable ABI constant: rmw service control bytes.
         *
         * @details Stable canonical discriminator or size constant whose exact value and valid range
         * are declared here. Preserve it across backend/profile changes; it grants no native
         * operation.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see uwvm_ros_error
         * @see @ref roswasmc_c_contracts
         */
        UWVM_ROS_RMW_SERVICE_CONTROL_BYTES = 160,

        /**
         * @brief Stable ABI constant: rmw service metadata bytes.
         *
         * @details Stable canonical discriminator or size constant whose exact value and valid range
         * are declared here. Preserve it across backend/profile changes; it grants no native
         * operation.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see uwvm_ros_error
         * @see @ref roswasmc_c_contracts
         */
        UWVM_ROS_RMW_SERVICE_METADATA_BYTES = 192,
        /**
         * @brief Stable ABI constant: rmw service minimum delivery bytes.
         *
         * @details Stable canonical discriminator or size constant whose exact value and valid range
         * are declared here. Preserve it across backend/profile changes; it grants no native
         * operation.
         * @par C type contract
         * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
         * owner nor a substitute for explicit Host policy.
         * @see uwvm_ros_error
         * @see @ref roswasmc_c_contracts
         */
        UWVM_ROS_RMW_SERVICE_MINIMUM_DELIVERY_BYTES = 352
    };

    /**
     * @brief Discover this optional ABI version, without opening an endpoint.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @return Actual namespace version1 for the supported ABI; this value is not UWVM_ROS_SUCCESS.
     * @par Permissions
     * The matching operation-specific aliases must already be explicitly granted; this facade
     * never supplies Host policy, endpoints or native identity.
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
    UWVM_ROS_RMW_SERVICE_IMPORT("abi_version") uwvm_ros_u32 uwvm_ros2_rmw_srv_v1_abi_version(void);
    /**
     * @brief Create one real client using independently granted call/observer owners.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @param[in] source Existing source owner or transfer source as specified above; never copy it
     * into a second live owner.
     * @param[in] observer Independent event/availability observer owner, paired with the source by
     * explicit Host policy.
     * @param[in] memory Actual Guest linear-memory index (i32); pointer convenience APIs use
     * memory0.
     * @param[in] receipt Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * The matching operation-specific aliases must already be explicitly granted; this facade
     * never supplies Host policy, endpoints or native identity.
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
    UWVM_ROS_RMW_SERVICE_IMPORT("client_activate")
    uwvm_ros_u32 uwvm_ros2_rmw_srv_v1_client_activate(uwvm_ros_u64 source, uwvm_ros_u64 observer, uwvm_ros_u32 memory, uwvm_ros_u64 receipt);
    /**
     * @brief Create one real service using independently granted advertise/respond owners.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @param[in] advertise Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @param[in] responder Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @param[in] memory Actual Guest linear-memory index (i32); pointer convenience APIs use
     * memory0.
     * @param[in] receipt Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * The matching operation-specific aliases must already be explicitly granted; this facade
     * never supplies Host policy, endpoints or native identity.
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
    UWVM_ROS_RMW_SERVICE_IMPORT("service_activate")
    uwvm_ros_u32 uwvm_ros2_rmw_srv_v1_service_activate(uwvm_ros_u64 advertise, uwvm_ros_u64 responder, uwvm_ros_u32 memory, uwvm_ros_u64 receipt);
    /**
     * @brief Query the same retained client/service; output is the exact original UMRE256.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @param[in] source Existing source owner or transfer source as specified above; never copy it
     * into a second live owner.
     * @param[in] incarnation Full-width retained native endpoint incarnation; match the admitted
     * receipt exactly.
     * @param[in] memory Actual Guest linear-memory index (i32); pointer convenience APIs use
     * memory0.
     * @param[in] receipt Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * The matching operation-specific aliases must already be explicitly granted; this facade
     * never supplies Host policy, endpoints or native identity.
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
    UWVM_ROS_RMW_SERVICE_IMPORT("endpoint_inspect")
    uwvm_ros_u32 uwvm_ros2_rmw_srv_v1_endpoint_inspect(uwvm_ros_u64 source, uwvm_ros_u64 incarnation, uwvm_ros_u32 memory, uwvm_ros_u64 receipt);
    /**
     * @brief Submit one complete request through the retained client; one eight-byte ticket.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @param[in] source Existing source owner or transfer source as specified above; never copy it
     * into a second live owner.
     * @param[in] incarnation Full-width retained native endpoint incarnation; match the admitted
     * receipt exactly.
     * @param[in] memory Actual Guest linear-memory index (i32); pointer convenience APIs use
     * memory0.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] length Byte count or byte-count destination as specified above; only successful
     * documented commits make output valid.
     * @param[in] ticket Owned nonzero native request/peek ticket; it is not a transferable
     * capability handle.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * The matching operation-specific aliases must already be explicitly granted; this facade
     * never supplies Host policy, endpoints or native identity.
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
    UWVM_ROS_RMW_SERVICE_IMPORT("client_submit")
    uwvm_ros_u32 uwvm_ros2_rmw_srv_v1_client_submit(uwvm_ros_u64 source,
                                                    uwvm_ros_u64 incarnation,
                                                    uwvm_ros_u32 memory,
                                                    uwvm_ros_u64 input,
                                                    uwvm_ros_u64 length,
                                                    uwvm_ros_u64 ticket);
    /**
     * @brief Abandon only the local retained request; no native cancellation is claimed.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @param[in] source Existing source owner or transfer source as specified above; never copy it
     * into a second live owner.
     * @param[in] incarnation Full-width retained native endpoint incarnation; match the admitted
     * receipt exactly.
     * @param[in] ticket Owned nonzero native request/peek ticket; it is not a transferable
     * capability handle.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * The matching operation-specific aliases must already be explicitly granted; this facade
     * never supplies Host policy, endpoints or native identity.
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
    UWVM_ROS_RMW_SERVICE_IMPORT("client_abandon")
    uwvm_ros_u32 uwvm_ros2_rmw_srv_v1_client_abandon(uwvm_ros_u64 source, uwvm_ros_u64 incarnation, uwvm_ros_u64 ticket);
    /**
     * @brief One actual server response using the independently granted responder owner.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @param[in] advertise Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @param[in] incarnation Full-width retained native endpoint incarnation; match the admitted
     * receipt exactly.
     * @param[in] responder Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @param[in] ticket Owned nonzero native request/peek ticket; it is not a transferable
     * capability handle.
     * @param[in] memory Actual Guest linear-memory index (i32); pointer convenience APIs use
     * memory0.
     * @param[in] input Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
     * @param[in] length Byte count or byte-count destination as specified above; only successful
     * documented commits make output valid.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * The matching operation-specific aliases must already be explicitly granted; this facade
     * never supplies Host policy, endpoints or native identity.
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
    UWVM_ROS_RMW_SERVICE_IMPORT("service_respond")
    uwvm_ros_u32 uwvm_ros2_rmw_srv_v1_service_respond(uwvm_ros_u64 advertise,
                                                      uwvm_ros_u64 incarnation,
                                                      uwvm_ros_u64 responder,
                                                      uwvm_ros_u64 ticket,
                                                      uwvm_ros_u32 memory,
                                                      uwvm_ros_u64 input,
                                                      uwvm_ros_u64 length);
    /**
     * @brief Borrow a complete service record; expected_writer is the original native extent.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @param[in] source Existing source owner or transfer source as specified above; never copy it
     * into a second live owner.
     * @param[in] incarnation Full-width retained native endpoint incarnation; match the admitted
     * receipt exactly.
     * @param[in] expected_writer Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @param[in] memory Actual Guest linear-memory index (i32); pointer convenience APIs use
     * memory0.
     * @param[in] packet Explicit value in the domain described above; no implicit unit conversion,
     * policy grant or retry.
     * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
     * override.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * The matching operation-specific aliases must already be explicitly granted; this facade
     * never supplies Host policy, endpoints or native identity.
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
    UWVM_ROS_RMW_SERVICE_IMPORT("endpoint_peek")
    uwvm_ros_u32 uwvm_ros2_rmw_srv_v1_endpoint_peek(uwvm_ros_u64 source,
                                                    uwvm_ros_u64 incarnation,
                                                    uwvm_ros_u32 expected_writer,
                                                    uwvm_ros_u32 memory,
                                                    uwvm_ros_u64 packet,
                                                    uwvm_ros_u64 capacity);
    /**
     * @brief Consume exactly the current sequence+nonce; unknown outcome is never replayed.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @param[in] source Existing source owner or transfer source as specified above; never copy it
     * into a second live owner.
     * @param[in] incarnation Full-width retained native endpoint incarnation; match the admitted
     * receipt exactly.
     * @param[in] sequence Complete initialized canonical value or documented destination; borrowed
     * subviews retain the backing buffer's lifetime.
     * @param[in] reservation Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * The matching operation-specific aliases must already be explicitly granted; this facade
     * never supplies Host policy, endpoints or native identity.
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
    UWVM_ROS_RMW_SERVICE_IMPORT("endpoint_commit")
    uwvm_ros_u32 uwvm_ros2_rmw_srv_v1_endpoint_commit(uwvm_ros_u64 source, uwvm_ros_u64 incarnation, uwvm_ros_u64 sequence, uwvm_ros_u64 reservation);
    /**
     * @brief Cancel only the current borrow, preserving its native record and stream sequence.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @param[in] source Existing source owner or transfer source as specified above; never copy it
     * into a second live owner.
     * @param[in] incarnation Full-width retained native endpoint incarnation; match the admitted
     * receipt exactly.
     * @param[in] sequence Complete initialized canonical value or documented destination; borrowed
     * subviews retain the backing buffer's lifetime.
     * @param[in] reservation Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * The matching operation-specific aliases must already be explicitly granted; this facade
     * never supplies Host policy, endpoints or native identity.
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
    UWVM_ROS_RMW_SERVICE_IMPORT("endpoint_cancel")
    uwvm_ros_u32 uwvm_ros2_rmw_srv_v1_endpoint_cancel(uwvm_ros_u64 source, uwvm_ros_u64 incarnation, uwvm_ros_u64 sequence, uwvm_ros_u64 reservation);
    /**
     * @brief Query this retained client through its distinct explicit availability owner.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @param[in] source Existing source owner or transfer source as specified above; never copy it
     * into a second live owner.
     * @param[in] incarnation Full-width retained native endpoint incarnation; match the admitted
     * receipt exactly.
     * @param[in] availability Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @param[in] wait_ns Finite native wait in nanoseconds,0..60000000000 inclusive; Host policy
     * may impose a smaller ceiling.
     * @param[in] memory Actual Guest linear-memory index (i32); pointer convenience APIs use
     * memory0.
     * @param[in] available Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * The matching operation-specific aliases must already be explicitly granted; this facade
     * never supplies Host policy, endpoints or native identity.
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
    UWVM_ROS_RMW_SERVICE_IMPORT("client_available")
    uwvm_ros_u32 uwvm_ros2_rmw_srv_v1_client_available(uwvm_ros_u64 source,
                                                       uwvm_ros_u64 incarnation,
                                                       uwvm_ros_u64 availability,
                                                       uwvm_ros_u64 wait_ns,
                                                       uwvm_ros_u32 memory,
                                                       uwvm_ros_u64 available);
    /**
     * @brief Once-retire the retained native object; paired raw owners still need close.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @param[in] source Existing source owner or transfer source as specified above; never copy it
     * into a second live owner.
     * @param[in] incarnation Full-width retained native endpoint incarnation; match the admitted
     * receipt exactly.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * The matching operation-specific aliases must already be explicitly granted; this facade
     * never supplies Host policy, endpoints or native identity.
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
    UWVM_ROS_RMW_SERVICE_IMPORT("endpoint_retire")
    uwvm_ros_u32 uwvm_ros2_rmw_srv_v1_endpoint_retire(uwvm_ros_u64 source, uwvm_ros_u64 incarnation);
#undef UWVM_ROS_RMW_SERVICE_IMPORT
#ifdef __cplusplus
}
#endif
#endif
