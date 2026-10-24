/** @file
 * @brief Optional raw imports for a genuinely owned ROS2 native publisher.
 *
 * This is an implementation interface for the original-upstream RMW provider.
 * Application code normally uses the original rcl/rclc/rclcpp API instead.
 * Link this namespace only when the selected Host actually implements it.
 * Original uwvm_ros{1,2}_v1 function lists and numeric signatures are unchanged.
 *
 * No function opens an alias or grants a right. Open the explicitly configured
 * topic.publish alias with the normal source backend first. All calls require
 * the same live full64 source capability, Runtime instance and generation.
 * A Guest cannot set a ROS name, native type, QoS, Host policy, update or debug
 * setting through these calls. Those are fixed by the original explicit grant.
 *
 * Creation is eager and publishes no probe message. Its successful receipt
 * describes the same retained native object later used for inspect/publish/
 * retire, including its genuinely queried effective QoS and complete native GID.
 * A missing original SDK API returns95. It never substitutes requested QoS or a
 * local identifier as evidence. A failed/timed-out call must never be replayed
 * automatically: publication or another native effect may already have happened.
 *
 * Offsets and lengths are64-bit for both Wasm32/Wasm64; memory selects an actual
 * linear memory. Pointer-based C providers in this SDK explicitly select memory0.
 * Nonzero errors leave caller output bytes unchanged. There is no output length
 * slot: activation/inspection success writes exactly256 bytes of UMRE-v1.
 * Validate the entire receipt, all reserved bytes, source binding, incarnation,
 * complete QoS and selected actual GID extent before exposing an RMW object.
 *
 * Retirement releases only this native incarnation, leaves the raw source
 * capability open, and allows one cleanup attempt. Afterwards close that raw
 * capability even if retirement failed. Closing/revoking a source or abandoning
 * its session independently retires associated native owners. Reusing an old
 * full source handle never creates another native object; open a fresh source
 * only when a new application operation is explicitly intended and authorized.
 */
#ifndef UWVM_ROSWASM_RMW_PUBLISHER_V1_H
#define UWVM_ROSWASM_RMW_PUBLISHER_V1_H
#include <platform/ros/c/roswasm/detail/common/c_portability.h>
#ifdef __cplusplus
extern "C"
{
#endif
#if defined(__wasm__)
# define UWVM_ROS_RMW_IMPORT(name) __attribute__((__import_module__("uwvm_ros2_rmw_v1"), __import_name__(name)))
#else
# define UWVM_ROS_RMW_IMPORT(name)
#endif
    enum
    {
        /**
         * @brief Stable ABI constant: rmw endpoint receipt bytes.
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
        UWVM_ROS_RMW_ENDPOINT_RECEIPT_BYTES = 256
    };

    /**
     * @brief Return the raw namespace ABI version. This grants no ROS authority.
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
    UWVM_ROS_RMW_IMPORT("abi_version") uwvm_ros_u32 uwvm_ros2_rmw_v1_abi_version(void);
    /**
     * @brief Create one real native publisher for source; commit its full UMRE receipt
     * only on success. Do not call the old topic_publish to activate this source.
     *
     * @details Create one genuinely retained native publisher and commit its complete UMRE-v1
     * receipt.
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
    UWVM_ROS_RMW_IMPORT("publisher_activate")
    uwvm_ros_u32 uwvm_ros2_rmw_v1_publisher_activate(uwvm_ros_u64 source, uwvm_ros_u32 memory, uwvm_ros_u64 receipt);
    /**
     * @brief Query the same native object. Missing/changed identity or actual QoS refuses
     * the operation; it does not refresh the admitted snapshot or replace an owner.
     *
     * @details Inspect the same retained native publisher incarnation and its actual admitted
     * identity/QoS.
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
    UWVM_ROS_RMW_IMPORT("publisher_inspect")
    uwvm_ros_u32 uwvm_ros2_rmw_v1_publisher_inspect(uwvm_ros_u64 source, uwvm_ros_u64 incarnation, uwvm_ros_u32 memory, uwvm_ros_u64 receipt);
    /**
     * @brief Publish one whole bounded canonical message on the retained native object.
     * Encode every original field with the selected complete canonical codec.
     * Never pass a native generated struct or arbitrary CDR bytes as canonical data.
     *
     * @details Publish one whole canonical value on the retained native publisher incarnation.
     *
     * @par C storage and execution contract
     * @param[in] source Existing source owner or transfer source as specified above; never copy it
     * into a second live owner.
     * @param[in] incarnation Full-width retained native endpoint incarnation; match the admitted
     * receipt exactly.
     * @param[in] memory Actual Guest linear-memory index (i32); pointer convenience APIs use
     * memory0.
     * @param[in] canonical Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @param[in] bytes Exact unsigned byte count, without an implicit terminator or native struct
     * padding.
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
    UWVM_ROS_RMW_IMPORT("publisher_publish")
    uwvm_ros_u32
        uwvm_ros2_rmw_v1_publisher_publish(uwvm_ros_u64 source, uwvm_ros_u64 incarnation, uwvm_ros_u32 memory, uwvm_ros_u64 canonical, uwvm_ros_u64 bytes);
    /**
     * @brief Tombstone this incarnation before one bounded native cleanup attempt.
     * No memory argument or caller-selected management command is accepted.
     *
     * @details Tombstone the publisher incarnation before one native cleanup attempt; the source
     * stays separately owned.
     *
     * @par C storage and execution contract
     * @param[in] source Existing source owner or transfer source as specified above; never copy it
     * into a second live owner.
     * @param[in] incarnation Full-width retained native endpoint incarnation; match the admitted
     * receipt exactly.
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
    UWVM_ROS_RMW_IMPORT("publisher_retire")
    uwvm_ros_u32 uwvm_ros2_rmw_v1_publisher_retire(uwvm_ros_u64 source, uwvm_ros_u64 incarnation);
#undef UWVM_ROS_RMW_IMPORT
#ifdef __cplusplus
}
#endif
#endif
