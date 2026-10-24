/** @file
 * @brief Allocation-free session ownership and inspectable cleanup for C89 and later C/C++.
 *
 * A session is a guest-local lifetime organizer over an explicitly selected
 * backend. It never creates a native node, inherits ambient permissions, reads
 * a clock, retries a timeout, or grants an operation. Supply stable owner
 * storage; the session/context/storage must outlive every borrowed owner.
 */
#ifndef ROSWASMC_SESSION_H
#define ROSWASMC_SESSION_H
#include <platform/ros/c/roswasm/roswasmc.h>

/**
 * @brief Explicit local dispatch context, independent of native ROS authority.
 *
 * @details Caller-owned local dispatch lifetime flag. Shutdown suppresses future local work but
 * does not cancel, undo or replay an already admitted native operation. Keep this object alive
 * while executors/sessions borrow it.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_local_context_init(), roswasmc_local_context_shutdown()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_local_context
{
    int active;
} roswasmc_local_context;

/**
 * @brief Start local dispatch without opening a native node or alias.
 *
 * @details Update only the caller-driven local scheduling state described above. Queued callables
 * may independently perform their explicitly authorized operation once; cancellation/shutdown
 * cannot undo an external effect.
 *
 * @par C storage and execution contract
 * @param[in,out] context Stable borrowed context; its immutable backend and code must outlive
 * every dependent owner.
 * @return No return value. Observe the documented local state change; no hidden wait, retry or
 * allocation occurs.
 * @par Permissions
 * No scheduling/clock/ROS permission is created; a dispatched business callable requires its own
 * existing capability.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_executor_spin(), roswasmc_future_take()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE void roswasmc_local_context_init(roswasmc_local_context* context)
{
    if(context)
    {
        context->active = 1;
    }
}

/**
 * @brief Stop associated local Session/Executor scheduling, granting/revoking nothing.
 * Existing native owners must still be explicitly closed; shutdown never sends
 * a native lifecycle transition, acquires a thread or cancels an admitted RPC.
 *
 * @details Update only the caller-driven local scheduling state described above. Queued callables
 * may independently perform their explicitly authorized operation once; cancellation/shutdown
 * cannot undo an external effect.
 *
 * @par C storage and execution contract
 * @param[in,out] context Stable borrowed context; its immutable backend and code must outlive
 * every dependent owner.
 * @return No return value. Observe the documented local state change; no hidden wait, retry or
 * allocation occurs.
 * @par Permissions
 * No scheduling/clock/ROS permission is created; a dispatched business callable requires its own
 * existing capability.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_executor_spin(), roswasmc_future_take()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE void roswasmc_local_context_shutdown(roswasmc_local_context* context)
{
    if(context)
    {
        context->active = 0;
    }
}

/**
 * @brief Separate application/setup failure from first cleanup failure.
 * All cleanup attempts run even after an error. Owners are retired locally
 * after one attempt; failure107/110 must never cause an automatic close replay.
 *
 * @details Preserves the primary business errno separately from first cleanup errno and attempt
 * count. Missing cleanup callbacks leave live owners available for a later explicit cleanup
 * decision; never discard them on a fabricated success.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_cleanup_init(), roswasmc_cleanup_owner(), roswasmc_session_close()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_cleanup_report
{
    uwvm_ros_u32 primary_error, cleanup_error;
    size_t attempted, failed;
} roswasmc_cleanup_report;

/**
 * @brief Start an empty report. This performs no imports.
 *
 * @details Follow the documented single-attempt retirement order. Keep an owner when its local
 * cleanup callback is unavailable; after an actual close/revoke attempt, do not infer a live
 * handle from a transport error.
 *
 * @par C storage and execution contract
 * @param[in] primary_error Explicit value in the domain described above; no implicit unit
 * conversion, policy grant or retry.
 * @return Primary error and the separately retained first cleanup error/attempt count; inspect
 * both before retiring remaining owners.
 * @par Permissions
 * Only existing owned capabilities are used. Revocation requires the explicit policy allowed by
 * the Host; cleanup creates no new permission.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_close(), roswasmc_cleanup_report
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE roswasmc_cleanup_report roswasmc_cleanup_init(uwvm_ros_u32 primary_error)
{
    roswasmc_cleanup_report result;
    result.primary_error = primary_error;
    result.cleanup_error = 0;
    result.attempted = 0;
    result.failed = 0;
    return result;
}

/**
 * @brief Close one live owner and accumulate its independent cleanup status.
 * Empty owners are skipped. Use roswasmc_close directly to test an empty/stale
 * wrapper's9 result. The return value is the attempted close's fresh ABI code.
 *
 * @details Follow the documented single-attempt retirement order. Keep an owner when its local
 * cleanup callback is unavailable; after an actual close/revoke attempt, do not infer a live
 * handle from a transport error.
 *
 * @par C storage and execution contract
 * @param[in,out] cap Initialized capability owner; keep its context/backend alive for the complete
 * operation.
 * @param[in,out] report Live caller-owned object/storage with the extent and state described
 * above; no implicit allocation or ownership duplication.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * Only existing owned capabilities are used. Revocation requires the explicit policy allowed by
 * the Host; cleanup creates no new permission.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_close(), roswasmc_cleanup_report
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_cleanup_owner(roswasmc_capability* cap, roswasmc_cleanup_report* report)
{
    uwvm_ros_u32 error;
    if(!cap || !cap->handle)
    {
        return 0;
    }
    error = roswasmc_close(cap);
    if(report)
    {
        ++report->attempted;
        if(error)
        {
            ++report->failed;
            if(!report->cleanup_error)
            {
                report->cleanup_error = error;
            }
        }
    }
    return error;
}

/**
 * @brief Stable caller-buffer ownership arena; no resource opens during init.
 * Slots returned by session_open stay at fixed addresses until session_close.
 * Do not manually copy, move or overwrite live slots. Individual explicit close
 * is allowed; session cleanup skips its already-retired slot. Reinitialize only
 * after closing the previous session. No destructor exists in C.
 *
 * @details Borrows stable caller-provided owner slots and explicit backend/local context.
 * Capacity/count are owner entries, not bytes. Do not copy/reinitialize a live session; checked
 * close runs in reverse acquisition order.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_session_init(), roswasmc_session_open(), roswasmc_session_close()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_session
{
    roswasmc_context context;
    roswasmc_capability* owners;
    size_t capacity, count;
    roswasmc_local_context const* lifecycle;
} roswasmc_session;

/**
 * @brief Initialize a fresh session over fixed storage, granting no authority.
 * The caller must not call this on a live initialized session. A zero-capacity
 * session is valid and refuses allocation before any host import.
 *
 * @details Initialize or transfer only the explicit caller-owned state described above. Keep every
 * borrowed context, table, buffer and callback stable for its documented dependent lifetime.
 *
 * @par C storage and execution contract
 * @param[in,out] session Initialized caller-owned session and stable owner table; no hidden
 * resource allocation.
 * @param[in] backend Immutable dispatch table whose function code must outlive all borrowers.
 * @param[in,out] owners Live caller-owned object/storage with the extent and state described
 * above; no implicit allocation or ownership duplication.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * Initialization/move alone creates no Host grant; any explicit resource open retains its separate
 * permission checks.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_capability_init(), roswasmc_capability_take()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_session_init(roswasmc_session* session, roswasmc_backend const* backend, roswasmc_capability* owners, size_t capacity)
{
    if(!session || !backend || (!owners && capacity))
    {
        return UWVM_ROS_INVALID;
    }
    session->context.backend = backend;
    session->owners = owners;
    session->capacity = capacity;
    session->count = 0;
    session->lifecycle = 0;
    return 0;
}

/**
 * @brief Initialize a session associated with explicit controlled local shutdown.
 *
 * @details Execute the bounded operation described above with the supplied complete values and
 * stable owners. Inspect its actual result before using output; do not implicitly retry a consumed
 * event or uncertain external operation.
 *
 * @par C storage and execution contract
 * @param[in,out] session Initialized caller-owned session and stable owner table; no hidden
 * resource allocation.
 * @param[in] backend Immutable dispatch table whose function code must outlive all borrowers.
 * @param[in] context Stable borrowed context; its immutable backend and code must outlive every
 * dependent owner.
 * @param[in,out] owners Live caller-owned object/storage with the extent and state described
 * above; no implicit allocation or ownership duplication.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
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
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_session_init_context(roswasmc_session* session,
                                                            roswasmc_backend const* backend,
                                                            roswasmc_local_context const* context,
                                                            roswasmc_capability* owners,
                                                            size_t capacity)
{
    uwvm_ros_u32 error;
    if(!context)
    {
        return UWVM_ROS_INVALID;
    }
    error = roswasmc_session_init(session, backend, owners, capacity);
    if(!error)
    {
        session->lifecycle = context;
    }
    return error;
}

/**
 * @brief Check the explicit imported ABI version. Value1 succeeds; no alias opens.
 * A missing version import or a different ABI is unsupported95, not proof of a
 * functioning runtime. Backend.version selects ROS1/ROS2 and is not ABI version.
 *
 * @details Perform the local structural/ownership check described above. A matching local handle,
 * range or selector does not replace the Runtime's instance, generation, native-session or policy
 * validation.
 *
 * @par C storage and execution contract
 * @param[in] session Initialized caller-owned session and stable owner table; no hidden resource
 * allocation.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
 * @par Permissions
 * None; this local check does not call a business operation or create authority.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_capability, roswasmc_context
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_session_check_abi(roswasmc_session const* session)
{
    if(!session || !session->context.backend)
    {
        return UWVM_ROS_INVALID;
    }
    if(session->lifecycle && !session->lifecycle->active)
    {
        return UWVM_ROS_REVOKED;
    }
    if(!session->context.backend->abi_version)
    {
        return UWVM_ROS_UNSUPPORTED;
    }
    return session->context.backend->abi_version() == 1 ? 0 : UWVM_ROS_UNSUPPORTED;
}

/**
 * @brief Open exactly one alias into the next stable slot, transactionally.
 * On error, count and *owner are unchanged. The returned pointer is borrowed
 * from the session; caller must never free it or transfer it to another backend.
 * Capacity exhaustion returns90 before calling the host and confers no rights.
 *
 * @details Execute the bounded operation described above with the supplied complete values and
 * stable owners. Inspect its actual result before using output; do not implicitly retry a consumed
 * event or uncertain external operation.
 *
 * @par C storage and execution contract
 * @param[in,out] session Initialized caller-owned session and stable owner table; no hidden
 * resource allocation.
 * @param[in] alias Counted non-NUL-terminated Host-granted alias bytes; a native ROS name is not a
 * substitute.
 * @param[in] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @param[in,out] owner Synthetic application registration ID, distinct from a ROS capability and
 * the Runtime's independent instance identity.
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
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_session_open(roswasmc_session* session, char const* alias, size_t length, roswasmc_capability** owner)
{
    roswasmc_capability* next;
    uwvm_ros_u32 error;
    if(!session || !owner || !session->context.backend || (!session->owners && session->capacity))
    {
        return UWVM_ROS_INVALID;
    }
    if(session->lifecycle && !session->lifecycle->active)
    {
        return UWVM_ROS_REVOKED;
    }
    if(session->count >= session->capacity)
    {
        return UWVM_ROS_TOO_LARGE;
    }
    next = session->owners + session->count;
    roswasmc_capability_init(next, &session->context);
    error = roswasmc_open(next, alias, length);
    if(error)
    {
        return error;
    }
    ++session->count;
    *owner = next;
    return 0;
}

/**
 * @brief Check backend registration before opening a selected request alias.
 * A registered method may still be denied13, revoked125 or unsupported95 by
 * the native adapter. Neither return95 nor return13 is a functional success.
 *
 * @details Execute the bounded operation described above with the supplied complete values and
 * stable owners. Inspect its actual result before using output; do not implicitly retry a consumed
 * event or uncertain external operation.
 *
 * @par C storage and execution contract
 * @param[in,out] session Initialized caller-owned session and stable owner table; no hidden
 * resource allocation.
 * @param[in] operation Explicit supported operation selector; no selector supplies its own Host
 * permission.
 * @param[in] alias Counted non-NUL-terminated Host-granted alias bytes; a native ROS name is not a
 * substitute.
 * @param[in] length Byte count or byte-count destination as specified above; only successful
 * documented commits make output valid.
 * @param[in,out] owner Synthetic application registration ID, distinct from a ROS capability and
 * the Runtime's independent instance identity.
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
ROSWASM_C_INLINE uwvm_ros_u32
    roswasmc_session_open_for(roswasmc_session* session, roswasmc_operation operation, char const* alias, size_t length, roswasmc_capability** owner)
{
    uwvm_ros_u32 error;
    if(!session)
    {
        return UWVM_ROS_INVALID;
    }
    if(session->lifecycle && !session->lifecycle->active)
    {
        return UWVM_ROS_REVOKED;
    }
    error = roswasmc_check_operation(&session->context, operation);
    return error ? error : roswasmc_session_open(session, alias, length, owner);
}

/**
 * @brief Close every live slot in reverse acquisition order, once each.
 * primary_error is retained separately. Optional statuses receives one status
 * per acquisition-order slot (zero for already-retired slots); provide count
 * entries. An undersized statuses buffer refuses before closing any owner.
 * All attempted owners retire even when cleanup fails. count becomes zero.
 *
 * @details Follow the documented single-attempt retirement order. Keep an owner when its local
 * cleanup callback is unavailable; after an actual close/revoke attempt, do not infer a live
 * handle from a transport error.
 *
 * @par C storage and execution contract
 * @param[in,out] session Initialized caller-owned session and stable owner table; no hidden
 * resource allocation.
 * @param[in] primary_error Explicit value in the domain described above; no implicit unit
 * conversion, policy grant or retry.
 * @param[in,out] statuses Live caller-owned object/storage with the extent and state described
 * above; no implicit allocation or ownership duplication.
 * @param[in] status_capacity Explicit value in the domain described above; no implicit unit
 * conversion, policy grant or retry.
 * @return Primary error and the separately retained first cleanup error/attempt count; inspect
 * both before retiring remaining owners.
 * @par Permissions
 * Only existing owned capabilities are used. Revocation requires the explicit policy allowed by
 * the Host; cleanup creates no new permission.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_close(), roswasmc_cleanup_report
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE roswasmc_cleanup_report roswasmc_session_close(roswasmc_session* session,
                                                                uwvm_ros_u32 primary_error,
                                                                uwvm_ros_u32* statuses,
                                                                size_t status_capacity)
{
    roswasmc_cleanup_report report = roswasmc_cleanup_init(primary_error);
    size_t remaining;
    if(!session || !session->context.backend || (!session->owners && session->capacity) || session->count > session->capacity ||
       (statuses && status_capacity < session->count))
    {
        report.cleanup_error = UWVM_ROS_INVALID;
        return report;
    }
    remaining = session->count;
    while(remaining)
    {
        size_t index = --remaining;
        uwvm_ros_u32 code = roswasmc_cleanup_owner(session->owners + index, &report);
        if(statuses)
        {
            statuses[index] = code;
        }
    }
    /* A missing local callback performed no native attempt and retained its
     * owner. Keep the arena registration; explicitly retry only that missing
     * dispatch after the caller repairs its local backend contract. Owners
     * already attempted natively have handle0 and can never be replayed here. */
    for(remaining = 0; remaining < session->count; ++remaining)
    {
        if(session->owners[remaining].handle)
        {
            return report;
        }
    }
    session->count = 0;
    return report;
}
#endif
