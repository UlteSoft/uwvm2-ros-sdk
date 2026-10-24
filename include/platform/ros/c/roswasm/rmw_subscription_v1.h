/** @file
 * @brief Explicit optional imports for one retained ROS2 native Subscription.
 *
 * Open a genuinely granted topic.subscribe source through the normal ROS2
 * backend first. These seven numeric functions grant nothing, choose no ROS
 * topic/type/QoS, and expose no Host update/debug/management interface. Missing
 * Host support is a real import/link failure, never a successful weak fallback.
 * Default ROS rights remain empty. Normal original business and publisher
 * namespaces remain unchanged; this separate namespace is selected explicitly.
 *
 * Activation/inspection return exactly UMRE-v1 256 bytes describing the same
 * retained Subscription later used by peek/commit/cancel/retire. All full64
 * source/instance/generation/session/native-incarnation values and complete
 * actual QoS must match the original admitted receipt. A Subscription's receipt
 * has no publisher GID: only a real received record supplies that native fact.
 *
 * Peek writes one complete UMRS96 + same-record URMI192 + canonical body into
 * the preflighted caller range. Capacity includes ALL headers and body; it must
 * be288..the published IPC ceiling. The internal UMRS header carries exact
 * record_bytes, hence there is no separate output-length pointer/write. Validate
 * all record/body bounds and native fields before using any byte. expected_gid
 * is the selected original RMW publisher GID width,1..32, not a guessed identity.
 * Capacity90, missing metadata95 and idle11 preserve outputs and do not consume.
 * Every nonzero error preserves output bytes; no error is returned after their
 * successful final Host copy. There is exactly one outstanding borrow per source.
 *
 * A successful peek reserves its real record. Pass BOTH the accepted sequence
 * and independent positive reservation nonce to commit/cancel. Cancel retains
 * the record, and its next peek receives a new nonce. Old tokens never act on a
 * later borrow of the same sequence. Commit consumes that one reserved record.
 * Successive explicit application requests are distinct operations. Never
 * automatically retry an uncertain commit/ACK, invent a cancellation rollback,
 * or publish a prepared RMW result after a failed commit. Lost/late ACK means
 * ambiguous consumption; preserve it and retire the source/session independently.
 *
 * Offsets/capacities remain64-bit for Wasm32/Wasm64; memory is an actual index.
 * Pointer-based C providers explicitly select memory0. Logical zero-byte body
 * stays zero. No native struct, CDR, callback pointer or native address crosses
 * this interface. The complete received metadata/body belongs to one record.
 *
 * Retire attempts this native incarnation once, then the caller still closes
 * the raw source capability even on failure. Close/revoke/session/instance drain
 * independently retires unknown native effects. Old full handles and native
 * incarnations are never automatically reopened or replayed.
 */
#ifndef UWVM_ROSWASM_RMW_SUBSCRIPTION_V1_H
#define UWVM_ROSWASM_RMW_SUBSCRIPTION_V1_H
#include <platform/ros/c/roswasm/detail/common/c_portability.h>
#ifdef __cplusplus
extern "C"
{
#endif
#if defined(__wasm__)
# define UWVM_ROS_RMW_SUB_IMPORT(name) __attribute__((__import_module__("uwvm_ros2_rmw_sub_v1"), __import_name__(name)))
#else
# define UWVM_ROS_RMW_SUB_IMPORT(name)
#endif
    enum
    {
        /**
         * @brief Stable ABI constant: rmw sub endpoint bytes.
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
        UWVM_ROS_RMW_SUB_ENDPOINT_BYTES = 256,
        /**
         * @brief Stable ABI constant: rmw sub control bytes.
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
        UWVM_ROS_RMW_SUB_CONTROL_BYTES = 96,

        /**
         * @brief Stable ABI constant: rmw sub metadata bytes.
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
        UWVM_ROS_RMW_SUB_METADATA_BYTES = 192,
        /**
         * @brief Stable ABI constant: rmw sub minimum delivery bytes.
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
        UWVM_ROS_RMW_SUB_MINIMUM_DELIVERY_BYTES = 288
    };

    /**
     * @brief Discover only this optional ABI's version. Does not open or grant a source.
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
    UWVM_ROS_RMW_SUB_IMPORT("abi_version") uwvm_ros_u32 uwvm_ros2_rmw_sub_v1_abi_version(void);
    /**
     * @brief Eagerly create one actual Subscription, without a legacy listener or probe.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @param[in] source Existing source owner or transfer source as specified above; never copy it
     * into a second live owner.
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
    UWVM_ROS_RMW_SUB_IMPORT("subscription_activate")
    uwvm_ros_u32 uwvm_ros2_rmw_sub_v1_subscription_activate(uwvm_ros_u64 source, uwvm_ros_u32 memory, uwvm_ros_u64 receipt);
    /**
     * @brief Query the exact retained original object without refreshing its identity.
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
    UWVM_ROS_RMW_SUB_IMPORT("subscription_inspect")
    uwvm_ros_u32 uwvm_ros2_rmw_sub_v1_subscription_inspect(uwvm_ros_u64 source, uwvm_ros_u64 incarnation, uwvm_ros_u32 memory, uwvm_ros_u64 receipt);
    /**
     * @brief Borrow and copy exactly one complete associated record; no implicit commit.
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
     * @param[in] expected_gid Explicit value in the domain described above; no implicit unit
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
    UWVM_ROS_RMW_SUB_IMPORT("subscription_peek")
    uwvm_ros_u32 uwvm_ros2_rmw_sub_v1_subscription_peek(uwvm_ros_u64 source,
                                                        uwvm_ros_u64 incarnation,
                                                        uwvm_ros_u32 expected_gid,
                                                        uwvm_ros_u32 memory,
                                                        uwvm_ros_u64 packet,
                                                        uwvm_ros_u64 capacity);
    /**
     * @brief Consume the exact current borrow. Failure may be ambiguous; never replay.
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
    UWVM_ROS_RMW_SUB_IMPORT("subscription_commit")
    uwvm_ros_u32 uwvm_ros2_rmw_sub_v1_subscription_commit(uwvm_ros_u64 source, uwvm_ros_u64 incarnation, uwvm_ros_u64 sequence, uwvm_ros_u64 reservation);
    /**
     * @brief Release the exact borrow while preserving its accepted record and sequence.
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
    UWVM_ROS_RMW_SUB_IMPORT("subscription_cancel")
    uwvm_ros_u32 uwvm_ros2_rmw_sub_v1_subscription_cancel(uwvm_ros_u64 source, uwvm_ros_u64 incarnation, uwvm_ros_u64 sequence, uwvm_ros_u64 reservation);
    /**
     * @brief Tombstone and once-retire the retained Subscription; raw source stays open.
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
    UWVM_ROS_RMW_SUB_IMPORT("subscription_retire")
    uwvm_ros_u32 uwvm_ros2_rmw_sub_v1_subscription_retire(uwvm_ros_u64 source, uwvm_ros_u64 incarnation);
#undef UWVM_ROS_RMW_SUB_IMPORT
#ifdef __cplusplus
}
#endif
#endif
