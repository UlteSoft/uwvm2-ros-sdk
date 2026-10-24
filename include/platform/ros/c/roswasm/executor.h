/** @file
 * @brief Allocation-free caller-driven C Future/deferred queue and Timer.
 *
 * No native thread, clock, sleep, random source or ambient permission is used.
 * A deferred callable executes an existing bounded synchronous SDK call once;
 * its local Future is ready only after that callable returns. Cancellation and
 * Context shutdown affect local dispatch, never undo an external native effect.
 */
#ifndef ROSWASMC_EXECUTOR_H
#define ROSWASMC_EXECUTOR_H
#include <platform/ros/c/roswasm/session.h>

/**
 * @brief Local scheduling phases, distinct from native capability lifecycle.
 *
 * @details Local queue phases are distinct from native operation lifecycle. Pending cancellation
 * does not undo an external effect; READY/Taken and CANCELLED must be distinguished from a
 * completed native errno125.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_future, roswasmc_future_take()
 * @see @ref roswasmc_c_contracts
 */
typedef enum roswasmc_future_state
{

    /**
     * @brief Local Future state: pending.
     *
     * @details Local task is queued and unexecuted; only this pending phase can be cancelled
     * before dispatch.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_future_state, roswasmc_future_take()
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_FUTURE_PENDING,
    /**
     * @brief Local Future state: running.
     *
     * @details The synchronous callable is executing; local cancellation reports conflict17 and
     * cannot undo it.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_future_state, roswasmc_future_take()
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_FUTURE_RUNNING,
    /**
     * @brief Local Future state: ready.
     *
     * @details One callable completed and its actual errno can be consumed once.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_future_state, roswasmc_future_take()
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_FUTURE_READY,

    /**
     * @brief Local Future state: cancelled.
     *
     * @details Pending local dispatch was cancelled; this is not evidence that a native operation
     * was cancelled.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_future_state, roswasmc_future_take()
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_FUTURE_CANCELLED,
    /**
     * @brief Local Future state: taken.
     *
     * @details No unconsumed ready result remains; never consume the same completion twice.
     * @par C type contract
     * Compile-time discriminator/value. Preserve its declared identity; it is neither a resource
     * owner nor a substitute for explicit Host policy.
     * @see roswasmc_future_state, roswasmc_future_take()
     * @see @ref roswasmc_c_contracts
     */
    ROSWASMC_FUTURE_TAKEN
} roswasmc_future_state;

/**
 * @brief Caller-owned result status. Typed result storage belongs to task.user.
 * Keep this Future and typed user storage alive until task completion/cancellation.
 * A callback receives a separate status snapshot after the callable has returned.
 *
 * @details state/error describe one local deferred call; queued records an outstanding queue
 * borrow. Keep the Future and typed user result storage live through dispatch/cancellation, and
 * consume a ready code only once.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_future_init(), roswasmc_future_cancel(), roswasmc_future_take()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_future
{
    roswasmc_future_state state;
    uwvm_ros_u32 error;
    int queued;
} roswasmc_future;

/**
 * @brief Initialize a fresh unqueued Future. Never reinitialize one still borrowed by a queue.
 *
 * @details Update only the caller-driven local scheduling state described above. Queued callables
 * may independently perform their explicitly authorized operation once; cancellation/shutdown
 * cannot undo an external effect.
 *
 * @par C storage and execution contract
 * @param[in,out] future Caller-owned Future; keep it alive while queued/running and consume
 * completion only once.
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
ROSWASM_C_INLINE void roswasmc_future_init(roswasmc_future* future)
{
    if(future)
    {
        future->state = ROSWASMC_FUTURE_TAKEN;
        future->error = UWVM_ROS_BAD_HANDLE;
        future->queued = 0;
    }
}

/**
 * @brief Cancel only pending local work;17 means a synchronous call is running.
 *
 * @details Update only the caller-driven local scheduling state described above. Queued callables
 * may independently perform their explicitly authorized operation once; cancellation/shutdown
 * cannot undo an external effect.
 *
 * @par C storage and execution contract
 * @param[in,out] future Caller-owned Future; keep it alive while queued/running and consume
 * completion only once.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
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
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_future_cancel(roswasmc_future* future)
{
    if(!future)
    {
        return UWVM_ROS_INVALID;
    }
    if(future->state == ROSWASMC_FUTURE_RUNNING)
    {
        return UWVM_ROS_CONFLICT;
    }
    if(future->state != ROSWASMC_FUTURE_PENDING)
    {
        return UWVM_ROS_BAD_HANDLE;
    }
    future->state = ROSWASMC_FUTURE_CANCELLED;
    future->error = UWVM_ROS_REVOKED;
    return 0;
}

/**
 * @brief Consume a ready operation code once, with no waiting/pumping/retry.
 * Return11 for pending/running and125 for local cancellation. Inspect state to
 * distinguish local cancellation from an actual completed native errno125.
 *
 * @details Update only the caller-driven local scheduling state described above. Queued callables
 * may independently perform their explicitly authorized operation once; cancellation/shutdown
 * cannot undo an external effect.
 *
 * @par C storage and execution contract
 * @param[in,out] future Caller-owned Future; keep it alive while queued/running and consume
 * completion only once.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
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
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_future_take(roswasmc_future* future)
{
    uwvm_ros_u32 code;
    if(!future)
    {
        return UWVM_ROS_INVALID;
    }
    if(future->state == ROSWASMC_FUTURE_PENDING || future->state == ROSWASMC_FUTURE_RUNNING)
    {
        return UWVM_ROS_AGAIN;
    }
    if(future->state == ROSWASMC_FUTURE_CANCELLED)
    {
        return UWVM_ROS_REVOKED;
    }
    if(future->state == ROSWASMC_FUTURE_TAKEN)
    {
        return UWVM_ROS_BAD_HANDLE;
    }
    code = future->error;
    future->state = ROSWASMC_FUTURE_TAKEN;
    return code;
}

/**
 * @brief Single-caller callback group; this is not an OS mutex or native thread.
 *
 * @details exclusive selects local mutual exclusion and active counts current synchronous borrows.
 * This is a caller-thread dispatch guard rather than an OS mutex; serialize access when using an
 * actual threaded provider.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_callback_group_enter(), roswasmc_callback_group_leave()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_callback_group
{
    int exclusive;
    size_t active;
} roswasmc_callback_group;

/**
 * @brief Configure local mutually-exclusive or directly reentrant callbacks.
 *
 * @details Update only the caller-driven local scheduling state described above. Queued callables
 * may independently perform their explicitly authorized operation once; cancellation/shutdown
 * cannot undo an external effect.
 *
 * @par C storage and execution contract
 * @param[in,out] group Optional local callback-group borrow; this is not an operating-system
 * mutex.
 * @param[in] exclusive Explicit value in the domain described above; no implicit unit conversion,
 * policy grant or retry.
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
ROSWASM_C_INLINE void roswasmc_callback_group_init(roswasmc_callback_group* group, int exclusive)
{
    if(group)
    {
        group->exclusive = exclusive != 0;
        group->active = 0;
    }
}

/**
 * @brief Enter only when allowed; a recursive Executor spin is always refused separately.
 *
 * @details Update only the caller-driven local scheduling state described above. Queued callables
 * may independently perform their explicitly authorized operation once; cancellation/shutdown
 * cannot undo an external effect.
 *
 * @par C storage and execution contract
 * @param[in,out] group Optional local callback-group borrow; this is not an operating-system
 * mutex.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
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
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_callback_group_enter(roswasmc_callback_group* group)
{
    if(!group)
    {
        return 0;
    }
    if((group->exclusive && group->active) || group->active == UWVM_ROS_SIZE_MAX)
    {
        return UWVM_ROS_CONFLICT;
    }
    ++group->active;
    return 0;
}

/**
 * @brief Release the local callback borrow after normal C return.
 *
 * @details Update only the caller-driven local scheduling state described above. Queued callables
 * may independently perform their explicitly authorized operation once; cancellation/shutdown
 * cannot undo an external effect.
 *
 * @par C storage and execution contract
 * @param[in,out] group Optional local callback-group borrow; this is not an operating-system
 * mutex.
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
ROSWASM_C_INLINE void roswasmc_callback_group_leave(roswasmc_callback_group* group)
{
    if(group && group->active)
    {
        --group->active;
    }
}

/**
 * @brief Deferred operation executes once and returns the actual SDK/RPC code.
 * @details Invoked synchronously on the caller's stack during explicit spin.
 * The function and its user storage must outlive the queued task. It may use
 * only independently owned/granted capabilities; scheduling supplies no right.
 * No worker thread, clock, retry or external cancellation is created.
 * @param[in,out] user Stable caller-owned typed inputs/results and any borrowed owners.
 * @return Actual operation errno; the executor stores it in the associated Future.
 * @see roswasmc_executor_post(), roswasmc_executor_spin(), roswasmc_future_take()
 *
 * @details Borrowed callable type with the complete signature, storage lifetime and
 * execution/error contract documented above. Keep callback code and captured storage alive; a
 * callable value carries no Host permission.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see @ref roswasmc_c_contracts
 */
typedef uwvm_ros_u32 (*roswasmc_deferred_call)(void* user);
/**
 * @brief Called after the operation's stack/scratch borrows have been released.
 * status is a local immutable snapshot valid for this callback only. Copy it
 * if retained. Typed results must already be copied into caller-owned user data.
 * @details Invoked synchronously after one callable's normal return. Keep the
 * code/user state alive through callback completion and avoid recursive spin.
 * The snapshot is local scheduling state, not a native cancellation receipt or
 * new Host permission. No callback retry follows an application error.
 * @param[in,out] user Same stable application state supplied when posting the task.
 * @param[in] status Immutable Future snapshot borrowed only until callback return.
 * @return No value; copy any retained status before returning normally.
 * @see roswasmc_executor_post(), roswasmc_executor_spin(), roswasmc_future
 *
 * @details Borrowed callable type with the complete signature, storage lifetime and
 * execution/error contract documented above. Keep callback code and captured storage alive; a
 * callable value carries no Host permission.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see @ref roswasmc_c_contracts
 */
typedef void (*roswasmc_completion_callback)(void* user, roswasmc_future const* status);

/**
 * @brief Bounded ring queue slot; all pointers remain caller-owned.
 *
 * @details One finite ring slot borrows a Future, callable/completion code, user storage and
 * optional callback group. All must remain live through normal completion/cancellation; the slot
 * owns no native permission or heap allocation.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_executor_post(), roswasmc_deferred_call, roswasmc_completion_callback
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_deferred_task
{
    roswasmc_future* future;
    roswasmc_deferred_call call;
    roswasmc_completion_callback completion;
    void* user;
    roswasmc_callback_group* group;
} roswasmc_deferred_task;

/**
 * @brief Caller-buffer Executor. Poll queues remain separately usable via spin_some.
 * The context, slots, Futures, groups and captured resource/user data must remain
 * valid until completion/cancellation. Do not copy/reinitialize a live executor.
 * Callback posts wait for the next outer pass; ring storage avoids moving live
 * closures while callbacks run. No blocking wait or implicit time source exists.
 *
 * @details Borrows a stable finite ring of caller-owned slots and local context. Queue
 * indices/counts are element counts. Recursive spin is refused; callback posts wait until a later
 * outer pass, with no hidden worker thread or clock.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_executor_init(), roswasmc_executor_post(), roswasmc_executor_spin()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_executor
{
    roswasmc_local_context const* context;
    roswasmc_deferred_task* slots;
    size_t capacity, head, count, last_completions;
    int spinning;
} roswasmc_executor;

/**
 * @brief Initialize a fresh bounded caller-storage queue, with no native action.
 *
 * @details Update only the caller-driven local scheduling state described above. Queued callables
 * may independently perform their explicitly authorized operation once; cancellation/shutdown
 * cannot undo an external effect.
 *
 * @par C storage and execution contract
 * @param[in,out] executor Caller-owned finite executor; serialize its queue/spin mutations and
 * avoid recursive spin.
 * @param[in] context Stable borrowed context; its immutable backend and code must outlive every
 * dependent owner.
 * @param[in,out] slots Live caller-owned object/storage with the extent and state described above;
 * no implicit allocation or ownership duplication.
 * @param[in] capacity Available caller output capacity in bytes; this is not a Host quota
 * override.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
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
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_executor_init(roswasmc_executor* executor,
                                                     roswasmc_local_context const* context,
                                                     roswasmc_deferred_task* slots,
                                                     size_t capacity)
{
    if(!executor || !context || (!slots && capacity) || capacity > 1048576u)
    {
        return UWVM_ROS_INVALID;
    }
    executor->context = context;
    executor->slots = slots;
    executor->capacity = capacity;
    executor->head = executor->count = executor->last_completions = 0;
    executor->spinning = 0;
    return 0;
}

/**
 * @brief Queue one task into a fresh Future. No callable/import runs here.
 * A rejected post records a ready22/90/125 result. The previous Future must be
 * retired/not queued before reuse. Captured native owners remain the caller's
 * responsibility; cancel before closing/destroying their borrowed references.
 *
 * @details Update only the caller-driven local scheduling state described above. Queued callables
 * may independently perform their explicitly authorized operation once; cancellation/shutdown
 * cannot undo an external effect.
 *
 * @par C storage and execution contract
 * @param[in,out] executor Caller-owned finite executor; serialize its queue/spin mutations and
 * avoid recursive spin.
 * @param[in,out] future Caller-owned Future; keep it alive while queued/running and consume
 * completion only once.
 * @param[in] call Borrowed callable code invoked synchronously under the dispatch rules above;
 * keep its code and user state alive.
 * @param[in,out] user Borrowed callback state; it must outlive all pending tasks and synchronous
 * callbacks.
 * @param[in] completion Borrowed callable code invoked synchronously under the dispatch rules
 * above; keep its code and user state alive.
 * @param[in,out] group Optional local callback-group borrow; this is not an operating-system
 * mutex.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
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
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_executor_post(roswasmc_executor* executor,
                                                     roswasmc_future* future,
                                                     roswasmc_deferred_call call,
                                                     void* user,
                                                     roswasmc_completion_callback completion,
                                                     roswasmc_callback_group* group)
{
    uwvm_ros_u32 code = 0;
    size_t index;
    if(!future)
    {
        return UWVM_ROS_INVALID;
    }
    if(future->queued || future->state == ROSWASMC_FUTURE_RUNNING)
    {
        return UWVM_ROS_CONFLICT;
    }
    if(!executor || !executor->context || !call)
    {
        code = UWVM_ROS_INVALID;
    }
    else if(!executor->context->active)
    {
        code = UWVM_ROS_REVOKED;
    }
    else if(executor->count >= executor->capacity)
    {
        code = UWVM_ROS_TOO_LARGE;
    }
    future->state = code ? ROSWASMC_FUTURE_READY : ROSWASMC_FUTURE_PENDING;
    future->error = code;
    future->queued = 0;
    if(code)
    {
        return code;
    }
    index = (executor->head + executor->count) % executor->capacity;
    {
        roswasmc_deferred_task task;
        task.future = future;
        task.call = call;
        task.completion = completion;
        task.user = user;
        task.group = group;
        executor->slots[index] = task;
    }
    future->queued = 1;
    ++executor->count;
    return 0;
}

/**
 * @brief Cancel every unexecuted local task, never an admitted external RPC.
 *
 * @details Update only the caller-driven local scheduling state described above. Queued callables
 * may independently perform their explicitly authorized operation once; cancellation/shutdown
 * cannot undo an external effect.
 *
 * @par C storage and execution contract
 * @param[in,out] executor Caller-owned finite executor; serialize its queue/spin mutations and
 * avoid recursive spin.
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
ROSWASM_C_INLINE void roswasmc_executor_cancel_pending(roswasmc_executor* executor)
{
    size_t n;
    if(!executor || !executor->slots)
    {
        return;
    }
    for(n = 0; n < executor->count; ++n)
    {
        roswasmc_future* f = executor->slots[(executor->head + n) % executor->capacity].future;
        if(f)
        {
            if(f->state == ROSWASMC_FUTURE_PENDING)
            {
                roswasmc_future_cancel(f);
            }
            f->queued = 0;
        }
    }
    executor->head = executor->count = 0;
}

/**
 * @brief Run only tasks present at pass entry, at most once each.
 * Nested spin22 leaves completed unchanged. A task's native errno is stored in
 * its Future and is never retried. completed counts local callable completions,
 * including error completions; it is not successful ROS delivery evidence.
 * C callbacks must return normally; longjmp through borrowed scheduler state is
 * unsupported. A blocked callback group17 leaves the task pending for a later
 * explicit pass without calling its operation.
 *
 * @details Update only the caller-driven local scheduling state described above. Queued callables
 * may independently perform their explicitly authorized operation once; cancellation/shutdown
 * cannot undo an external effect.
 *
 * @par C storage and execution contract
 * @param[in,out] executor Caller-owned finite executor; serialize its queue/spin mutations and
 * avoid recursive spin.
 * @param[out] completed Destination for the number of actually completed local tasks.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
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
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_executor_spin(roswasmc_executor* executor, size_t* completed)
{
    size_t initial, n;
    if(!executor || !completed || !executor->context)
    {
        return UWVM_ROS_INVALID;
    }
    if(executor->spinning)
    {
        return UWVM_ROS_INVALID;
    }
    if(!executor->context->active)
    {
        roswasmc_executor_cancel_pending(executor);
        return UWVM_ROS_REVOKED;
    }
    executor->spinning = 1;
    *completed = executor->last_completions = 0;
    initial = executor->count;
    for(n = 0; n < initial && executor->count; ++n)
    {
        roswasmc_deferred_task task = executor->slots[executor->head];
        uwvm_ros_u32 code;
        if(task.future->state == ROSWASMC_FUTURE_PENDING)
        {
            code = roswasmc_callback_group_enter(task.group);
            if(code)
            {
                executor->spinning = 0;
                return code;
            }
            executor->head = (executor->head + 1) % executor->capacity;
            --executor->count;
            task.future->state = ROSWASMC_FUTURE_RUNNING;
            task.future->error = task.call(task.user);
            task.future->state = ROSWASMC_FUTURE_READY;
            task.future->queued = 0;
            ++executor->last_completions;
            *completed = executor->last_completions;
            if(task.completion)
            {
                roswasmc_future snapshot = *task.future;
                task.completion(task.user, &snapshot);
            }
            roswasmc_callback_group_leave(task.group);
        }
        else
        {
            task.future->queued = 0;
            executor->head = (executor->head + 1) % executor->capacity;
            --executor->count;
        }
        if(!executor->context->active)
        {
            roswasmc_executor_cancel_pending(executor);
            executor->spinning = 0;
            return UWVM_ROS_REVOKED;
        }
    }
    executor->spinning = 0;
    return 0;
}

/**
 * @brief Explicit-time coalescing timer. No clock is ever read by this struct.
 *
 * @details Caller-owned finite timer in one supplied monotonic nanosecond domain. Period/deadline
 * arithmetic is overflow-checked; ticking never sleeps or repeatedly catches up missed periods.
 * Callback/Future borrows retain their documented lifetime.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see roswasmc_timer_init(), roswasmc_timer_tick(), roswasmc_timer_reset()
 * @see @ref roswasmc_c_contracts
 */
typedef struct roswasmc_timer
{
    uwvm_ros_u64 period, due, last;
    roswasmc_deferred_call callback;
    void* user;
    roswasmc_callback_group* group;
    roswasmc_local_context const* context;
    int cancelled, active;
} roswasmc_timer;

/**
 * @brief Configure period and initial caller time; reject0/overflow before mutation.
 *
 * @details Update only the caller-driven local scheduling state described above. Queued callables
 * may independently perform their explicitly authorized operation once; cancellation/shutdown
 * cannot undo an external effect.
 *
 * @par C storage and execution contract
 * @param[in,out] timer Caller-owned timer using the same supplied monotonic nanosecond domain
 * throughout.
 * @param[in] period Nonzero timer period in nanoseconds; overflowing next-deadline arithmetic is
 * rejected.
 * @param[in] now Caller-supplied monotonic nanosecond snapshot; this does not read or grant a Host
 * clock.
 * @param[in] callback Borrowed callable code invoked synchronously under the dispatch rules above;
 * keep its code and user state alive.
 * @param[in,out] user Borrowed callback state; it must outlive all pending tasks and synchronous
 * callbacks.
 * @param[in,out] group Optional local callback-group borrow; this is not an operating-system
 * mutex.
 * @param[in] context Stable borrowed context; its immutable backend and code must outlive every
 * dependent owner.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
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
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_timer_init(roswasmc_timer* timer,
                                                  uwvm_ros_u64 period,
                                                  uwvm_ros_u64 now,
                                                  roswasmc_deferred_call callback,
                                                  void* user,
                                                  roswasmc_callback_group* group,
                                                  roswasmc_local_context const* context)
{
    if(!timer || !period || !callback)
    {
        return UWVM_ROS_INVALID;
    }
    if(period > UWVM_ROS_U64_MAX - now)
    {
        return UWVM_ROS_TOO_LARGE;
    }
    {
        roswasmc_timer next;
        next.period = period;
        next.due = now + period;
        next.last = now;
        next.callback = callback;
        next.user = user;
        next.group = group;
        next.context = context;
        next.cancelled = 0;
        next.active = 0;
        *timer = next;
    }
    return 0;
}

/**
 * @brief Cancel local timer scheduling only; no native alias is revoked.
 *
 * @details Update only the caller-driven local scheduling state described above. Queued callables
 * may independently perform their explicitly authorized operation once; cancellation/shutdown
 * cannot undo an external effect.
 *
 * @par C storage and execution contract
 * @param[in,out] timer Caller-owned timer using the same supplied monotonic nanosecond domain
 * throughout.
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
ROSWASM_C_INLINE void roswasmc_timer_cancel(roswasmc_timer* timer)
{
    if(timer)
    {
        timer->cancelled = 1;
    }
}

/**
 * @brief Restart using caller time, never a clock query or native transition.
 *
 * @details Update only the caller-driven local scheduling state described above. Queued callables
 * may independently perform their explicitly authorized operation once; cancellation/shutdown
 * cannot undo an external effect.
 *
 * @par C storage and execution contract
 * @param[in,out] timer Caller-owned timer using the same supplied monotonic nanosecond domain
 * throughout.
 * @param[in] now Caller-supplied monotonic nanosecond snapshot; this does not read or grant a Host
 * clock.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
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
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_timer_reset(roswasmc_timer* timer, uwvm_ros_u64 now)
{
    if(!timer || !timer->period || !timer->callback)
    {
        return UWVM_ROS_INVALID;
    }
    if(timer->active)
    {
        return UWVM_ROS_CONFLICT;
    }
    if(timer->context && !timer->context->active)
    {
        return UWVM_ROS_REVOKED;
    }
    if(timer->period > UWVM_ROS_U64_MAX - now)
    {
        return UWVM_ROS_TOO_LARGE;
    }
    timer->last = now;
    timer->due = now + timer->period;
    timer->cancelled = 0;
    return 0;
}

/**
 * @brief Tick once at explicit time;11 not due,125 local cancellation/shutdown.
 * Time rollback22, nesting17 and overflow90 perform no callback. Missed periods
 * coalesce into one callback and next due=now+period, never a catch-up busy loop.
 *
 * @details Update only the caller-driven local scheduling state described above. Queued callables
 * may independently perform their explicitly authorized operation once; cancellation/shutdown
 * cannot undo an external effect.
 *
 * @par C storage and execution contract
 * @param[in,out] timer Caller-owned timer using the same supplied monotonic nanosecond domain
 * throughout.
 * @param[in] now Caller-supplied monotonic nanosecond snapshot; this does not read or grant a Host
 * clock.
 * @return Numeric ABI/local error:0 on success. Preserve the documented output/owner state on
 * rejection;95 means unsupported, never a fabricated result.
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
ROSWASM_C_INLINE uwvm_ros_u32 roswasmc_timer_tick(roswasmc_timer* timer, uwvm_ros_u64 now)
{
    uwvm_ros_u32 code;
    if(!timer || !timer->period || !timer->callback)
    {
        return UWVM_ROS_INVALID;
    }
    if(timer->cancelled || (timer->context && !timer->context->active))
    {
        return UWVM_ROS_REVOKED;
    }
    if(timer->active)
    {
        return UWVM_ROS_CONFLICT;
    }
    if(now < timer->last)
    {
        return UWVM_ROS_INVALID;
    }
    timer->last = now;
    if(now < timer->due)
    {
        return UWVM_ROS_AGAIN;
    }
    if(timer->period > UWVM_ROS_U64_MAX - now)
    {
        return UWVM_ROS_TOO_LARGE;
    }
    code = roswasmc_callback_group_enter(timer->group);
    if(code)
    {
        return code;
    }
    timer->due = now + timer->period;
    timer->active = 1;
    code = timer->callback(timer->user);
    timer->active = 0;
    roswasmc_callback_group_leave(timer->group);
    return code;
}
#endif
