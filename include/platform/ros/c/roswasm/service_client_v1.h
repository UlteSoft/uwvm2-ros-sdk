/*************************************************************
 * UWVM2 optional service-client extension1. APL-2.0.        *
 *************************************************************/
#ifndef UWVM_ROSWASM_SERVICE_CLIENT_V1_H
#define UWVM_ROSWASM_SERVICE_CLIENT_V1_H
#include <platform/ros/c/roswasm/detail/common/c_portability.h>
#ifdef __cplusplus
extern "C"
{
#endif
#if defined(__wasm__)
# define UWVM_ROS_CLIENT_IMPORT(module, name) __attribute__((__import_module__(module), __import_name__(name)))
#else
# define UWVM_ROS_CLIENT_IMPORT(module, name)
#endif
    /* This OPTIONAL independent namespace does not replace or extend the original
     * business-v1 tuple lists. Each backend must actually be compiled/admitted.
     * Missing Host extension imports fail linking. Missing native query/QoS APIs
     * return95; old Gateways cannot attest the new manifest/operation and retain
     * their truthful authentication/protocol/transport refusal. No refusal or old
     * response is converted into an availability answer.
     * Both handles are real full64-bit capabilities from the same backend/instance:
     * independently granted service.available and its configured service.call.
     * There is no Guest retirement/management/command-selector import.
     *
     * features success writes exactly8 little-endian bytes. service_available writes
     * exactly1 byte0/1. Any error leaves output untouched. wait_ns0 still performs
     * one genuine native bounded query; positive waits require explicit finite Host
     * limits. Negative/infinite waits are invalid22, not silently saturated.
     * A true result is a snapshot, not a promise of subsequent remote call success.
     */
    /**
     * @brief uwvm ros client feature.
     *
     * @details Borrowed callable type with the complete signature, storage lifetime and
     * execution/error contract documented above. Keep callback code and captured storage alive; a
     * callable value carries no Host permission.
     * @par C type contract
     * Use the declared complete value and exact representation. Caller-owned storage and any
     * borrowed
     * members retain the lifetimes documented above; no implicit allocation or ownership
     * duplication
     * occurs.
     * @see @ref roswasmc_c_contracts
     */
    enum uwvm_ros_client_feature
    {

        /**
         * @brief Stable ABI constant: client typed query.
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
        UWVM_ROS_CLIENT_TYPED_QUERY = 1,

        /**
         * @brief Stable ABI constant: client finite wait.
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
        UWVM_ROS_CLIENT_FINITE_WAIT = 2,

        /**
         * @brief Stable ABI constant: client actual qos check.
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
        UWVM_ROS_CLIENT_ACTUAL_QOS_CHECK = 4,

        /**
         * @brief Stable ABI constant: client typed md5 header.
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
        UWVM_ROS_CLIENT_TYPED_MD5_HEADER = 8
    };

    /**
     * @brief Observe this import namespace's actual ABI version.
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
    UWVM_ROS_CLIENT_IMPORT("uwvm_ros1_client_v1", "abi_version") uwvm_ros_u32 uwvm_ros1_client_v1_abi_version(void);
    /**
     * @brief Read the actual optional Service observation feature mask; no missing API becomes a
     * default answer.
     *
     * @details Read the actual optional Service observation feature mask; no missing API becomes a
     * default answer.
     *
     * @par C storage and execution contract
     * @param[in] availability Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @param[in] source Existing source owner or transfer source as specified above; never copy it
     * into a second live owner.
     * @param[in] memory Actual Guest linear-memory index (i32); pointer convenience APIs use
     * memory0.
     * @param[in] output Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
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
    UWVM_ROS_CLIENT_IMPORT("uwvm_ros1_client_v1", "features")
    uwvm_ros_u32 uwvm_ros1_client_v1_features(uwvm_ros_u64 availability, uwvm_ros_u64 source, uwvm_ros_u32 memory, uwvm_ros_u64 output);
    /**
     * @brief Perform a genuine bounded readiness observation using an independently paired
     * observation owner.
     *
     * @details Perform a genuine bounded readiness observation using an independently paired
     * observation owner.
     *
     * @par C storage and execution contract
     * @param[in] availability Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @param[in] source Existing source owner or transfer source as specified above; never copy it
     * into a second live owner.
     * @param[in] wait_ns Finite native wait in nanoseconds,0..60000000000 inclusive; Host policy
     * may impose a smaller ceiling.
     * @param[in] memory Actual Guest linear-memory index (i32); pointer convenience APIs use
     * memory0.
     * @param[in] output Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
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
    UWVM_ROS_CLIENT_IMPORT("uwvm_ros1_client_v1", "service_available")
    uwvm_ros_u32
        uwvm_ros1_client_v1_service_available(uwvm_ros_u64 availability, uwvm_ros_u64 source, uwvm_ros_u64 wait_ns, uwvm_ros_u32 memory, uwvm_ros_u64 output);
    /**
     * @brief Observe this import namespace's actual ABI version.
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
    UWVM_ROS_CLIENT_IMPORT("uwvm_ros2_client_v1", "abi_version") uwvm_ros_u32 uwvm_ros2_client_v1_abi_version(void);
    /**
     * @brief Read the actual optional Service observation feature mask; no missing API becomes a
     * default answer.
     *
     * @details Read the actual optional Service observation feature mask; no missing API becomes a
     * default answer.
     *
     * @par C storage and execution contract
     * @param[in] availability Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @param[in] source Existing source owner or transfer source as specified above; never copy it
     * into a second live owner.
     * @param[in] memory Actual Guest linear-memory index (i32); pointer convenience APIs use
     * memory0.
     * @param[in] output Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
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
    UWVM_ROS_CLIENT_IMPORT("uwvm_ros2_client_v1", "features")
    uwvm_ros_u32 uwvm_ros2_client_v1_features(uwvm_ros_u64 availability, uwvm_ros_u64 source, uwvm_ros_u32 memory, uwvm_ros_u64 output);
    /**
     * @brief Perform a genuine bounded readiness observation using an independently paired
     * observation owner.
     *
     * @details Perform a genuine bounded readiness observation using an independently paired
     * observation owner.
     *
     * @par C storage and execution contract
     * @param[in] availability Explicit value in the domain described above; no implicit unit
     * conversion, policy grant or retry.
     * @param[in] source Existing source owner or transfer source as specified above; never copy it
     * into a second live owner.
     * @param[in] wait_ns Finite native wait in nanoseconds,0..60000000000 inclusive; Host policy
     * may impose a smaller ceiling.
     * @param[in] memory Actual Guest linear-memory index (i32); pointer convenience APIs use
     * memory0.
     * @param[in] output Caller-owned byte storage for the complete documented range; keep borrowed
     * decode views alive and respect nonoverlap rules.
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
    UWVM_ROS_CLIENT_IMPORT("uwvm_ros2_client_v1", "service_available")
    uwvm_ros_u32
        uwvm_ros2_client_v1_service_available(uwvm_ros_u64 availability, uwvm_ros_u64 source, uwvm_ros_u64 wait_ns, uwvm_ros_u32 memory, uwvm_ros_u64 output);
#undef UWVM_ROS_CLIENT_IMPORT
#ifdef __cplusplus
}
#endif
#endif
