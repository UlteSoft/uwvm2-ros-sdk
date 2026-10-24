/** @file
 * @brief Optional, allocation-free native service observation for C89 and later C guests.
 *
 * This separate dispatch table preserves roswasmc_backend and the original
 * business ABI. Include service_client_ros1.h or service_client_ros2.h explicitly
 * to select real imports. Merely including a header grants no ROS rights.
 *
 * Open an independent service.available owner through the ordinary C capability
 * API. Borrow the existing service.call owner of the same stable Context. The
 * Host must separately grant and precisely pair both aliases, native identity,
 * resource, codec and QoS. The SDK neither discovers an alias nor fills policy.
 */
#ifndef ROSWASMC_SERVICE_CLIENT_H
#define ROSWASMC_SERVICE_CLIENT_H
#include <platform/ros/c/roswasm/roswasmc.h>
#include <platform/ros/c/roswasm/service_client_v1.h>
#ifdef __cplusplus
extern "C"
{
#endif
    /**
     * @brief Explicit optional imports; backend and all pointed-to code must remain
     * alive until every borrower has retired. No function pointer grants authority.
     *
     * @details Immutable optional service-observation imports. Backend version1/2 identifies
     * ROS1/ROS2
     * while abi_version observes namespace ABI1. Available/source owners remain independently
     * granted,
     * paired and live through every finite query.
     * @par C type contract
     * Use the declared complete value and exact representation. Caller-owned storage and any
     * borrowed
     * members retain the lifetimes documented above; no implicit allocation or ownership
     * duplication
     * occurs.
     * @see roswasmc_service_client_features(), roswasmc_service_client_query()
     * @see @ref roswasmc_c_contracts
     */
    typedef struct roswasmc_service_client_backend
    {
        uwvm_ros_u32 version;
        /** @brief Observe optional client namespace ABI version1.
         * @details Synchronous observation opens no alias and performs no readiness wait.
         * @return Actual ABI version, not an errno.
         * @see roswasmc_service_client_features(), roswasmc_service_client_query()
         */
        uwvm_ros_u32 (*abi_version)(void);
        /** @brief Observe the actual complete native availability feature mask.
         * @details Requires independently paired service.available and service.call
         * owners in one instance/backend. Missing APIs are unsupported95, never a
         * default mask. This synchronous observation spends no business-call quota.
         * @param[in] available Live full64 service.available observer owner.
         * @param[in] source Existing full64 service.call source owner.
         * @param[in] memory Actual Guest memory index.
         * @param[out] output Eight-byte LE mask-slot offset; committed on success.
         * @return Actual errno; valid observed masks are0,ROS1=11 or ROS2=7.
         * @see roswasmc_service_client_features()
         */
        uwvm_ros_u32 (*features)(uwvm_ros_u64 available, uwvm_ros_u64 source, uwvm_ros_u32 memory, uwvm_ros_u64 output);
        /** @brief Perform one genuine finite native Service readiness query.
         * @details Zero wait still queries the native client. A true snapshot does
         * not guarantee that a later call succeeds. Serialize use of the same
         * owners; no scheduler, request submission or automatic retry is implied.
         * @param[in] available Live full64 service.available observer owner.
         * @param[in] source Existing full64 service.call source that outlives the query.
         * @param[in] wait_ns Native wait in nanoseconds,0..60000000000; Host limits may be lower.
         * @param[in] memory Actual Guest memory index.
         * @param[out] output One-byte canonical readiness0/1 destination offset.
         * @return Actual errno;11/95/110 are failures and never false readiness.
         * @see roswasmc_service_client_query()
         */
        uwvm_ros_u32 (*query)(uwvm_ros_u64 available, uwvm_ros_u64 source, uwvm_ros_u64 wait_ns, uwvm_ros_u32 memory, uwvm_ros_u64 output);
    } roswasmc_service_client_backend;

    /**
     * @brief Check local owner association without invoking any import.
     * Handles remain opaque full-width values. This check is not a replacement for
     * the Host's actual Instance, generation, operation and native-session checks.
     *
     * @details Perform the local structural/ownership check described above. A matching local
     * handle, range or selector does not replace the Runtime's instance, generation,
     * native-session or policy validation.
     *
     * @par C storage and execution contract
     * @param[in] api Explicit optional dispatch table; a missing operation is unsupported, never
     * emulated.
     * @param[in] available Live caller-owned object/storage with the extent and state described
     * above; no implicit allocation or ownership duplication.
     * @param[in] source Existing source owner or transfer source as specified above; never copy it
     * into a second live owner.
     * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
     * rejection;95 means unsupported, never a fabricated result.
     * @par Permissions
     * None; this local check does not call a business operation or create authority.
     * @par Thread and async rules
     * Caller-driven and synchronous unless the operation explicitly admits a later event.
     * Serialize mutation of the same owner/storage; callbacks and their borrowed state must remain
     * alive through completion. No hidden thread or retry is started.
     * @par Version
     * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI
     * v1; optional namespaces retain their separately documented version checks.
     * @see roswasmc_capability, roswasmc_context
     * @see @ref roswasmc_c_contracts
     */
    ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_service_client_owners(roswasmc_service_client_backend const* api,
                                                                 roswasmc_capability const* available,
                                                                 roswasmc_capability const* source)
    {
        if(!roswasmc_is_open(available) || !roswasmc_is_open(source))
        {
            return UWVM_ROS_BAD_HANDLE;
        }
        if(!api || api->version < 1 || api->version > 2 || available->context != source->context || api->version != available->context->backend->version ||
           available->handle == source->handle)
        {
            return UWVM_ROS_INVALID;
        }
        return UWVM_ROS_SUCCESS;
    }

    /**
     * @brief Read an actual feature observation, committing output only on success.
     * All-ones local storage detects an erroneous success without an output write.
     * Accepted masks are the complete catalog masks (ROS1=11, ROS2=7) or explicit0;
     * a missing/failed import never becomes a default feature answer. This function
     * spends the independently configured observation quota, never call quota.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @param[in] api Explicit optional dispatch table; a missing operation is unsupported, never
     * emulated.
     * @param[in] available Live caller-owned object/storage with the extent and state described
     * above; no implicit allocation or ownership duplication.
     * @param[in] source Existing source owner or transfer source as specified above; never copy it
     * into a second live owner.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
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
    ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_service_client_features(roswasmc_service_client_backend const* api,
                                                                   roswasmc_capability const* available,
                                                                   roswasmc_capability const* source,
                                                                   uwvm_ros_u64* output)
    {
        unsigned char slot[8] = {255, 255, 255, 255, 255, 255, 255, 255};
        uwvm_ros_u64 value;
        uwvm_ros_u32 error;
        error = roswasmc_service_client_owners(api, available, source);
        if(error)
        {
            return error;
        }
        if(!output)
        {
            return UWVM_ROS_INVALID;
        }
        if(!api->abi_version || !api->features)
        {
            return UWVM_ROS_UNSUPPORTED;
        }
        if(api->abi_version() != 1)
        {
            return UWVM_ROS_UNSUPPORTED;
        }
        error = api->features(available->handle, source->handle, 0, uwvm_ros_address(slot));
        if(error)
        {
            return error;
        }
        value = uwvm_ros_load_u64(slot);
        if(value != 0 && value != (api->version == 1 ? 11u : 7u))
        {
            return UWVM_ROS_INVALID;
        }
        *output = value;
        return UWVM_ROS_SUCCESS;
    }

    /**
     * @brief Perform one genuine finite native readiness observation.
     * wait_ns0 still performs the actual native query. Positive waits are physical
     * native waits, bounded by explicit Host limits; no scheduler credit, graph
     * listing, request submission or empty business request substitutes for time.
     * Values above60e9ns are invalid. The Host may impose a smaller explicit bound.
     *
     * Only successful canonical0/1 changes *output. Error11 is busy/quota refusal,
     * 95 is unsupported, and110 is an operation timeout; none means false readiness.
     * A true result is a snapshot and does not promise a later call will succeed.
     * The borrowed source must outlive this call. Never retry a business operation
     * merely because a later readiness observation succeeded.
     *
     * @details Execute the bounded operation described above with the supplied complete values and
     * stable owners. Inspect its actual result before using output; do not implicitly retry a
     * consumed event or uncertain external operation.
     *
     * @par C storage and execution contract
     * @param[in] api Explicit optional dispatch table; a missing operation is unsupported, never
     * emulated.
     * @param[in] available Live caller-owned object/storage with the extent and state described
     * above; no implicit allocation or ownership duplication.
     * @param[in] source Existing source owner or transfer source as specified above; never copy it
     * into a second live owner.
     * @param[in] wait_ns Finite native wait in nanoseconds,0..60000000000 inclusive; Host policy
     * may impose a smaller ceiling.
     * @param[out] output Caller-owned byte storage for the complete documented range; keep
     * borrowed decode views alive and respect nonoverlap rules.
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
    ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_service_client_query(roswasmc_service_client_backend const* api,
                                                                roswasmc_capability const* available,
                                                                roswasmc_capability const* source,
                                                                uwvm_ros_u64 wait_ns,
                                                                int* output)
    {
        unsigned char slot = 255;
        uwvm_ros_u32 error = roswasmc_service_client_owners(api, available, source);
        if(error)
        {
            return error;
        }
        if(!output || wait_ns > UWVM_ROS_U64_C(60000000000))
        {
            return UWVM_ROS_INVALID;
        }
        if(!api->abi_version || !api->query)
        {
            return UWVM_ROS_UNSUPPORTED;
        }
        if(api->abi_version() != 1)
        {
            return UWVM_ROS_UNSUPPORTED;
        }
        error = api->query(available->handle, source->handle, wait_ns, 0, uwvm_ros_address(&slot));
        if(error)
        {
            return error;
        }
        if(slot > 1)
        {
            return UWVM_ROS_INVALID;
        }
        *output = (int)slot;
        return UWVM_ROS_SUCCESS;
    }
#ifdef __cplusplus
}
#endif
#endif
