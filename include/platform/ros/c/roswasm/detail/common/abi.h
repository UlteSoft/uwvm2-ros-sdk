/** @file
 * @brief UWVM2 ROS Runtime Extension ABI v1 common scalar types and byte helpers.
 * @see ../LICENSE for the SDK license.
 */
#ifndef UWVM_ROS_COMMON_ABI_H
#define UWVM_ROS_COMMON_ABI_H
#include <platform/ros/c/roswasm/detail/common/c_portability.h>
/**
 * @brief Opaque instance-owned handle; never a native pointer or transferable authority.
 *
 * @details Opaque full64 instance/backend capability identity. It is neither a native pointer nor
 * transferable authority; all trusted generation, ownership, revocation and session checks remain
 * mandatory.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_capability, roswasmc_open()
 * @see @ref roswasmc_c_contracts
 */
typedef uwvm_ros_u64 uwvm_ros_handle;
/**
 * @brief Unsigned i64 byte offset in the explicitly selected guest memory.
 *
 * @details Unsigned i64 byte offset in the explicitly selected Guest linear memory on both pointer
 * ABIs. A converted C pointer does not validate range, select another memory or grant access.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see uwvm_ros_address(), uwvm_ros_load_u64()
 * @see @ref roswasmc_c_contracts
 */
typedef uwvm_ros_u64 uwvm_ros_offset;

/**
 * @brief Stable numeric errors. Import abi_version returns a version value instead.
 *
 * @details Stable numeric errno convention for import/local wrapper results. ABI version and
 * Boolean predicates are separately documented value-returning APIs; an uncertain native failure
 * never authorizes automatic replay.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_result, roswasmc_cleanup_report
 * @see @ref roswasmc_c_contracts
 */
enum uwvm_ros_error
{

    /**
     * @brief Stable ABI constant: success.
     *
     * @details Numeric errno success0; do not apply this interpretation to ABI version or
     * Boolean-returning functions.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see uwvm_ros_error
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS_SUCCESS = 0,
    /**
     * @brief Stable ABI constant: unknown module.
     *
     * @details Requested import module is unavailable; no alternate backend is selected
     * implicitly.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see uwvm_ros_error
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS_UNKNOWN_MODULE = 2,
    /**
     * @brief Stable ABI constant: bad handle.
     *
     * @details The owner/handle is invalid, unopened, stale or foreign; do not manufacture
     * replacement authority.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see uwvm_ros_error
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS_BAD_HANDLE = 9,
    /**
     * @brief Stable ABI constant: again.
     *
     * @details Idle/pending/busy or quota refusal as defined by the operation; no successful
     * payload is implied.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see uwvm_ros_error
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS_AGAIN = 11,

    /**
     * @brief Stable ABI constant: denied.
     *
     * @details No matching explicit Host permission exists; aliases/native endpoints are never
     * granted by default.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see uwvm_ros_error
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS_DENIED = 13,
    /**
     * @brief Stable ABI constant: conflict.
     *
     * @details An existing owner, queue, watch or local dispatch state conflicts with this
     * operation.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see uwvm_ros_error
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS_CONFLICT = 17,
    /**
     * @brief Stable ABI constant: invalid.
     *
     * @details Argument, selector, framing, representation or local state validation failed.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see uwvm_ros_error
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS_INVALID = 22,
    /**
     * @brief Stable ABI constant: too large.
     *
     * @details Size/capacity refusal; length validity and whether a record was consumed remain
     * separate contract facts.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see uwvm_ros_error
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS_TOO_LARGE = 90,

    /**
     * @brief Stable ABI constant: unsupported.
     *
     * @details Missing backend operation, optional API or supported ABI version; never emulate
     * success.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see uwvm_ros_error
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS_UNSUPPORTED = 95,
    /**
     * @brief Stable ABI constant: disconnected.
     *
     * @details Native/session transport disconnected; an admitted operation or cleanup may already
     * have effected its state change.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see uwvm_ros_error
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS_DISCONNECTED = 107,

    /**
     * @brief Stable ABI constant: timeout.
     *
     * @details Finite native deadline expired; do not infer that an external operation did not
     * occur or replay it automatically.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see uwvm_ros_error
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS_TIMEOUT = 110,
    /**
     * @brief Stable ABI constant: revoked.
     *
     * @details Alias/native authority or documented local task was revoked/cancelled; distinguish
     * local state from a completed native errno.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see uwvm_ros_error
     * @see @ref roswasmc_c_contracts
     */
    UWVM_ROS_REVOKED = 125
};

/* Handles and returned lengths occupy eight little-endian bytes. Every offset
   and length is an i64 in both wasm32 and memory64; memory index is an i32.
   Copy helpers use memory 0. All data is copied during the import call. */
/**
 * @brief Convert a guest pointer to an i64 offset; this does not validate a range or grant access.
 *
 * @details Convert the documented Guest address or fixed-width little-endian byte representation.
 * The caller must supply the complete live range; this helper neither validates a native pointer
 * nor authorizes memory access.
 *
 * @par C storage and execution contract
 * @param[in] p Caller-owned byte storage for the complete documented range; keep borrowed decode
 * views alive and respect nonoverlap rules.
 * @return Full-width unsigned scalar in the documented byte/count/identity domain; no native
 * pointer or authority is manufactured.
 * @par Permissions
 * None; this is a local scalar/byte operation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see uwvm_ros_offset, uwvm_ros_handle
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_offset uwvm_ros_address(void const* p)
{
    return (uwvm_ros_u64)(uwvm_ros_uintptr)p;
}

/**
 * @brief Load exactly eight little-endian bytes, including unaligned output slots.
 *
 * @details Convert the documented Guest address or fixed-width little-endian byte representation.
 * The caller must supply the complete live range; this helper neither validates a native pointer
 * nor authorizes memory access.
 *
 * @par C storage and execution contract
 * @param[in] p Caller-owned byte storage for the complete documented range; keep borrowed decode
 * views alive and respect nonoverlap rules.
 * @return Full-width unsigned scalar in the documented byte/count/identity domain; no native
 * pointer or authority is manufactured.
 * @par Permissions
 * None; this is a local scalar/byte operation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see uwvm_ros_offset, uwvm_ros_handle
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u64 uwvm_ros_load_u64(unsigned char const* p)
{
    uwvm_ros_u64 v = 0;
    unsigned i;
    for(i = 0; i < 8; ++i)
    {
        v |= (uwvm_ros_u64)p[i] << (8 * i);
    }
    return v;
}

/**
 * @brief Store one four-byte little-endian integer without alignment requirements.
 *
 * @details Convert the documented Guest address or fixed-width little-endian byte representation.
 * The caller must supply the complete live range; this helper neither validates a native pointer
 * nor authorizes memory access.
 *
 * @par C storage and execution contract
 * @param[in,out] p Caller-owned byte storage for the complete documented range; keep borrowed
 * decode views alive and respect nonoverlap rules.
 * @param[in] v Explicit value in the domain described above; no implicit unit conversion, policy
 * grant or retry.
 * @return No return value. Observe the documented local state change; no hidden wait, retry or
 * allocation occurs.
 * @par Permissions
 * None; this is a local scalar/byte operation.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see uwvm_ros_offset, uwvm_ros_handle
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE void uwvm_ros_store_u32(unsigned char* p, uwvm_ros_u32 v)
{
    unsigned i;
    for(i = 0; i < 4; ++i)
    {
        p[i] = (unsigned char)(v >> (8 * i));
    }
}
#endif
