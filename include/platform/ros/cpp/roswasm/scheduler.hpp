/** @file
 * @brief Guest-local Context, Future, CallbackGroup and explicit-time Timer.
 *
 * Deferred work runs on a caller-driven Executor. These types create no host
 * thread, event loop, random source or clock grant. Deferring an RPC changes its
 * guest scheduling only: the existing bounded host RPC still executes once and
 * synchronously. A cancellation cannot undo an admitted external side effect.
 */
#pragma once
#include <platform/ros/cpp/roswasm/cpp_profile.hpp>
#if ROSWASM_CPP_STANDARD == 98 || ROSWASM_CPP_STANDARD == 3 || ROSWASM_CPP_STANDARD < 20
# include <platform/ros/cpp/roswasm/detail/portable.hpp>
#else
# include <platform/ros/c/roswasm/roswasmc.h>
# include <functional>
# include <memory>
# include <optional>
# include <type_traits>
# include <utility>
# include <limits>

namespace roswasmcpp
{
    /** @brief Explicit local application context; backend selection confers no rights.
     * @details Shutdown prevents new Context-associated dispatch, notifies no native node,
     * and does not revoke host aliases. Close native owners separately. Context must
     * outlive its associated Node/Executor/Timer. No thread synchronization exists.
     * The modern form is selected in C++20 and newer; older modes use portable.hpp.
     * @see roswasmcpp::Context::shutdown
     */
    class Context
    {
        roswasmc_backend const* backend_;
        bool running_{true};

    public:
        /** @brief Select one immutable backend without opening a resource or reading time.
         * @details Keeps a borrowed pointer; the backend must outlive this Context
         * and all associated owners. Selection creates no native node or Host grant.
         * @param[in] backend Immutable dispatch table with a stable lifetime.
         * @see Context::backend
         */
        explicit Context(roswasmc_backend const& backend) : backend_{&backend}
        {
        }

        /** @brief Reject copying a local dispatch identity.
         * @details Copy construction is deleted; existing associated objects keep
         * their original Context identity and borrowed lifetime.
         * @param[in] other Context that cannot be copied.
         * @see Context::Context(roswasmc_backend const&)
         */
        Context(Context const& other) = delete;
        /** @brief Reject assignment of a local dispatch identity.
         * @details Deleted at compile time to prevent rebinding existing borrowers.
         * @param[in] other Context that cannot replace this identity.
         * @see Context::Context(roswasmc_backend const&)
         */
        Context& operator= (Context const& other) = delete;

        /** @brief Inspect local dispatch state.
         * @details Reads local state only. Callers serialize access with shutdown;
         * there is no atomic/thread synchronization or Host import.
         * @return True until shutdown() is called.
         * @see Context::shutdown
         */
        bool running() const noexcept
        {
            return running_;
        }

        /** @brief Stop local dispatch.
         * @details Idempotently marks this context inactive. It does not close or
         * revoke resources, stop native motion or cancel an already admitted RPC.
         * Associated owners remain explicitly closeable; no Host import occurs.
         * @see Context::running
         */
        void shutdown() noexcept
        {
            running_ = false;
        }

        /** @brief Return the selected dispatch table.
         * @details Borrows the original backend, whose lifetime the caller controls.
         * This query imports nothing and cannot confer native/Guest permissions.
         * @return Original immutable dispatch-table reference.
         * @see Context::Context(roswasmc_backend const&)
         */
        roswasmc_backend const& backend() const noexcept
        {
            return *backend_;
        }
    };

    /** @brief Single-guest-thread callback grouping.
     * @details Tracks nested local entry without a native mutex or worker thread.
     * The caller serializes all access and keeps the group alive while a Timer or
     * Executor borrows it. Modern implementation requires C++20 or newer.
     * @see roswasmcpp::CallbackGroup::enter
     */
    class CallbackGroup
    {
        bool exclusive_;
        size_t active_{};

    public:
        /** @brief Exclusive refuses nested entry; reentrant permits direct nested callbacks.
         * @details Executor itself always refuses recursive spin, independently of
         * this mode. Construction creates no Host import or scheduling authority.
         * @param[in] mutually_exclusive True to refuse nested group entry.
         * @see CallbackGroup::enter
         */
        explicit CallbackGroup(bool mutually_exclusive = true) : exclusive_{mutually_exclusive}
        {
        }

        /** @brief Attempt one local callback-group entry.
         * @details Pair each successful entry with leave(), including on exceptions.
         * No Host import, blocking wait or native thread synchronization occurs.
         * @return False for nested exclusive entry or a saturated size_t counter;
         * true after recording one active entry.
         * @see CallbackGroup::leave
         */
        bool enter() noexcept
        {
            if((exclusive_ && active_) || active_ == std::numeric_limits<size_t>::max())
            {
                return false;
            }
            ++active_;
            return true;
        }

        /** @brief Release one acquired local group entry.
         * @details Decrements a nonzero entry count; a zero count remains zero.
         * Does not release a native mutex or alter any alias grant.
         * @see CallbackGroup::enter
         */
        void leave() noexcept
        {
            if(active_)
            {
                --active_;
            }
        }

        /** @brief Inspect local group activity.
         * @details Reads only the local counter, without a clock or Host operation.
         * @return True when at least one successful entry has not been released.
         * @see CallbackGroup::leave
         */
        bool busy() const noexcept
        {
            return active_ != 0;
        }
    };
    /** @brief Local future phases in the C++20 scheduling API.
     * @details Describes shared Guest-local completion state. Changing this state
     * does not grant authority or revoke a native alias.
     * @see roswasmcpp::Future::state
     */
    enum class FutureState
    {
        /** @brief Queued but not started.
         * @details A caller may still cancel this task before dispatch.
         * @see roswasmcpp::Future::cancel
         */
        pending,
        /** @brief Currently executing on the caller's stack.
         * @details Local cancellation refuses to interrupt this phase.
         * @see roswasmcpp::Future::cancel
         */
        running,
        /** @brief Completed with an inspectable result or operation error.
         * @details Exactly one take consumes the shared completion.
         * @see roswasmcpp::Future::take
         */
        ready,
        /** @brief Locally cancelled before completion.
         * @details Result access returns UWVM_ROS_REVOKED without native cancellation.
         * @see roswasmcpp::Future::cancel
         */
        cancelled,
        /** @brief Completion consumed, or an empty future reported by state().
         * @details A consumed shared completion cannot be taken again through copies.
         * @see roswasmcpp::Future::take
         */
        taken
    };

    /** @brief Owning task completion and actual SDK/RPC code.
     * @details Local C++20 value container; no future, worker or Host request is
     * created by its construction. Nonzero error never denotes successful data.
     * @tparam T Complete owning completion value type.
     * @see roswasmcpp::Future
     */
    template <class T>
    struct DeferredResult
    {
        /** @brief Actual operation error.
         * @details Zero denotes success; this value never causes automatic retry.
         * @see roswasmcpp::Future::take
         */
        uint32_t error{};
        /** @brief Owning completion payload.
         * @details Meaningful as a successful result only when error is zero.
         * @see roswasmcpp::DeferredResult::error
         */
        T value{};
    };

    /** @brief Void task completion with its actual error code.
     * @details C++20 specialization without a fabricated payload. Construction
     * schedules nothing and makes no Host import.
     * @see roswasmcpp::Future::take
     */
    template <>
    struct DeferredResult<void>
    {
        /** @brief Actual void operation status.
         * @details Zero denotes success; nonzero preserves the operation's refusal.
         * @see roswasmcpp::Future::take
         */
        uint32_t error{};
    };

    namespace detail
    {
        /** @brief Value storage for a void completion; no user-visible payload is fabricated. */
        struct Unit
        {
        };
        template <class T>
        using DeferredStorage = std::conditional_t<std::is_void_v<T>, Unit, T>;

        /** @brief Shared local scheduling state; the Executor invokes no host callback. */
        template <class T>
        struct FutureData
        {
            FutureState phase{FutureState::pending};
            uint32_t error{};
            std::optional<DeferredStorage<T>> value;
        };

        /** @brief Ensure callback group entry releases on return or native C++ unwinding. */
        struct GroupLease
        {
            CallbackGroup* group;

            explicit GroupLease(CallbackGroup* value) : group{value}
            {
            }

            ~GroupLease()
            {
                if(group)
                {
                    group->leave();
                }
            }

            GroupLease(GroupLease const&) = delete;
            GroupLease& operator= (GroupLease const&) = delete;
        };

        /** @brief A thrown deferred callable locally cancels an unfinished future.
         * The exception still propagates and may follow an admitted native effect.
         * No-exception Wasm profiles require nonthrowing task/callback functions.
         */
        template <class T>
        struct RunningLease
        {
            std::shared_ptr<FutureData<T>> data;

            ~RunningLease()
            {
                if(data->phase == FutureState::running)
                {
                    data->phase = FutureState::cancelled;
                    data->error = UWVM_ROS_REVOKED;
                }
            }
        };
    }  // namespace detail

    /** @brief Copyable guest-local future; all copies share one result consumption state.
     * @details It never blocks, pumps a loop, reads a clock or performs a native cancellation.
     * Pending result11 and local cancellation125 are distinguishable via state().
     * All copies require caller-serialized access. Modern form requires C++20.
     * @tparam T Owning completion type, or void for status-only work.
     * @see roswasmcpp::Future::take
     */
    template <class T>
    class Future
    {
        std::shared_ptr<detail::FutureData<T>> data_;

        explicit Future(std::shared_ptr<detail::FutureData<T>> data) : data_{std::move(data)}
        {
        }
        friend class Executor;

        uint32_t consume_error()
        {
            if(!data_)
            {
                return UWVM_ROS_INVALID;
            }
            if(data_->phase == FutureState::pending || data_->phase == FutureState::running)
            {
                return UWVM_ROS_AGAIN;
            }
            if(data_->phase == FutureState::cancelled)
            {
                return UWVM_ROS_REVOKED;
            }
            if(data_->phase == FutureState::taken)
            {
                return UWVM_ROS_BAD_HANDLE;
            }
            return data_->error;
        }

    public:
        /** @brief Construct an empty future.
         * @details Allocates no shared state and schedules no work. Result access
         * returns UWVM_ROS_INVALID; state() reports taken for this empty object.
         * @see Future::state
         */
        Future() = default;

        /** @brief Inspect the local shared phase.
         * @details Makes no import and does not progress pending work.
         * @return Current phase, or FutureState::taken for an empty future.
         * @see Future::ready
         */
        FutureState state() const noexcept
        {
            return data_ ? data_->phase : FutureState::taken;
        }

        /** @brief Test whether completion or cancellation can be inspected.
         * @details Does not wait or dispatch work. A taken/empty future is not ready.
         * @return True only in ready or cancelled shared phases.
         * @see Future::state
         */
        bool ready() const noexcept
        {
            return data_ && (data_->phase == FutureState::ready || data_->phase == FutureState::cancelled);
        }

        /** @brief Cancel a pending local task.
         * @details Marks only pending Guest work cancelled; does not revoke aliases,
         * interrupt running work or undo an admitted external side effect.
         * @return Zero on cancellation, UWVM_ROS_INVALID for empty state,
         * UWVM_ROS_CONFLICT while running, or UWVM_ROS_BAD_HANDLE after pending.
         * @see Future::state
         */
        uint32_t cancel() noexcept
        {
            if(!data_)
            {
                return UWVM_ROS_INVALID;
            }
            if(data_->phase == FutureState::running)
            {
                return UWVM_ROS_CONFLICT;
            }
            if(data_->phase != FutureState::pending)
            {
                return UWVM_ROS_BAD_HANDLE;
            }
            data_->phase = FutureState::cancelled;
            data_->error = UWVM_ROS_REVOKED;
            return 0;
        }

        /** @brief Consume one successful owned value, preserving output on every error.
         * @details A failed RPC completion exposes its real code once, with no replay. Taking
         * a value invalidates result access through all copies of this future.
         * No import, blocking wait or executor progress occurs. Moving a successful
         * T follows T's exception policy; no-exception Guests require suitable T.
         * @tparam U Must be exactly the nonvoid completion type T.
         * @param[in,out] output Destination modified only for a successful completion;
         * an exception from T's move assignment follows T's own guarantees.
         * @return Actual completion error; UWVM_ROS_AGAIN if pending/running,
         * UWVM_ROS_REVOKED if cancelled, UWVM_ROS_BAD_HANDLE if consumed, or
         * UWVM_ROS_INVALID for an empty future.
         * @see Future::cancel
         */
        template <class U = T>
            requires (!std::is_void_v<U> && std::is_same_v<U, T>)
        uint32_t take(U& output)
        {
            auto code = consume_error();
            if(!data_ || data_->phase != FutureState::ready)
            {
                return code;
            }
            if(!code)
            {
                output = std::move(*data_->value);
            }
            data_->value.reset();
            data_->phase = FutureState::taken;
            return code;
        }

        /** @brief Consume one void completion.
         * @details Available only for Future<void>. A ready completion transitions
         * all shared copies to taken even when its operation returned an error.
         * No work is run or retried by inspecting it.
         * @return Actual completion code, or the same phase errors as nonvoid take.
         * @see Future::state
         */
        uint32_t take()
            requires std::is_void_v<T>
        {
            auto code = consume_error();
            if(data_ && data_->phase == FutureState::ready)
            {
                data_->value.reset();
                data_->phase = FutureState::taken;
            }
            return code;
        }
    };

    /** @brief Coalescing local timer driven solely by explicit caller nanoseconds.
     * @details Supply now yourself or through a separately granted Clock::now call. There
     * is no default clock, sleep, chrono query, implicit ROS time or timer thread.
     * Each tick executes at most once; missed periods are coalesced without looping.
     * Periods/times are uint64 nanoseconds in one caller-selected nondecreasing
     * time domain. The caller serializes access and owns optional group/context
     * lifetimes. Modern form requires C++20 and creates no implicit clock grant.
     * @see roswasmcpp::Timer::tick
     */
    class Timer
    {
        uint64_t period_{}, due_{}, last_{};
        std::function<void()> callback_;
        CallbackGroup* group_{};
        Context* context_{};
        uint32_t error_{};
        bool cancelled_{}, active_{};

    public:
        /** @brief Schedule from an explicit initial time.
         * @details Copies/moves the callable into this timer; borrows optional group
         * and context for their longer lifetimes. Reads no clock or Host endpoint.
         * Invalid setup is stored in error(); construction does not invoke callback.
         * @param[in] period Positive nanoseconds between coalesced invocations.
         * @param[in] initial_now Initial nanoseconds in the chosen time domain;
         * period + initial_now must fit uint64_t.
         * @param[in] callback Nonempty callable executed synchronously by tick.
         * It must not throw in an exception-disabled Guest.
         * @param[in] group Optional borrowed local callback group, or null.
         * @param[in] context Optional borrowed Context, or null for no context gate.
         * @see Timer::error
         */
        Timer(uint64_t period, uint64_t initial_now, std::function<void()> callback, CallbackGroup* group = nullptr, Context* context = nullptr) :
            period_{period}, last_{initial_now}, callback_{std::move(callback)}, group_{group}, context_{context}
        {
            if(!period_ || !callback_)
            {
                error_ = UWVM_ROS_INVALID;
            }
            else if(period_ > std::numeric_limits<uint64_t>::max() - initial_now)
            {
                error_ = UWVM_ROS_TOO_LARGE;
            }
            else
            {
                due_ = initial_now + period_;
            }
        }

        /** @brief Inspect the stored timer setup status.
         * @details Reads local state only; reset() clears a prior setup error only
         * after fully validating its new schedule.
         * @return Zero, UWVM_ROS_INVALID for zero period/empty callable, or
         * UWVM_ROS_TOO_LARGE for an overflowing initial deadline.
         * @see Timer::reset
         */
        uint32_t error() const noexcept
        {
            return error_;
        }

        /** @brief Cancel this local timer.
         * @details Sets its cancellation flag without interrupting an active callback,
         * closing a resource or changing native state. reset() explicitly re-enables it.
         * @see Timer::reset
         */
        void cancel() noexcept
        {
            cancelled_ = true;
        }

        /** @brief Inspect the local cancellation flag.
         * @details Does not read time or report Context shutdown as this flag.
         * @return True after cancel(), until a successful reset().
         * @see Timer::cancel
         */
        bool cancelled() const noexcept
        {
            return cancelled_;
        }

        /** @brief Return the configured nanosecond period.
         * @details Does not query a clock or modify the schedule. Zero denotes
         * invalid construction and remains invalid on reset().
         * @return Original period in nanoseconds.
         * @see Timer::error
         */
        uint64_t period() const noexcept
        {
            return period_;
        }

        /** @brief Inspect the next scheduled nanosecond deadline.
         * @details Uses the same time domain as caller-supplied times. Interpret
         * the value only after successful setup/reset; it reads no clock.
         * @return Stored next deadline in nanoseconds.
         * @see Timer::tick
         */
        uint64_t next_deadline() const noexcept
        {
            return due_;
        }

        /** @brief Explicitly restart from caller time, without querying any clock.
         * @details Reject restart during a callback17 or after Context shutdown125. An
         * overflow/malformed callback leaves prior timer state unchanged.
         * @param[in] now New initial nanoseconds in the caller's chosen time domain.
         * @return Zero, UWVM_ROS_CONFLICT while active, UWVM_ROS_REVOKED after
         * context shutdown, UWVM_ROS_INVALID for invalid period/callback, or
         * UWVM_ROS_TOO_LARGE for next-deadline overflow.
         * @see Timer::cancel
         */
        uint32_t reset(uint64_t now)
        {
            if(active_)
            {
                return UWVM_ROS_CONFLICT;
            }
            if(context_ && !context_->running())
            {
                return UWVM_ROS_REVOKED;
            }
            if(!period_ || !callback_)
            {
                return UWVM_ROS_INVALID;
            }
            if(period_ > std::numeric_limits<uint64_t>::max() - now)
            {
                return UWVM_ROS_TOO_LARGE;
            }
            last_ = now;
            due_ = now + period_;
            cancelled_ = false;
            error_ = 0;
            return 0;
        }

        /** @brief Tick at most once.11 means not due,125 local cancellation/shutdown.
         * @details Backwards time22 and next-deadline overflow90 perform no callback. A nested
         * tick returns17. The next due time commits before callback execution, and
         * local group/busy borrows release on normal return or exception unwinding.
         * now becomes the last observed time even when not due or group entry fails.
         * @param[in] now Nondecreasing nanoseconds in the construction time domain.
         * @return Zero after one callback; UWVM_ROS_AGAIN before due,
         * UWVM_ROS_REVOKED on cancellation/shutdown, UWVM_ROS_CONFLICT on nested
         * dispatch/group refusal, UWVM_ROS_INVALID on backwards time, or
         * UWVM_ROS_TOO_LARGE on deadline overflow. Callback exceptions propagate
         * in exception-enabled builds; callbacks must not throw otherwise.
         * @see Timer::reset
         */
        uint32_t tick(uint64_t now)
        {
            if(error_)
            {
                return error_;
            }
            if(cancelled_ || (context_ && !context_->running()))
            {
                return UWVM_ROS_REVOKED;
            }
            if(active_)
            {
                return UWVM_ROS_CONFLICT;
            }
            if(now < last_)
            {
                return UWVM_ROS_INVALID;
            }
            last_ = now;
            if(now < due_)
            {
                return UWVM_ROS_AGAIN;
            }
            if(period_ > std::numeric_limits<uint64_t>::max() - now)
            {
                return UWVM_ROS_TOO_LARGE;
            }
            if(group_ && !group_->enter())
            {
                return UWVM_ROS_CONFLICT;
            }
            detail::GroupLease lease{group_};

            struct BusyLease
            {
                bool& active;

                ~BusyLease()
                {
                    active = false;
                }
            } busy{active_};

            active_ = true;
            due_ = now + period_;
            callback_();
            return 0;
        }
    };
}  // namespace roswasmcpp
#endif  // selected portable/modern scheduler
