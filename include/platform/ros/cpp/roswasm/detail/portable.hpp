/** @file
 * @brief Stationary C++98/03 and movable C++11/14/17 capability facades.
 * @details Owners are noncopyable; use named objects/output factories in legacy
 * modes. Explicit move operations require C++11 or newer. Handles stay within
 * one guest instance and copy stable C context metadata while borrowing its
 * backend table. All operations are caller-driven: no background thread,
 * implicit authority grant or automatic request replay is introduced. Serialize
 * access to an owner and its callbacks; callbacks must preserve borrowed state
 * lifetimes and obey the selected exception profile. Local validation uses
 * numeric ABI errors; allocation failures follow standard-library policy.
 * @see roswasmcpp::Node
 * @see roswasmcpp::Capability
 */
#pragma once
#include <platform/ros/cpp/roswasm/detail/portable_values.hpp>
#include <platform/ros/c/roswasm/node.h>
#include <platform/ros/c/roswasm/action_bundle.h>
#include <platform/ros/c/roswasm/events.h>
#include <platform/ros/c/roswasm/executor.h>
#include <limits>
#if !ROSWASM_CPP_LEGACY
# include <functional>
# include <memory>
# include <utility>
#endif
namespace roswasmcpp
{
    /** @brief Caller-owned local dispatch identity for C++98 through C++17.
     * @details Holds a borrowed immutable backend and an inline active-state gate.
     * Keep this object and backend alive while Node, Executor or Timer borrows them.
     * No native node, clock, worker or Host grant is created. Access is single-thread
     * caller-serialized; shutdown does not close resources or stop native motion.
     * @see roswasmcpp::Context::shutdown
     */
    class Context
    {
        roswasmc_backend const* backend_;
        roswasmc_local_context local_;
        Context(Context const&);
        Context& operator= (Context const&);

    public:
        /** @brief Initialize an active local dispatch context.
         * @details Borrows backend for the complete Context/borrower lifetime.
         * Initialization makes no Host call or allocation.
         * @param[in] backend Immutable dispatch table with a stable lifetime.
         * @see Context::backend
         */
        explicit Context(roswasmc_backend const& backend) : backend_(&backend)
        {
            roswasmc_local_context_init(&local_);
        }

        /** @brief Borrow the originally selected backend.
         * @details Returns metadata only and does not confer its operation rights.
         * @return Immutable dispatch table, valid for its caller-managed lifetime.
         * @see Context::Context
         */
        roswasmc_backend const& backend() const
        {
            return *backend_;
        }

        /** @brief Inspect the local dispatch gate.
         * @details Reads inline state without Host imports or atomic synchronization.
         * @return True until shutdown() deactivates this context.
         * @see Context::shutdown
         */
        bool running() const
        {
            return local_.active != 0;
        }

        /** @brief Inspect the same local gate as running().
         * @details Convenience spelling; this is not a native ROS health probe.
         * @return The result of running().
         * @see Context::running
         */
        bool ok() const
        {
            return running();
        }

        /** @brief Deactivate subsequent Context-associated dispatch.
         * @details Idempotently marks local state inactive. Owners still require
         * explicit close/revoke; admitted native effects are not undone.
         * @see Context::running
         */
        void shutdown()
        {
            roswasmc_local_context_shutdown(&local_);
        }

        /** @brief Borrow the inline C dispatch-gate representation.
         * @details Used by the shared C executor; the pointer becomes invalid when
         * this stationary Context is destroyed. It grants no backend authority.
         * @return Address of the inline immutable-to-the-borrower local gate.
         * @see roswasmc_local_context_shutdown
         */
        roswasmc_local_context const* local() const
        {
            return &local_;
        }
    };

    /** @brief Single local owner of an explicitly granted host alias.
     * @details Stores one handle and a stable copy of context metadata. The backend
     * dispatch table must outlive the owner. Opening an alias never broadens its
     * host type, endpoint, operation, quota or policy grant. C++98/03 owners cannot
     * move; modern moves transfer the handle and empty the source. Serialize use.
     * @see Capability::close
     */
    class Capability
    {
        roswasmc_context context_;
        roswasmc_capability cap_;
        uint32_t error_;
        roswasmc_context const* identity_;
        Capability(Capability const&);
        Capability& operator= (Capability const&);
        friend class EventStream;
        friend class ServiceAvailability;

    public:
        /** @brief Construct an empty capability owner without a host call.
         * @details Zero handle is not open; error() initially returns zero, so use
         * is_open() when checking whether an acquisition occurred.
         * @see Capability::is_open
         */
        Capability() : context_(), cap_(), error_(0), identity_(0)
        {
            roswasmc_capability_init(&cap_, &context_);
        }

        /** @brief Attempt one acquisition of a configured host alias.
         * @details Copies context metadata and retains no alias String view. Inspect
         * error() before using the handle; the backend must outlive this owner.
         * @param[in] context Selected backend context with a live dispatch table.
         * @param[in] alias Borrowed exact alias bytes for the open call.
         * @see Capability::open
         */
        Capability(roswasmc_context const& context, StringView alias) : context_(), cap_(), error_(0), identity_(0)
        {
            roswasmc_capability_init(&cap_, &context_);
            open(context, alias);
        }

        /** @brief Acquire an alias only after local operation/bound validation.
         * @details A failed precheck prevents the open import; it cannot establish
         * host permission. Stores the resulting acquisition error.
         * @param[in] context Backend context whose dispatch table outlives the owner.
         * @param[in] alias Borrowed exact alias bytes for this call.
         * @param[in] operation Required request operation supported by the backend.
         * @param[in] valid Caller-computed validity predicate, default true.
         * @param[in] maximum Maximum payload bytes, 0..4193786, default 4193786.
         * @see Capability::open_for
         */
        Capability(roswasmc_context const& context, StringView alias, roswasmc_operation operation, bool valid = true, size_t maximum = 4193786u) :
            context_(), cap_(), error_(0), identity_(0)
        {
            roswasmc_capability_init(&cap_, &context_);
            open_for(context, alias, operation, valid, maximum);
        }
#if !ROSWASM_CPP_LEGACY
        /** @brief Transfer a capability owner in C++11 and newer modes.
         * @details Retargets the C owner to this object's inline context and clears
         * the source handle. No host import runs; moving an actively borrowed
         * resource requires its users to stop using the old owner first.
         * @param[in,out] other Owner to consume, left with handle zero.
         * @see Capability::replace_checked
         */
        Capability(Capability&& other) noexcept : context_(other.context_), cap_(other.cap_), error_(other.error_), identity_(other.identity_)
        {
            cap_.context = &context_;
            other.cap_.handle = 0;
        }

        /** @brief Replace this owner by a modern move, discarding cleanup status.
         * @details Calls replace_checked; use that method when the prior handle's
         * close result matters. Self-assignment is a no-op.
         * @param[in,out] other Owner to consume unless it is this object.
         * @return Reference to this destination owner.
         * @see Capability::replace_checked
         */
        Capability& operator= (Capability&& other) noexcept
        {
            replace_checked(std::move(other));
            return *this;
        }

        /** @brief Move-replace this owner while reporting the prior close status.
         * @details Attempts one close of an open destination, then transfers other
         * regardless of that result. A backend lacking close can retain the old
         * local handle at the C layer, but this replacement still overwrites it;
         * callers needing recovery must close explicitly before replacement.
         * @param[in,out] other Owner consumed and left with handle zero.
         * @return Prior close error, or zero for no prior handle/self-assignment.
         * @see Capability::close
         */
        uint32_t replace_checked(Capability&& other) noexcept
        {
            if(this == &other)
            {
                return 0;
            }
            uint32_t code = is_open() ? close() : 0;
            context_ = other.context_;
            cap_ = other.cap_;
            cap_.context = &context_;
            error_ = other.error_;
            identity_ = other.identity_;
            other.cap_.handle = 0;
            return code;
        }
#endif
        /** @brief Attempt one close if this owner still has a handle.
         * @details Discards cleanup status and performs no retries. Use close()
         * before destruction when the result must be retained.
         * @see Capability::close
         */
        ~Capability()
        {
            if(is_open())
            {
                roswasmc_close(&cap_);
            }
        }

        /** @brief Acquire one alias into an empty owner after a caller precheck.
         * @details An already-open owner returns CONFLICT. Nonzero validation is
         * recorded without importing open; otherwise the C alias/ABI checks and
         * host policy apply. Copies context metadata, borrowing its backend table.
         * @param[in] context Selected live backend context.
         * @param[in] alias Borrowed exact alias bytes for this call only.
         * @param[in] validation Caller error code to short-circuit, default zero.
         * @return Zero on acquisition, otherwise the local/host numeric error.
         * @see roswasmc_open
         */
        uint32_t open(roswasmc_context const& context, StringView alias, uint32_t validation = 0)
        {
            if(is_open())
            {
                return UWVM_ROS_CONFLICT;
            }
            context_ = context;
            identity_ = &context;
            cap_.context = &context_;
            error_ = validation ? validation : roswasmc_open(&cap_, alias.data(), alias.size());
            return error_;
        }

        /** @brief Check a request operation and byte bound before alias acquisition.
         * @details Invalid predicate yields INVALID; excess maximum yields TOO_LARGE.
         * A supported operation still needs an independently granted host alias.
         * @param[in] context Backend context with a table that outlives this owner.
         * @param[in] alias Borrowed exact alias bytes for this call.
         * @param[in] op Required canonical request operation.
         * @param[in] valid Caller validity predicate, default true.
         * @param[in] maximum Byte bound in 0..4193786, default 4193786.
         * @return Zero on acquisition or the first precheck/open error.
         * @see roswasmc_check_operation
         */
        uint32_t open_for(roswasmc_context const& context, StringView alias, roswasmc_operation op, bool valid = true, size_t maximum = 4193786u)
        {
            return open(context,
                        alias,
                        !valid               ? static_cast<uint32_t>(UWVM_ROS_INVALID)
                        : maximum > 4193786u ? static_cast<uint32_t>(UWVM_ROS_TOO_LARGE)
                                             : roswasmc_check_operation(&context, op));
        }

        /** @brief Read the recorded acquisition/precheck error.
         * @details Does not query handle liveness or replace a later operation's
         * result. A default-constructed empty owner also reports zero.
         * @return Last stored open error.
         * @see Capability::is_open
         */
        uint32_t error() const
        {
            return error_;
        }

        /** @brief Inspect whether a nonzero local handle is retained.
         * @details Does not probe host-side expiry or revocation.
         * @return True for a nonzero local handle.
         * @see Capability::handle
         */
        bool is_open() const
        {
            return cap_.handle != 0;
        }

        /** @brief Inspect the owned numeric handle without transferring it.
         * @details Zero means locally empty; copying bits cannot duplicate ownership
         * or confer rights to another instance.
         * @return Current handle value.
         * @see Capability::is_open
         */
        uint64_t handle() const
        {
            return cap_.handle;
        }

        /** @brief Attempt one close and retire the local handle after an import.
         * @details BAD_HANDLE/UNSUPPORTED local rejection retains the C owner. Once
         * an actual close callback runs the handle is zeroed even on transport error.
         * @return Zero or the exact C/local/host cleanup error; no hidden retry.
         * @see roswasmc_close
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /** @brief Revoke the alias using this owned handle.
         * @details Requires host revocation permission. An actual revoke attempt
         * clears the local handle; a missing callback returns UNSUPPORTED and
         * retains it so ordinary close can still be attempted.
         * @return Exact C/local/host status, without implicit reopening.
         * @see roswasmc_revoke
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }

        /** @brief Publish one complete canonical payload through this alias.
         * @details Returns a stored open error first. Payload type, length and
         * permission are enforced by the selected host topic alias; no encoding
         * or retry is performed here.
         * @param[in] bytes Borrowed complete payload for this synchronous call.
         * @return Zero on publication or the exact local/host numeric error.
         * @see roswasmc_publish
         */
        uint32_t publish_bytes(ByteView bytes) const
        {
            return error_ ? error_ : roswasmc_publish(&cap_, bytes.data(), bytes.size());
        }

        /** @brief Activate a topic subscription on an owned alias.
         * @details Requires a host topic.subscribe grant and backend callback.
         * Returns a stored open error before making the single subscribe call.
         * @return Exact local/host status; zero does not imply a queued message.
         * @see roswasmc_subscribe
         */
        uint32_t subscribe() const
        {
            return error_ ? error_ : roswasmc_subscribe(&cap_);
        }

        /** @brief Advertise an owned service-server alias once.
         * @details Requires the corresponding host server grant; no callback or
         * native thread is installed by this raw owner method.
         * @return Recorded acquisition error or the exact advertise status.
         * @see roswasmc_service_advertise
         */
        uint32_t advertise_service() const
        {
            return error_ ? error_ : roswasmc_service_advertise(&cap_);
        }

        /** @brief Subscribe the owner to its granted parameter-event stream.
         * @details Endpoint, node/name visibility and quotas remain host policy.
         * No events are polled and no callback runs in this activation call.
         * @return Recorded acquisition error or the exact host/local status.
         * @see roswasmc_parameter_subscribe_events
         */
        uint32_t subscribe_parameter_events() const
        {
            return error_ ? error_ : roswasmc_parameter_subscribe_events(&cap_);
        }

        /** @brief Attempt one bounded poll into caller-owned bytes.
         * @details Never resizes or retries. Interpret output/required byte count
         * only according to the returned error and has_length flag.
         * @param[out] output Writable storage for size bytes, null only at size zero.
         * @param[in] size Output capacity in bytes, subject to C/host bounds.
         * @return Complete C result; recorded open failures have no valid length.
         * @see roswasmc_poll
         */
        Result poll(void* output, size_t size) const
        {
            return error_ ? detail::failure(error_) : roswasmc_poll(&cap_, output, size);
        }

        /** @brief Issue one explicit operation using complete canonical input.
         * @details Host policy binds operation/role/type and may refuse it. The
         * operation may consume input or mutate state before an output-size error;
         * this method never replays it automatically.
         * @param[in] op Selected canonical request operation.
         * @param[in] input Borrowed complete operation input for this call.
         * @param[out] output Writable storage for size bytes; obey C nonoverlap rules.
         * @param[in] size Available output bytes, null output only at zero capacity.
         * @return Exact C result with explicit required-length validity.
         * @see roswasmc_request
         */
        Result request(roswasmc_operation op, ByteView input, void* output, size_t size) const
        {
            return error_ ? detail::failure(error_) : roswasmc_request(&cap_, op, input.data(), input.size(), output, size);
        }

        /** @brief Encode and submit one UTF-8 log message through the alias.
         * @details Copies/validates scalar text, then uses the C log callback. This
         * method does not consult cached error_ before logging; current handle and
         * host log/severity rights still govern the operation.
         * @param[in] value Borrowed UTF-8 content, up to 4193782 bytes; nonempty
         * storage must be live. Embedded NULs follow the scalar String contract.
         * @return INVALID on encoding failure or the exact C log status.
         * @see roswasmc_log
         */
        uint32_t log(StringView value) const
        {
            msg::String message;
            message.data = value.size() ? std::string(value.data(), value.size()) : std::string();
            wire::bytes bytes;
            if(!Codec<msg::String>::encode(message, bytes))
            {
                return UWVM_ROS_INVALID;
            }
            return roswasmc_log(&cap_, reinterpret_cast<char const*>(buffer_data(bytes)), bytes.size());
        }
    };

    namespace detail
    {
        struct PollLease
        {
            bool& busy;

            explicit PollLease(bool& value) : busy(value)
            {
                busy = true;
            }

            ~PollLease()
            {
                busy = false;
            }

        private:
            PollLease(PollLease const&);
            PollLease& operator= (PollLease const&);
        };

        inline uint32_t cleanup(Capability& owner, roswasmc_cleanup_report& report, bool revoke = false)
        {
            if(!owner.is_open())
            {
                return 0;
            }
            uint32_t code = revoke ? owner.revoke() : owner.close();
            ++report.attempted;
            if(code)
            {
                ++report.failed;
                if(!report.cleanup_error)
                {
                    report.cleanup_error = code;
                }
            }
            return code;
        }
    }  // namespace detail

    /** @brief Bounded stationary storage for individually owned capabilities.
     * @details Allocates stable slots once. Successful opens consume slots until
     * Session::close resets the count; closing an individual capability does not
     * reclaim its slot. A borrowed Context can stop new opens while existing
     * handles remain closeable. Keep the backend/Context alive and serialize use.
     * @see Session::OpenResult
     */
    class Session
    {
        roswasmc_context context_;
        Capability* owners_;
        size_t capacity_, size_;
        Context const* lifecycle_;
        uint32_t error_;
        Session(Session const&);
        Session& operator= (Session const&);

    public:
        /** @brief Acquisition status and a borrowed stable slot pointer.
         * @details Failure returns owner null. A successful pointer never transfers
         * slot ownership; its storage belongs to the stationary Session.
         * @see Session::open
         */
        struct OpenResult
        {
            /** @brief Exact local or host acquisition status.
             * @details Zero accompanies a valid owner pointer on successful open.
             * @see OpenResult::owner
             */
            uint32_t error;
            /** @brief Borrowed successful slot, or null on failure.
             * @details Session destruction invalidates this pointer; session/slot
             * cleanup can retire its handle earlier.
             * @see OpenResult::error
             */
            Capability* owner;
        };

        /** @brief Allocate a bounded slot session for an explicit backend.
         * @details No alias is opened during construction. A maximum above 1048576
         * records TOO_LARGE and allocates no slots; zero is a valid empty session.
         * @param[in] backend Dispatch table borrowed for the Session/owner lifetime.
         * @param[in] maximum Slot count in 0..1048576, not a byte count.
         * @see Session::open
         */
        Session(roswasmc_backend const& backend, size_t maximum) :
            context_(), owners_(0), capacity_(maximum <= 1048576u ? maximum : 0), size_(0), lifecycle_(0), error_(maximum > 1048576u ? UWVM_ROS_TOO_LARGE : 0)
        {
            context_.backend = &backend;
            if(capacity_)
            {
                owners_ = new Capability[capacity_];
            }
        }

        /** @brief Allocate slots associated with a borrowed local Context gate.
         * @details Checks Context running state on later opens, while preserving
         * independent cleanup of handles acquired before shutdown.
         * @param[in] context Stationary Context that outlives this Session.
         * @param[in] maximum Slot count in 0..1048576; excess records TOO_LARGE.
         * @see Session::check_abi
         */
        Session(Context const& context, size_t maximum) :
            context_(), owners_(0), capacity_(maximum <= 1048576u ? maximum : 0), size_(0), lifecycle_(&context),
            error_(maximum > 1048576u ? UWVM_ROS_TOO_LARGE : 0)
        {
            context_.backend = &context.backend();
            if(capacity_)
            {
                owners_ = new Capability[capacity_];
            }
        }

        /** @brief Close acquired slots and destroy their fixed storage.
         * @details Discards cleanup status. Each remaining Capability destructor
         * can still attempt close if a local unsupported callback retained its
         * handle; no successful cleanup is inferred from destruction alone.
         * @see Session::close
         */
        ~Session()
        {
            close();
            delete[] owners_;
        }

        /** @brief Borrow this Session's stable C context metadata.
         * @details The reference lasts until Session destruction; its backend table
         * remains externally owned and must also stay alive.
         * @return Immutable inline context reference, with no authority transfer.
         * @see Session::Session
         */
        roswasmc_context const& context() const
        {
            return context_;
        }

        /** @brief Count successful slot acquisitions since the last session close.
         * @details Includes slots whose individual handle was subsequently closed.
         * @return Number of consumed stable slots, at most the construction bound.
         * @see Session::open
         */
        size_t size() const
        {
            return size_;
        }

        /** @brief Check the local lifecycle gate and exact backend ABI v1.
         * @details Calls only the backend ABI-version callback; it does not open an
         * alias or prove operation-specific support/permission.
         * @return REVOKED for a stopped Context, UNSUPPORTED for absent/non-v1 ABI,
         * otherwise zero.
         * @see Session::open_for
         */
        uint32_t check_abi() const
        {
            return lifecycle_ && !lifecycle_->running()                                     ? UWVM_ROS_REVOKED
                   : !context_.backend->abi_version || context_.backend->abi_version() != 1 ? UWVM_ROS_UNSUPPORTED
                                                                                            : 0;
        }

        /** @brief Acquire one alias into the next unused stable slot.
         * @details Refuses a stopped Context or exhausted capacity before import.
         * Only a successful open increments size(); no failed slot pointer escapes.
         * @param[in] alias Borrowed exact host alias bytes for this call.
         * @return Status and a borrowed Capability pointer, null on failure.
         * @see Session::OpenResult
         */
        OpenResult open(StringView alias)
        {
            OpenResult out = {error_, 0};
            if(!out.error && lifecycle_ && !lifecycle_->running())
            {
                out.error = UWVM_ROS_REVOKED;
            }
            if(!out.error && size_ >= capacity_)
            {
                out.error = UWVM_ROS_TOO_LARGE;
            }
            if(out.error)
            {
                return out;
            }
            out.error = owners_[size_].open(context_, alias);
            if(!out.error)
            {
                out.owner = &owners_[size_++];
            }
            return out;
        }

        /** @brief Check operation support before consuming an alias slot.
         * @details Uses the same capacity/lifecycle rules as open after a successful
         * C operation check; support never implies host alias permission.
         * @param[in] alias Borrowed exact alias bytes for this call.
         * @param[in] op Required canonical request operation.
         * @return Status and borrowed slot pointer, null on failure.
         * @see roswasmc_check_operation
         */
        OpenResult open_for(StringView alias, roswasmc_operation op)
        {
            uint32_t code = roswasmc_check_operation(&context_, op);
            if(code)
            {
                OpenResult out = {code, 0};
                return out;
            }
            return open(alias);
        }

        /** @brief Attempt reverse-order cleanup and reset the consumed-slot count.
         * @details Retains primary and cleanup errors separately. A supplied status
         * array smaller than size() yields INVALID without cleanup. After attempts,
         * size resets even if a local unsupported callback retained a slot handle;
         * inspect failures before trying to reuse the Session.
         * @param[out] statuses Optional per-slot status array in acquisition order.
         * @param[in] status_count Writable elements in statuses; ignored when null.
         * @param[in] primary Existing primary error preserved in the report.
         * @return Complete attempted/failed counts and primary/cleanup statuses.
         * @see roswasmc_cleanup_report
         */
        roswasmc_cleanup_report close(uint32_t* statuses = 0, size_t status_count = 0, uint32_t primary = 0)
        {
            roswasmc_cleanup_report r = roswasmc_cleanup_init(primary);
            if(statuses && status_count < size_)
            {
                r.cleanup_error = UWVM_ROS_INVALID;
                return r;
            }
            for(size_t n = size_; n; --n)
            {
                uint32_t code = detail::cleanup(owners_[n - 1], r);
                if(statuses)
                {
                    statuses[n - 1] = code;
                }
            }
            size_ = 0;
            return r;
        }
    };

    /** @brief Typed topic publisher backed by one capability owner.
     * @details Encodes each complete Message before publication. The host alias
     * determines the trusted topic/type, bounds and permission. No queue, callback
     * thread or retry is added. Backend lifetime follows Capability.
     * @tparam Message Owning type with a complete Codec specialization.
     * @see roswasmcpp::Codec
     */
    template <class Message>
    class Publisher
    {
        Capability owner_;

    public:
        /** @brief Construct an empty publisher without acquiring a handle.
         * @details error() is initially zero; is_open() distinguishes an empty owner.
         * @see Publisher::open
         */
        Publisher()
        {
        }

        /** @brief Attempt one explicitly granted publisher alias acquisition.
         * @details Validates the publish callback before opening. Inspect error()
         * before publishing; alias text is borrowed only for construction.
         * @param[in] context Backend context whose dispatch table outlives this owner.
         * @param[in] alias Exact topic.publish alias name.
         * @see Publisher::open
         */
        Publisher(roswasmc_context const& context, StringView alias)
        {
            open(context, alias);
        }

        /** @brief Open an empty publisher after checking backend publication support.
         * @details Missing backend/callback fails locally; an open owner conflicts.
         * Actual alias/type/endpoint permission is still enforced by the host.
         * @param[in] context Live backend context for this capability.
         * @param[in] alias Borrowed exact topic.publish alias name.
         * @return Exact local/precheck/host open status.
         * @see Capability::open
         */
        uint32_t open(roswasmc_context const& context, StringView alias)
        {
            return owner_.open(context, alias, !context.backend ? UWVM_ROS_INVALID : !context.backend->publish ? UWVM_ROS_UNSUPPORTED : 0);
        }

        /** @brief Inspect the publisher's recorded acquisition status.
         * @details Does not include later publish/close errors or probe host liveness.
         * @return Stored Capability open error.
         * @see Publisher::is_open
         */
        uint32_t error() const
        {
            return owner_.error();
        }

        /** @brief Attempt one close of the publisher's handle.
         * @details Uses Capability's single-attempt retirement and unsupported rules.
         * @return Exact cleanup status, without retries.
         * @see Capability::close
         */
        uint32_t close()
        {
            return owner_.close();
        }

        /** @brief Inspect the publisher handle without transferring ownership.
         * @details Zero means locally empty; this is not a host liveness query.
         * @return Current capability handle bits.
         * @see Publisher::is_open
         */
        uint64_t handle() const
        {
            return owner_.handle();
        }

        /** @brief Inspect whether the publisher retains a local handle.
         * @details Host-side revocation/expiry can still cause a later call to fail.
         * @return True for a nonzero local capability handle.
         * @see Publisher::handle
         */
        bool is_open() const
        {
            return owner_.is_open();
        }

        /** @brief Encode and publish one complete typed message exactly once.
         * @details Returns the stored open error first. A codec failure returns
         * INVALID without publication; the host independently enforces topic/type
         * authority and semantic bounds on successfully encoded bytes.
         * @param[in] value Owning message read only during this synchronous call.
         * @return Zero on publication or the exact local/host error.
         * @see roswasmcpp::Codec
         */
        uint32_t publish(Message const& value) const
        {
            if(error())
            {
                return error();
            }
            wire::bytes bytes;
            if(!Codec<Message>::encode(value, bytes))
            {
                return UWVM_ROS_INVALID;
            }
            return owner_.publish_bytes(bytes);
        }
    };

    /** @brief Typed topic/parameter-event subscription with bounded receive storage.
     * @details Opens and activates one host-granted alias. Each take/poll_once
     * performs at most one poll; no output-size retry or background dispatch occurs.
     * Callback message references last only for that invocation. Serialize owner
     * access and do not move/destroy it during a callback. Callback replacement
     * affects later dispatch, while the active callback uses its captured snapshot.
     * @tparam Message Complete owning type with a Codec specialization.
     * @see Subscription::take
     */
    template <class Message>
    class Subscription
    {
        wire::bytes buffer_;
        Capability owner_;
        uint32_t error_, rollback_;
        bool busy_;
#if ROSWASM_CPP_LEGACY
        typedef void (*Callback)(void*, Message const&);
        Callback callback_;
        void* user_;
#else
        typedef std::function<void(Message const&)> Callback;
        std::shared_ptr<Callback> callback_;
#endif
        Subscription(Subscription const&);
        Subscription& operator= (Subscription const&);

    public:
        /** @brief Construct an unopened subscription reporting BAD_HANDLE.
         * @details Allocates no receive buffer and installs no callback or host state.
         * @see Subscription::open
         */
        Subscription() :
            error_(UWVM_ROS_BAD_HANDLE), rollback_(0), busy_(false), callback_()
#if ROSWASM_CPP_LEGACY
            ,
            user_(0)
#endif
        {
        }
        /** @brief Allocate receive storage and attempt alias subscription.
         * @details Constructor calls open; inspect error() and rollback_error().
         * The backend table must outlive the owner; alias text is not retained.
         * @param[in] context Selected backend context.
         * @param[in] alias Exact granted topic/event alias, borrowed for the call.
         * @param[in] capacity Receive capacity in bytes, 0..4193786.
         * @param[in] parameter_events Select parameter events instead of topic
         * subscription; default false.
         * @see Subscription::open
         */
        Subscription(roswasmc_context const& context, StringView alias, size_t capacity, bool parameter_events = false) :
            error_(0), rollback_(0), busy_(false), callback_()
#if ROSWASM_CPP_LEGACY
            ,
            user_(0)
#endif
        {
            open(context, alias, capacity, parameter_events);
        }
#if !ROSWASM_CPP_LEGACY
        /** @brief Move receive storage, callback and handle in C++11 and newer.
         * @details Source loses the handle; destination starts outside dispatch.
         * Neither owner may be moved while a callback is active or borrowed by an
         * executor that still points to the source object.
         * @param[in,out] other Idle subscription to consume.
         * @see roswasmcpp::Capability::Capability
         */
        Subscription(Subscription&& other) noexcept :
            buffer_(std::move(other.buffer_)),
            owner_(std::move(other.owner_)),
            error_(other.error_),
            rollback_(other.rollback_),
            busy_(false),
            callback_(std::move(other.callback_))
        {
        }
#endif
        /** @brief Activate an empty subscription with bounded owning storage.
         * @details Validates capacity and poll/subscribe support, opens once, then
         * activates the selected stream. Activation failure closes an acquired
         * handle once and retains the separate rollback status. Busy/open owners
         * return CONFLICT without replacement. No callback is installed here.
         * @param[in] context Backend context with a dispatch table of owner lifetime.
         * @param[in] alias Exact granted alias, borrowed for this call.
         * @param[in] capacity Receive capacity in bytes, 0..4193786.
         * @param[in] events True for parameter events, false for topics by default.
         * @return Primary local/acquisition/activation status.
         * @see Subscription::rollback_error
         */
        uint32_t open(roswasmc_context const& context, StringView alias, size_t capacity, bool events = false)
        {
            if(busy_ || owner_.is_open())
            {
                return UWVM_ROS_CONFLICT;
            }
            error_ = capacity > 4193786u                                                                                               ? UWVM_ROS_TOO_LARGE
                     : !context.backend                                                                                                ? UWVM_ROS_INVALID
                     : !context.backend->poll || (events ? !context.backend->subscribe_parameter_events : !context.backend->subscribe) ? UWVM_ROS_UNSUPPORTED
                                                                                                                                       : 0;
            if(error_)
            {
                return error_;
            }
            buffer_.resize(capacity);
            rollback_ = 0;
            error_ = owner_.open(context, alias);
            if(!error_)
            {
                error_ = events ? owner_.subscribe_parameter_events() : owner_.subscribe();
            }
            if(error_ && owner_.is_open())
            {
                rollback_ = owner_.close();
            }
            return error_;
        }

        /** @brief Inspect the subscription's stored acquisition/activation error.
         * @details Later take/callback/close results are returned by their calls.
         * @return Stored primary initialization status.
         * @see Subscription::rollback_error
         */
        uint32_t error() const
        {
            return error_;
        }

        /** @brief Inspect cleanup status from failed subscription activation.
         * @details Zero can mean no rollback was needed; inspect error() separately.
         * @return Exact one-attempt rollback close status.
         * @see Subscription::open
         */
        uint32_t rollback_error() const
        {
            return rollback_;
        }

        /** @brief Close an idle subscription once.
         * @details Active callback dispatch returns CONFLICT without closing;
         * otherwise Capability's cleanup/unsupported rules apply.
         * @return CONFLICT while busy or exact capability close status.
         * @see Capability::close
         */
        uint32_t close()
        {
            return busy_ ? UWVM_ROS_CONFLICT : owner_.close();
        }

        /** @brief Borrow the numeric subscription handle for inspection.
         * @details Does not transfer ownership or query host-side liveness.
         * @return Current handle bits, zero when locally empty.
         * @see Subscription::is_open
         */
        uint64_t handle() const
        {
            return owner_.handle();
        }

        /** @brief Inspect whether the subscription retains a local handle.
         * @details A nonzero handle can still be refused after host revocation.
         * @return Whether a nonzero capability handle remains locally.
         * @see Subscription::handle
         */
        bool is_open() const
        {
            return owner_.is_open();
        }

        /** @brief Poll and decode at most one complete owning message.
         * @details Checks stored initialization error and busy state, then performs
         * one poll into fixed storage. Missing/excess result length or codec failure
         * yields INVALID. A consumed malformed sample is never replayed here.
         * @param[out] value Owning decoded message, unchanged on reported failure.
         * @return Zero for one decoded sample, CONFLICT during dispatch, or the
         * exact initialization/poll error such as WOULD_BLOCK or TOO_LARGE.
         * @see Subscription::poll_once
         */
        uint32_t take(Message& value)
        {
            if(error_)
            {
                return error_;
            }
            if(busy_)
            {
                return UWVM_ROS_CONFLICT;
            }
            Result result = owner_.poll(buffer_data(buffer_), buffer_.size());
            if(result.error)
            {
                return result.error;
            }
            if(!result.has_length || result.length > buffer_.size())
            {
                return UWVM_ROS_INVALID;
            }
            return Codec<Message>::decode(ByteView(buffer_data(buffer_), static_cast<size_t>(result.length)), value) ? 0 : UWVM_ROS_INVALID;
        }
#if ROSWASM_CPP_LEGACY
        /** @brief Set the legacy callback and borrowed user state.
         * @details C++98/03 callback signature is void(void*, Message const&).
         * Keep user state alive until replaced/cleared and any current callback
         * returns. Null clears future dispatch; no message is polled by registration.
         * @param[in] callback Function pointer, or null to clear it.
         * @param[in] user Borrowed callback state, default null.
         * @see Subscription::poll_once
         */
        void on_message(Callback callback, void* user = 0)
        {
            callback_ = callback;
            user_ = user;
        }

        /** @brief Take one message and synchronously invoke the legacy callback.
         * @details Snapshots callback/user before invocation. Reentrant take/poll
         * and close are refused while the callback runs; its Message reference is
         * borrowed only until return. No background work or exception translation.
         * @return INVALID for no callback, CONFLICT for reentry, the take error, or
         * zero after one successful invocation.
         * @see Subscription::on_message
         */
        uint32_t poll_once()
        {
            if(busy_)
            {
                return UWVM_ROS_CONFLICT;
            }
            if(!callback_)
            {
                return UWVM_ROS_INVALID;
            }
            Message value;
            uint32_t code = take(value);
            if(code)
            {
                return code;
            }
            Callback cb = callback_;
            void* user = user_;
            detail::PollLease lease(busy_);
            cb(user, value);
            return 0;
        }
#else
        /** @brief Set an owning C++11-or-newer message callback snapshot.
         * @details Stores std::function<void(Message const&)> in shared storage so
         * replacement during invocation cannot destroy the active callback. An
         * empty function clears future dispatch; borrowed captures remain caller-owned.
         * @param[in] callback Function object consumed for subsequent dispatch.
         * @see Subscription::poll_once
         */
        void on_message(Callback callback)
        {
            callback_ = callback ? std::make_shared<Callback>(std::move(callback)) : std::shared_ptr<Callback>();
        }

        /** @brief Take one message and invoke the retained modern callback.
         * @details Pins its function snapshot through invocation. The message is
         * borrowed until return; recursive dispatch/close yields CONFLICT. Callback
         * exceptions follow the selected profile and are not converted to ABI errors.
         * @return INVALID for no callback, CONFLICT for reentry, the take error, or
         * zero after one successful invocation.
         * @see Subscription::on_message
         */
        uint32_t poll_once()
        {
            if(busy_)
            {
                return UWVM_ROS_CONFLICT;
            }
            std::shared_ptr<Callback> callback = callback_;
            if(!callback)
            {
                return UWVM_ROS_INVALID;
            }
            Message value;
            uint32_t code = take(value);
            if(code)
            {
                return code;
            }
            detail::PollLease lease(busy_);
            (*callback)(value);
            return 0;
        }

        /** @brief Take one message and invoke a supplied modern function object.
         * @details Does not retain callback or replace on_message state. The message
         * reference is valid only during invocation, with the same reentry guard.
         * @tparam F Copyable callable accepting Message const&.
         * @param[in] callback Function object copied for this one synchronous call.
         * @return The take error, or zero after one callback; exceptions propagate
         * according to the selected profile rather than becoming numeric results.
         * @see Subscription::take
         */
        template <class F>
        uint32_t spin_once(F callback)
        {
            Message value;
            uint32_t code = take(value);
            if(code)
            {
                return code;
            }
            detail::PollLease lease(busy_);
            callback(value);
            return 0;
        }
#endif
    };

    /** @brief One capability, selected operation and bounded owning reply storage.
     * @details Each call submits its input exactly once and never grows/replays a
     * request after a size error. Capacity zero supports valid empty replies. The
     * backend table must outlive this owner; callers serialize its reusable buffer.
     * @see Request::call
     */
    class Request
    {
        Capability owner_;
        roswasmc_operation operation_;
        wire::bytes buffer_;
        uint32_t error_;
        Request(Request const&);
        Request& operator= (Request const&);

    public:
        /** @brief Bind bounded storage to an explicitly granted request alias.
         * @details Checks capacity and operation support before acquisition; local
         * validity failure prevents opening. Inspect error() before call().
         * @param[in] context Backend context whose dispatch table outlives the owner.
         * @param[in] alias Borrowed exact request alias for acquisition.
         * @param[in] op Canonical operation retained for every call.
         * @param[in] capacity Reply capacity in bytes, 0..4193786.
         * @param[in] valid Caller validity predicate, default true.
         * @see Capability::open_for
         */
        Request(roswasmc_context const& context, StringView alias, roswasmc_operation op, size_t capacity, bool valid = true) :
            operation_(op), error_(capacity > 4193786u ? UWVM_ROS_TOO_LARGE : 0)
        {
            if(!error_)
            {
                buffer_.resize(capacity);
                error_ = owner_.open_for(context, alias, op, valid, capacity);
            }
        }
#if !ROSWASM_CPP_LEGACY
        /** @brief Move the handle, selected operation and storage in modern modes.
         * @details Requires an idle source with no outstanding borrowed references;
         * source handle becomes zero and no host operation runs during transfer.
         * @param[in,out] other C++11-or-newer Request to consume.
         * @see Capability::Capability
         */
        Request(Request&& other) noexcept :
            owner_(std::move(other.owner_)),
            operation_(other.operation_),
            buffer_(std::move(other.buffer_)),
            error_(other.error_)
        {
        }
#endif
        /** @brief Inspect the stored request initialization/acquisition status.
         * @details Does not replace or cache later per-call results.
         * @return Stored local/open error, zero after successful initialization.
         * @see Request::call
         */
        uint32_t error() const
        {
            return error_;
        }

        /** @brief Inspect the operation selected at construction.
         * @details Returns metadata without a backend call or permission change.
         * @return Retained canonical operation value.
         * @see Request::Request
         */
        roswasmc_operation operation() const
        {
            return operation_;
        }

        /** @brief Submit one complete request and own its successful reply.
         * @details Uses fixed reply storage once. A successful backend result must
         * provide a valid length not exceeding capacity, otherwise INVALID. Output
         * is committed only after complete reply copying; transport/size errors
         * never cause automatic resubmission of a possibly consumed request.
         * @param[in] input Borrowed complete canonical request for this call.
         * @param[out] output Owning reply destination, unchanged on reported failure.
         * @return Exact request result, or INVALID for malformed success metadata.
         * @see Capability::request
         */
        Result call(ByteView input, wire::bytes& output)
        {
            if(error_)
            {
                return detail::failure(error_);
            }
            Result r = owner_.request(operation_, input, buffer_data(buffer_), buffer_.size());
            if(!r.error)
            {
                if(!r.has_length || r.length > buffer_.size())
                {
                    r.error = UWVM_ROS_INVALID;
                    return r;
                }
                wire::bytes next;
                if(r.length)
                {
                    next.assign(buffer_.begin(), buffer_.begin() + static_cast<size_t>(r.length));
                }
                output.swap(next);
            }
            return r;
        }

        /** @brief Attempt one close of this request capability.
         * @details Retires an actually attempted handle even when transport reports
         * an error; local missing-callback handling follows Capability.
         * @return Exact cleanup status.
         * @see Capability::close
         */
        uint32_t close()
        {
            return owner_.close();
        }

        /** @brief Attempt host-authorized revocation of the request alias.
         * @details Does not cancel or replay an earlier request automatically.
         * @return Exact C/local/host revoke status.
         * @see Capability::revoke
         */
        uint32_t revoke()
        {
            return owner_.revoke();
        }

        /** @brief Inspect the request handle without transferring it.
         * @details Numeric bits alone cannot duplicate owner lifetime or rights.
         * @return Current local handle, or zero when empty.
         * @see Request::is_open
         */
        uint64_t handle() const
        {
            return owner_.handle();
        }

        /** @brief Inspect whether this request retains a local capability handle.
         * @details Does not query host-side expiry/revocation or operation readiness.
         * @return True for a nonzero local handle.
         * @see Request::handle
         */
        bool is_open() const
        {
            return owner_.is_open();
        }

        /** @brief Borrow this request owner for explicit event-backend binding.
         * @details Keep Request stationary/alive while EventStream borrows it;
         * external mutation/cleanup must respect that stream's lifetime contract.
         * @return Mutable borrowed Capability reference, with no ownership transfer.
         * @see roswasmcpp::EventStream
         */
        Capability& borrowed_event_source()
        {
            return owner_;
        }
    };
    /** @brief Specialization point for complete service request/response bodies.
     * @details Supplies request encode/decode and response encode/decode functions;
     * bodies exclude correlation prefixes. Empty Trigger requests are valid empty
     * encodings, so an empty request vector alone is not an encoding-failure test.
     * @tparam Service Definition with owning Request/Response types and a codec.
     * @see roswasmcpp::ServiceClient
     */
    template <class Service>
    struct ServiceCodec;

    /** @brief Exact Trigger service body conversions.
     * @details Requests contain zero bytes; responses use the shared complete
     * success/message structure. Local codecs do not call or advertise a service.
     * @see roswasmcpp::srv::Trigger
     */
    template <>
    struct ServiceCodec<srv::Trigger>
    {
        /** @brief Encode the empty Trigger request.
         * @details The unnamed request has no fields and is not retained.
         * @return An empty owning vector, representing a successful empty request.
         * @see ServiceCodec<srv::Trigger>::decode
         */
        static wire::bytes encode(srv::Trigger::Request const&)
        {
            return wire::bytes();
        }

        /** @brief Validate the exact zero-byte Trigger request body.
         * @details The unnamed destination has no fields and is unchanged.
         * @param[in] bytes Borrowed complete request body.
         * @return True only when no request bytes are present.
         * @see roswasmcpp::srv::Trigger::Request
         */
        static bool decode(ByteView bytes, srv::Trigger::Request&)
        {
            return bytes.empty();
        }

        /** @brief Decode a complete owning Trigger response body.
         * @details Uses the canonical Bool-plus-String codec without an ID prefix.
         * @param[in] bytes Borrowed complete response body.
         * @param[out] response Owning destination, unchanged on false.
         * @return True for a complete canonical response.
         * @see roswasmcpp::Codec<roswasmcpp::wire::service_response>
         */
        static bool decode_response(ByteView bytes, srv::Trigger::Response& response)
        {
            return Codec<wire::service_response>::decode(bytes, response);
        }

        /** @brief Encode a Trigger success flag and complete response message.
         * @details Applies the shared UTF-8/size checks before committing bytes.
         * @param[in] response Owning body read only during this call.
         * @param[out] bytes Owning destination, unchanged on false.
         * @return True for a complete supported response body.
         * @see roswasmcpp::Codec<roswasmcpp::wire::service_response>
         */
        static bool encode_response(srv::Trigger::Response const& response, wire::bytes& bytes)
        {
            return Codec<wire::service_response>::encode(response, bytes);
        }
    };

    /** @brief Exact SetBool service body conversions.
     * @details Requests contain one 0/1 byte and responses use the complete shared
     * success/message codec; no service operation is performed by these helpers.
     * @see roswasmcpp::srv::SetBool
     */
    template <>
    struct ServiceCodec<srv::SetBool>
    {
        /** @brief Encode the SetBool request's requested setting.
         * @details Does not authorize any host state change.
         * @param[in] r Complete owning Boolean request.
         * @return One owning canonical 0/1 byte.
         * @see roswasmcpp::ParameterCodec<bool>
         */
        static wire::bytes encode(srv::SetBool::Request const& r)
        {
            return ParameterCodec<bool>::encode(r.data);
        }

        /** @brief Decode an exact one-byte SetBool request.
         * @details Rejects values other than 0/1 and all nonexact input extents.
         * @param[in] bytes Borrowed complete request body.
         * @param[out] r Request destination, unchanged on false.
         * @return True for one complete canonical Boolean.
         * @see roswasmcpp::ParameterCodec<bool>
         */
        static bool decode(ByteView bytes, srv::SetBool::Request& r)
        {
            return ParameterCodec<bool>::decode(bytes, r.data);
        }

        /** @brief Decode the complete SetBool response body into owning fields.
         * @details Uses shared success/message framing, excluding request IDs.
         * @param[in] bytes Borrowed complete response body.
         * @param[out] response Owning destination, unchanged on false.
         * @return True for a complete canonical response.
         * @see roswasmcpp::Codec<roswasmcpp::wire::service_response>
         */
        static bool decode_response(ByteView bytes, srv::SetBool::Response& response)
        {
            return Codec<wire::service_response>::decode(bytes, response);
        }

        /** @brief Encode a SetBool success flag and complete response message.
         * @details Reuses canonical scalar-String validation and aggregate bounds.
         * @param[in] response Complete owning response body for this call.
         * @param[out] bytes Owning destination, unchanged on false.
         * @return True for the complete supported body.
         * @see roswasmcpp::Codec<roswasmcpp::wire::service_response>
         */
        static bool encode_response(srv::SetBool::Response const& response, wire::bytes& bytes)
        {
            return Codec<wire::service_response>::encode(response, bytes);
        }
    };

    /** @brief Synchronous typed service client with one bounded reply buffer.
     * @details Submits each call once through SERVICE_CALL and decodes a complete
     * response body. The host alias determines service/type/role permission.
     * This owner does not create an asynchronous ticket, worker or implicit retry.
     * @tparam Service Definition with Request/Response and a ServiceCodec.
     * @see roswasmcpp::Request
     */
    template <class Service>
    class ServiceClient
    {
        Request request_;

    public:
        /** @brief Acquire a service-call alias with fixed reply capacity.
         * @details Checks operation support before opening; inspect error().
         * The backend table must outlive this owner; alias text is not retained.
         * @param[in] context Selected backend context.
         * @param[in] alias Exact granted service.call alias for this acquisition.
         * @param[in] capacity Reply capacity in bytes, 0..4193786.
         * @see roswasmcpp::Request::Request
         */
        ServiceClient(roswasmc_context const& context, StringView alias, size_t capacity) : request_(context, alias, ROSWASMC_SERVICE_CALL, capacity)
        {
        }

        /** @brief Inspect stored client initialization/acquisition status.
         * @details Per-call and cleanup errors are returned separately.
         * @return Underlying Request initialization error.
         * @see ServiceClient::call
         */
        uint32_t error() const
        {
            return request_.error();
        }

        /** @brief Attempt one close of the service-call capability.
         * @details Does not retry or undo a previously admitted service call.
         * @return Exact Request/Capability close status.
         * @see roswasmcpp::Request::close
         */
        uint32_t close()
        {
            return request_.close();
        }

        /** @brief Inspect the service-call handle without transferring it.
         * @details Zero means locally empty; host liveness is not queried.
         * @return Current local capability handle bits.
         * @see ServiceClient::is_open
         */
        uint64_t handle() const
        {
            return request_.handle();
        }

        /** @brief Inspect whether the client retains a local handle.
         * @details A later call can still fail after host-side expiry/revocation.
         * @return True for a nonzero local capability handle.
         * @see ServiceClient::handle
         */
        bool is_open() const
        {
            return request_.is_open();
        }

        /** @brief Borrow this client's capability for an explicit event binding.
         * @details Keep the client stationary/alive until any borrowing EventStream
         * is finished; this reference does not transfer or duplicate ownership.
         * @return Mutable borrowed underlying capability reference.
         * @see roswasmcpp::EventStream
         */
        Capability& borrowed_event_source()
        {
            return request_.borrowed_event_source();
        }

        /** @brief Submit one typed service request and decode its complete response.
         * @details Encodes via ServiceCodec (including valid empty Trigger requests),
         * submits once, then decodes before committing output. A host size/transport
         * failure or malformed reply is never retried automatically.
         * @param[in] value Complete owning service request for this call.
         * @param[out] output Owning response, unchanged on reported failure.
         * @return Stored initialization/request error, INVALID for malformed reply,
         * or zero for one complete response.
         * @see roswasmcpp::ServiceCodec
         */
        uint32_t call(typename Service::Request const& value, typename Service::Response& output)
        {
            if(error())
            {
                return error();
            }
            wire::bytes bytes = ServiceCodec<Service>::encode(value), reply;
            Result r = request_.call(bytes, reply);
            if(r.error)
            {
                return r.error;
            }
            typename Service::Response next;
            if(!ServiceCodec<Service>::decode_response(reply, next))
            {
                return UWVM_ROS_INVALID;
            }
            output = next;
            return 0;
        }
    };

    /** @brief Stable advertise/respond owners for a bounded service/action server.
     * @details Uses two distinct aliases with independent grants and one receive
     * buffer. Initialization rolls back acquired owners after a failure; reports
     * preserve primary and cleanup statuses. Callers serialize dispatch/cleanup.
     * @see ServerOwners::close_checked
     */
    class ServerOwners
    {
    protected:
        Capability advertise_, respond_;
        wire::bytes buffer_;
        bool busy_;
        uint32_t error_;
        roswasmc_cleanup_report rollback_;
        bool action_;
        ServerOwners(ServerOwners const&);
        ServerOwners& operator= (ServerOwners const&);

    public:
        /** @brief Open two distinct server roles and activate advertisement.
         * @details Validates roles/backend/bounds before acquisition, opens advertise
         * then respond, and performs the selected advertise operation once. Failure
         * attempts reverse-order cleanup and retains its report. Backend table must
         * outlive both owners; aliases are borrowed only during construction.
         * @param[in] context Selected backend context with poll/server support.
         * @param[in] advertise Nonempty granted server-advertise alias.
         * @param[in] respond Distinct nonempty granted server-response alias.
         * @param[in] capacity Receive capacity in bytes, 0..4193786.
         * @param[in] action True for action roles, false for services by default.
         * @see ServerOwners::rollback_status
         */
        ServerOwners(roswasmc_context const& context, StringView advertise, StringView respond, size_t capacity, bool action = false) :
            busy_(false), error_(0), rollback_(), action_(action)
        {
            error_ = !context.backend || advertise == respond || advertise.empty() || respond.empty() ? UWVM_ROS_INVALID
                     : capacity > 4193786u                                                            ? UWVM_ROS_TOO_LARGE
                     : !context.backend->poll                                                         ? UWVM_ROS_UNSUPPORTED
                                                                                                      : 0;
            if(!error_)
            {
                error_ = roswasmc_check_operation(&context, action ? ROSWASMC_ACTION_RESPOND : ROSWASMC_SERVICE_RESPOND);
            }
            if(!error_)
            {
                error_ = action                                ? roswasmc_check_operation(&context, ROSWASMC_ACTION_ADVERTISE)
                         : !context.backend->advertise_service ? UWVM_ROS_UNSUPPORTED
                                                               : 0;
            }
            if(!error_)
            {
                buffer_.resize(capacity);
                error_ = advertise_.open(context, advertise);
            }
            if(!error_)
            {
                error_ = respond_.open(context, respond);
            }
            if(!error_)
            {
                if(action)
                {
                    Result r = advertise_.request(ROSWASMC_ACTION_ADVERTISE, ByteView(), 0, 0);
                    error_ = r.error ? r.error : !r.has_length || r.length ? UWVM_ROS_INVALID : 0;
                }
                else
                {
                    error_ = advertise_.advertise_service();
                }
            }
            if(error_)
            {
                rollback_ = close_checked(0, error_);
            }
        }

        /** @brief Inspect initialization status and local two-owner completeness.
         * @details Returns the stored primary error first, otherwise BAD_HANDLE if
         * either role is locally empty; it does not query host-side liveness.
         * @return Stored primary error, BAD_HANDLE or zero for two local handles.
         * @see ServerOwners::rollback_status
         */
        uint32_t error() const
        {
            return error_ ? error_ : advertise_.is_open() && respond_.is_open() ? 0 : UWVM_ROS_BAD_HANDLE;
        }

        /** @brief Copy the construction-time rollback report.
         * @details Does not include later explicit close/revoke attempts.
         * @return Primary/cleanup statuses and attempted/failed rollback counts.
         * @see ServerOwners::ServerOwners
         */
        roswasmc_cleanup_report rollback_status() const
        {
            return rollback_;
        }

        /** @brief Close respond then advertise, preserving separate cleanup errors.
         * @details A busy server returns CONFLICT without cleanup. Attempts each
         * still-open owner once; local unsupported callbacks retain C ownership.
         * @param[out] statuses Optional array of at least two statuses, ordered
         * advertise then respond, independently of cleanup order.
         * @param[in] primary Existing primary error retained in the report.
         * @return Complete cleanup report without losing the primary failure.
         * @see roswasmc_cleanup_report
         */
        roswasmc_cleanup_report close_checked(uint32_t* statuses = 0, uint32_t primary = 0)
        {
            return cleanup(statuses, primary, false);
        }

        /** @brief Revoke both server roles with a complete per-owner report.
         * @details Requires each host revocation grant; busy dispatch returns
         * CONFLICT without mutation. No successful close is inferred from a refusal.
         * @param[out] statuses Optional array of at least two statuses, advertise
         * then respond; unattempted empty owners report zero.
         * @param[in] primary Existing primary error retained separately.
         * @return Complete reverse-order revocation report.
         * @see ServerOwners::close_checked
         */
        roswasmc_cleanup_report revoke_checked(uint32_t* statuses = 0, uint32_t primary = 0)
        {
            return cleanup(statuses, primary, true);
        }

        /** @brief Close both roles and return the first cleanup error.
         * @details Use close_checked when counts and per-owner statuses matter.
         * @return Aggregate cleanup error, including CONFLICT during dispatch.
         * @see ServerOwners::close_checked
         */
        uint32_t close()
        {
            roswasmc_cleanup_report r = close_checked();
            return r.cleanup_error;
        }

        /** @brief Revoke both roles and return the first cleanup error.
         * @details Uses explicit host revocation rights; preserves no per-owner
         * report in this convenience return value.
         * @return Aggregate cleanup error.
         * @see ServerOwners::revoke_checked
         */
        uint32_t revoke()
        {
            roswasmc_cleanup_report r = revoke_checked();
            return r.cleanup_error;
        }

        /** @brief Inspect the advertisement-role handle without transfer.
         * @details Zero means locally empty; no host readiness check is performed.
         * @return Current advertisement capability handle.
         * @see ServerOwners::respond_handle
         */
        uint64_t advertise_handle() const
        {
            return advertise_.handle();
        }

        /** @brief Inspect the response-role handle without transfer.
         * @details Its independent permission cannot be inferred from advertise.
         * @return Current response capability handle, zero when locally empty.
         * @see ServerOwners::advertise_handle
         */
        uint64_t respond_handle() const
        {
            return respond_.handle();
        }

    private:
        roswasmc_cleanup_report cleanup(uint32_t* statuses, uint32_t primary, bool revoke)
        {
            roswasmc_cleanup_report r = roswasmc_cleanup_init(primary);
            if(busy_)
            {
                r.cleanup_error = UWVM_ROS_CONFLICT;
                return r;
            }
            uint32_t b = detail::cleanup(respond_, r, revoke), a = detail::cleanup(advertise_, r, revoke);
            if(statuses)
            {
                statuses[0] = a;
                statuses[1] = b;
            }
            return r;
        }
    };

    /** @brief Bounded typed service server with caller-driven request callbacks.
     * @details Each poll_once consumes at most one correlated request and attempts
     * one response. No native worker, implicit retry or background queue is created.
     * Handler request references last only through invocation; serialize owner use
     * and keep borrowed callback state/backend alive.
     * @tparam Service Definition with complete Request/Response and ServiceCodec.
     * @see roswasmcpp::ServerOwners
     */
    template <class Service>
    class ServiceServer : public ServerOwners
    {
#if ROSWASM_CPP_LEGACY
        typedef typename Service::Response (*Handler)(void*, typename Service::Request const&);
        Handler handler_;
        void* user_;
#else
        typedef std::function<typename Service::Response(typename Service::Request const&)> Handler;
        std::shared_ptr<Handler> handler_;
#endif

    public:
        /** @brief Acquire distinct service server roles and bounded receive storage.
         * @details Initializes advertisement without installing a handler. Inspect
         * inherited error() and rollback_status() before polling.
         * @param[in] context Backend context whose table outlives this server.
         * @param[in] advertise Nonempty granted service-advertise alias.
         * @param[in] respond Distinct nonempty granted service-response alias.
         * @param[in] capacity Complete incoming envelope capacity in bytes,
         * 0..4193786; it must include the eight-byte request ID.
         * @see ServerOwners::ServerOwners
         */
        ServiceServer(roswasmc_context const& context, StringView advertise, StringView respond, size_t capacity) :
            ServerOwners(context, advertise, respond, capacity), handler_()
#if ROSWASM_CPP_LEGACY
            ,
            user_(0)
#endif
        {
        }
#if ROSWASM_CPP_LEGACY
        /** @brief Set the C++98/03 service handler and borrowed state.
         * @details Signature is Response(void*, Request const&); null clears future
         * dispatch. Registration is local. The request reference is borrowed only
         * during invocation and user state must outlive active/future calls.
         * @param[in] handler Legacy function pointer returning a complete Response.
         * @param[in] user Borrowed callback state, default null.
         * @see ServiceServer::poll_once
         */
        void on_request(Handler handler, void* user = 0)
        {
            handler_ = handler;
            user_ = user;
        }
#else
        /** @brief Set an owning C++11-or-newer service handler snapshot.
         * @details Stores std::function<Response(Request const&)> in shared storage;
         * replacement cannot destroy the active snapshot. An empty handler clears
         * future dispatch. Borrowed captures remain caller-owned.
         * @param[in] handler Function object consumed for later synchronous calls.
         * @see ServiceServer::poll_once
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : std::shared_ptr<Handler>();
        }
#endif
        /** @brief Poll, decode, invoke and respond to at most one service request.
         * @details Requires a handler and both initialized roles. Validates the
         * nonzero request ID and exact body before callback, then validates/encodes
         * its complete response and prefixes the original ID. The response is sent
         * once; its raw request error is returned. A consumed request is never
         * replayed after decode, callback or send failure. Busy dispatch/cleanup is
         * guarded; callback exceptions follow the selected exception profile.
         * @return CONFLICT for reentry, INVALID for missing handler/malformed data,
         * the exact acquisition/poll/respond error, or zero after one response call.
         * @see roswasmcpp::ServiceCodec
         */
        uint32_t poll_once()
        {
            if(busy_)
            {
                return UWVM_ROS_CONFLICT;
            }
            if(error())
            {
                return error();
            }
#if ROSWASM_CPP_LEGACY
            Handler handler = handler_;
            void* user = user_;
#else
            std::shared_ptr<Handler> handler = handler_;
#endif
            if(!handler)
            {
                return UWVM_ROS_INVALID;
            }
            detail::PollLease lease(busy_);
            Result r = advertise_.poll(buffer_data(buffer_), buffer_.size());
            if(r.error)
            {
                return r.error;
            }
            if(!r.has_length || r.length < 8 || r.length > buffer_.size())
            {
                return UWVM_ROS_INVALID;
            }
            uint64_t id = uwvm_ros_load_u64(buffer_data(buffer_));
            typename Service::Request request;
            if(!id || !ServiceCodec<Service>::decode(ByteView(buffer_data(buffer_) + 8, static_cast<size_t>(r.length) - 8), request))
            {
                return UWVM_ROS_INVALID;
            }
#if ROSWASM_CPP_LEGACY
            typename Service::Response response = handler(user, request);
#else
            typename Service::Response response = (*handler)(request);
#endif
            wire::bytes payload;
            if(!ServiceCodec<Service>::encode_response(response, payload) || payload.size() > 4193778u)
            {
                return UWVM_ROS_INVALID;
            }
            wire::bytes envelope(payload.size() + 8);
            size_t used = 0;
            roswasmc_bytes raw = {buffer_data(payload), payload.size()};
            if(roswasmc_encode_service_envelope(id, raw, buffer_data(envelope), envelope.size(), &used))
            {
                return UWVM_ROS_INVALID;
            }
            return respond_.request(ROSWASMC_SERVICE_RESPOND, envelope, 0, 0).error;
        }
    };

    /** @brief Single-role parameter requests using complete typed values.
     * @details The construction selector fixes one parameter operation. Methods
     * reject mismatched roles locally with DENIED; supported roles still require
     * an exact host parameter/type grant. Calls reuse Request's bounded storage
     * synchronously, with no mutation replay or background thread.
     * @see roswasmcpp::ParameterCodec
     */
    class Parameters : public Request
    {
    public:
        /** @brief Bind one parameter role and fixed reply capacity.
         * @details Selectors outside PARAMETER_GET through PARAMETER_UNDECLARE fail
         * locally before alias acquisition. Inspect inherited error().
         * @param[in] c Backend context whose table outlives this owner.
         * @param[in] a Borrowed exact parameter alias for this acquisition.
         * @param[in] op One canonical parameter-operation selector.
         * @param[in] capacity Reply capacity in bytes, 0..4193786.
         * @see Request::Request
         */
        Parameters(roswasmc_context const& c, StringView a, roswasmc_operation op, size_t capacity) :
            Request(c, a, op, capacity, op >= ROSWASMC_PARAMETER_GET && op <= ROSWASMC_PARAMETER_UNDECLARE)
        {
        }

        /** @brief Read and decode a complete typed parameter value once.
         * @details Requires the PARAMETER_GET selector and exact host type/read
         * grant. Decoding completes in a temporary before committing output.
         * @tparam T Supported owning ParameterCodec value type.
         * @param[out] output Owning value, unchanged on reported failure.
         * @return DENIED for the wrong role, INVALID for malformed typed bytes,
         * the request error, or zero for a complete value.
         * @see roswasmcpp::ParameterCodec
         */
        template <class T>
        uint32_t get(T& output)
        {
            if(operation() != ROSWASMC_PARAMETER_GET)
            {
                return UWVM_ROS_DENIED;
            }
            wire::bytes reply;
            Result r = call(ByteView(), reply);
            if(r.error)
            {
                return r.error;
            }
            T next = T();
            if(!ParameterCodec<T>::decode(reply, next))
            {
                return UWVM_ROS_INVALID;
            }
            output = next;
            return 0;
        }

        /** @brief Encode and submit one parameter set or declaration.
         * @details Requires PARAMETER_SET or PARAMETER_DECLARE and the matching
         * host mutation/type grant. Invalid local encoding prevents import; an
         * admitted mutation is never replayed after a reply-size/transport error.
         * @tparam T Supported owning ParameterCodec value type.
         * @param[in] value Complete value read only during this call.
         * @return DENIED for the wrong role, INVALID for bad encoding, or the exact
         * request status. Reply bytes are not interpreted by this convenience call.
         * @see Request::call
         */
        template <class T>
        uint32_t set(T const& value)
        {
            if(operation() != ROSWASMC_PARAMETER_SET && operation() != ROSWASMC_PARAMETER_DECLARE)
            {
                return UWVM_ROS_DENIED;
            }
            wire::bytes bytes = ParameterCodec<T>::encode(value), out;
            if(bytes.empty())
            {
                return UWVM_ROS_INVALID;
            }
            return call(bytes, out).error;
        }

        /** @brief Query existence through a PARAMETER_EXISTS alias.
         * @details Sends an empty request and requires one exact canonical Bool
         * reply; a false value is successful absence, distinct from an error.
         * @param[out] value Existence result, unchanged on reported failure.
         * @return DENIED for a wrong selector, INVALID for malformed reply, the
         * request error, or zero for a complete Boolean result.
         * @see ParameterCodec<bool>
         */
        uint32_t exists(bool& value)
        {
            if(operation() != ROSWASMC_PARAMETER_EXISTS)
            {
                return UWVM_ROS_DENIED;
            }
            wire::bytes out;
            Result r = call(ByteView(), out);
            return r.error ? r.error : ParameterCodec<bool>::decode(out, value) ? 0 : UWVM_ROS_INVALID;
        }

        /** @brief Submit one parameter deletion or undeclaration.
         * @details Accepts only PARAMETER_DELETE/PARAMETER_UNDECLARE. Host mutation
         * authority remains mandatory; reply bytes are not interpreted and no
         * request is retried automatically.
         * @return DENIED for a wrong role or the exact one-attempt request status.
         * @see Request::call
         */
        uint32_t erase()
        {
            if(operation() != ROSWASMC_PARAMETER_DELETE && operation() != ROSWASMC_PARAMETER_UNDECLARE)
            {
                return UWVM_ROS_DENIED;
            }
            wire::bytes out;
            return call(ByteView(), out).error;
        }

        /** @brief Query String metadata for list/search/describe parameter roles.
         * @details Requires PARAMETER_LIST, PARAMETER_SEARCH or PARAMETER_DESCRIBE,
         * sends an empty input and decodes the complete scalar String reply.
         * @param[out] value Owning metadata text, unchanged on reported failure.
         * @return DENIED for a wrong role, INVALID for malformed text/framing, the
         * exact request error, or zero for complete metadata.
         * @see ParameterCodec<std::string>
         */
        uint32_t metadata(std::string& value)
        {
            if(operation() != ROSWASMC_PARAMETER_LIST && operation() != ROSWASMC_PARAMETER_SEARCH && operation() != ROSWASMC_PARAMETER_DESCRIBE)
            {
                return UWVM_ROS_DENIED;
            }
            wire::bytes out;
            Result r = call(ByteView(), out);
            return r.error ? r.error : ParameterCodec<std::string>::decode(out, value) ? 0 : UWVM_ROS_INVALID;
        }
    };

    /** @brief Bounded read-only graph metadata request for one selected role.
     * @details Host aliases constrain visible names/types; local graph inspection
     * cannot enumerate beyond those grants or establish endpoint permission.
     * @see roswasmcpp::Request
     */
    class Graph : public Request
    {
    public:
        /** @brief Bind one supported graph selector and response capacity.
         * @details Selectors outside GRAPH_INSPECT_TOPIC through GRAPH_LIST_SERVICES
         * fail locally before acquisition. Backend lifetime follows Request.
         * @param[in] c Selected live backend context.
         * @param[in] a Borrowed exact granted graph alias.
         * @param[in] op Canonical graph-inspect/list selector.
         * @param[in] capacity Complete reply capacity in bytes, 0..4193786.
         * @see Request::Request
         */
        Graph(roswasmc_context const& c, StringView a, roswasmc_operation op, size_t capacity) :
            Request(c, a, op, capacity, op >= ROSWASMC_GRAPH_INSPECT_TOPIC && op <= ROSWASMC_GRAPH_LIST_SERVICES)
        {
        }

        /** @brief Read one complete graph-metadata String.
         * @details Uses the construction selector and performs one empty-input
         * request; the reply String is copied before committing output.
         * @param[out] value Owning metadata text, unchanged on reported failure.
         * @return Exact request error, INVALID for malformed String bytes, or zero.
         * @see ParameterCodec<std::string>
         */
        uint32_t inspect(std::string& value)
        {
            wire::bytes out;
            Result r = call(ByteView(), out);
            return r.error ? r.error : ParameterCodec<std::string>::decode(out, value) ? 0 : UWVM_ROS_INVALID;
        }
    };

    /** @brief Explicit host clock read using one selected time domain.
     * @details No clock is queried until read(). ROS, system and steady clocks
     * have different origins; callers must not compare them without conversion.
     * @see roswasmcpp::Clock::read
     */
    class Clock : public Request
    {
    public:
        /** @brief Bind ROS, system or steady time with an eight-byte reply buffer.
         * @details Non-time selectors fail locally before opening. Requires the
         * exact host clock-read alias; backend table outlives this owner.
         * @param[in] c Selected backend context.
         * @param[in] a Borrowed exact time-domain alias for acquisition.
         * @param[in] op TIME_READ_ROS, TIME_READ_SYSTEM or TIME_READ_STEADY.
         * @see Request::Request
         */
        Clock(roswasmc_context const& c, StringView a, roswasmc_operation op) :
            Request(c, a, op, 8, op >= ROSWASMC_TIME_READ_ROS && op <= ROSWASMC_TIME_READ_STEADY)
        {
        }

        /** @brief Read one unsigned nanosecond count in the selected clock domain.
         * @details Requires an exact eight-byte result, performs no waiting and
         * makes no epoch or monotonicity assumption beyond the chosen host clock.
         * @param[out] value Nanoseconds, unchanged on reported failure.
         * @return Exact request error, INVALID for wrong reply extent, or zero.
         * @see wire::nanoseconds
         */
        uint32_t read(uint64_t& value)
        {
            wire::bytes out;
            Result r = call(ByteView(), out);
            if(r.error)
            {
                return r.error;
            }
            if(out.size() != 8)
            {
                return UWVM_ROS_INVALID;
            }
            value = uwvm_ros_load_u64(buffer_data(out));
            return 0;
        }
    };

    /** @brief Owned alias for explicitly authorized UTF-8 logging.
     * @details Host policy fixes logger/severity and quotas. Calls are synchronous
     * and caller-serialized; no ambient stdout/native logger fallback is used.
     * @see roswasmcpp::Capability::log
     */
    class Logger
    {
        Capability owner_;

    public:
        /** @brief Check log support and acquire one logging alias.
         * @details Inspect error() before use. The backend table must outlive this
         * owner and the alias text is borrowed only for acquisition.
         * @param[in] c Selected backend context.
         * @param[in] a Exact granted logging alias.
         * @see Capability::open
         */
        Logger(roswasmc_context const& c, StringView a)
        {
            owner_.open(c, a, !c.backend ? UWVM_ROS_INVALID : !c.backend->log ? UWVM_ROS_UNSUPPORTED : 0);
        }

        /** @brief Inspect stored logging-alias acquisition status.
         * @details Later log/cleanup calls return their own errors separately.
         * @return Stored local/precheck/open error.
         * @see Logger::log
         */
        uint32_t error() const
        {
            return owner_.error();
        }

        /** @brief Validate and submit one complete UTF-8 log message.
         * @details Returns the stored open error first, then delegates scalar text
         * encoding and one log operation to Capability; host severity rights apply.
         * @param[in] text Borrowed UTF-8 bytes for this call, up to 4193782 bytes.
         * @return Stored open error, INVALID for bad text/size, or exact log status.
         * @see Capability::log
         */
        uint32_t log(StringView text) const
        {
            return error() ? error() : owner_.log(text);
        }

        /** @brief Attempt one close of the logging capability.
         * @details Applies Capability's actual-attempt retirement rules.
         * @return Exact cleanup status without retry.
         * @see Capability::close
         */
        uint32_t close()
        {
            return owner_.close();
        }

        /** @brief Inspect the local logging handle without transfer.
         * @details Does not probe current host-side permission or liveness.
         * @return Current handle bits, zero when locally empty.
         * @see Logger::is_open
         */
        uint64_t handle() const
        {
            return owner_.handle();
        }

        /** @brief Inspect whether a local logging handle remains.
         * @details Host-side revocation can still make a later log call fail.
         * @return True for a nonzero local capability handle.
         * @see Logger::handle
         */
        bool is_open() const
        {
            return owner_.is_open();
        }
    };

    /** @brief Single-role transform lookup or broadcast request owner.
     * @details Host policy binds frame names, lookup scope, numeric bounds and
     * broadcast permission. Calls reuse bounded Request storage without replay.
     * @see roswasmcpp::msg::Transform
     */
    class TF : public Request
    {
    public:
        /** @brief Bind one transform role and fixed response capacity.
         * @details Rejects selectors other than TF_LOOKUP/TF_BROADCAST locally.
         * The backend table must outlive this owner; alias text is not retained.
         * @param[in] c Selected backend context.
         * @param[in] a Borrowed exact granted transform alias.
         * @param[in] op TF_LOOKUP or TF_BROADCAST.
         * @param[in] capacity Reply capacity in bytes, 0..4193786.
         * @see Request::Request
         */
        TF(roswasmc_context const& c, StringView a, roswasmc_operation op, size_t capacity) :
            Request(c, a, op, capacity, op == ROSWASMC_TF_LOOKUP || op == ROSWASMC_TF_BROADCAST)
        {
        }

        /** @brief Request one complete transform at a selected lookup time.
         * @details Requires TF_LOOKUP. Sends eight timestamp bytes and decodes a
         * complete owning transform; frame pairing is selected by the host alias.
         * @param[in] time Nanoseconds in the host lookup clock; zero selects latest.
         * @param[out] value Owning transform, unchanged on reported failure.
         * @return DENIED for a wrong role, the request error, INVALID for malformed
         * transform bytes, or zero.
         * @see Codec<msg::Transform>
         */
        uint32_t lookup(uint64_t time, msg::Transform& value)
        {
            if(operation() != ROSWASMC_TF_LOOKUP)
            {
                return UWVM_ROS_DENIED;
            }
            wire::bytes input(8), out;
            size_t used = 0;
            roswasmc_encode_u64(time, buffer_data(input), input.size(), &used);
            Result r = call(input, out);
            return r.error ? r.error : Codec<msg::Transform>::decode(out, value) ? 0 : UWVM_ROS_INVALID;
        }

        /** @brief Encode and submit one complete transform broadcast.
         * @details Requires TF_BROADCAST and explicit host mutation/frame authority.
         * Finite numeric/size checks occur before import; no unit conversion or
         * quaternion normalization is performed, and no mutation is replayed.
         * @param[in] value Complete owning timestamp/frame/translation/quaternion.
         * @return DENIED for a wrong role, INVALID for encoding failure, or exact
         * request status; reply bytes are not interpreted.
         * @see Codec<msg::Transform>
         */
        uint32_t broadcast(msg::Transform const& value)
        {
            if(operation() != ROSWASMC_TF_BROADCAST)
            {
                return UWVM_ROS_DENIED;
            }
            wire::bytes input, out;
            if(!Codec<msg::Transform>::encode(value, input))
            {
                return UWVM_ROS_INVALID;
            }
            return call(input, out).error;
        }
    };

    /** @brief Owning lifecycle query value shared with wire helpers.
     * @details Contains the complete state identifier byte and owning UTF-8 label.
     * @see roswasmcpp::wire::lifecycle_state
     */
    typedef wire::lifecycle_state LifecycleState;

    /** @brief Explicit lifecycle query/change owner for supported backend roles.
     * @details Host policy controls state visibility and allowed transitions;
     * unsupported lifecycle support is returned rather than emulated locally.
     * @see Lifecycle::get_state
     */
    class Lifecycle : public Request
    {
    public:
        /** @brief Bind one lifecycle role and fixed reply capacity.
         * @details Rejects non-lifecycle selectors before opening; backend lifetime
         * and byte-capacity rules are inherited from Request.
         * @param[in] c Selected backend context.
         * @param[in] a Borrowed exact granted lifecycle alias.
         * @param[in] op LIFECYCLE_GET_STATE or LIFECYCLE_CHANGE_STATE.
         * @param[in] capacity Complete reply capacity in bytes, 0..4193786.
         * @see Request::Request
         */
        Lifecycle(roswasmc_context const& c, StringView a, roswasmc_operation op, size_t capacity) :
            Request(c, a, op, capacity, op == ROSWASMC_LIFECYCLE_GET_STATE || op == ROSWASMC_LIFECYCLE_CHANGE_STATE)
        {
        }

        /** @brief Query one complete owning lifecycle state/label.
         * @details Requires LIFECYCLE_GET_STATE and decodes the exact canonical
         * response before committing; the String does not borrow reply storage.
         * @param[out] value Owning state destination, unchanged on reported failure.
         * @return DENIED for a wrong selector, the request error, INVALID for
         * malformed state bytes, or zero.
         * @see roswasmc_decode_lifecycle_state
         */
        uint32_t get_state(LifecycleState& value)
        {
            if(operation() != ROSWASMC_LIFECYCLE_GET_STATE)
            {
                return UWVM_ROS_DENIED;
            }
            wire::bytes out;
            Result r = call(ByteView(), out);
            if(r.error)
            {
                return r.error;
            }
            roswasmc_lifecycle_state raw;
            if(roswasmc_decode_lifecycle_state(buffer_data(out), out.size(), &raw))
            {
                return UWVM_ROS_INVALID;
            }
            LifecycleState next;
            next.id = raw.id;
            next.label = detail::own(raw.label);
            value = next;
            return 0;
        }

        /** @brief Submit the one host-granted lifecycle transition and decode acceptance.
         * @details Requires LIFECYCLE_CHANGE_STATE. Canonical request is empty:
         * transition selection belongs to the host alias policy. Performs one
         * request and decodes an exact Boolean without retrying an uncertain change.
         * @param[out] accepted Native acceptance, unchanged on reported failure.
         * @return DENIED for a wrong role, exact request error, INVALID for malformed
         * Boolean response, or zero (including accepted=false).
         * @see roswasmc_lifecycle_change_state
         */
        uint32_t change_state(bool& accepted)
        {
            if(operation() != ROSWASMC_LIFECYCLE_CHANGE_STATE)
            {
                return UWVM_ROS_DENIED;
            }
            wire::bytes out;
            Result r = call(ByteView(), out);
            return r.error ? r.error : ParameterCodec<bool>::decode(out, accepted) ? 0 : UWVM_ROS_INVALID;
        }

        /** @brief Refuse the obsolete guest-selected lifecycle transition spelling.
         * @details Lifecycle transition selection is fixed by the host alias and
         * the canonical request has no transition byte. This source-compatible
         * spelling therefore performs no import; use change_state for a real call.
         * @param[in] transition Obsolete guest selector, ignored and never sent.
         * @return Stored setup error, DENIED for a wrong role, otherwise INVALID.
         * @deprecated Use change_state(bool&) with an explicitly granted alias.
         * @see Lifecycle::change_state
         */
        uint32_t change(uint8_t transition)
        {
            if(error())
            {
                return error();
            }
            if(operation() != ROSWASMC_LIFECYCLE_CHANGE_STATE)
            {
                return UWVM_ROS_DENIED;
            }
            (void)transition;
            return UWVM_ROS_INVALID;
        }
    };

    /** @brief Complete incoming Fibonacci goal metadata.
     * @details The goal ID correlates server replies; the signed order is a value,
     * not permission to accept or execute a goal.
     * @see roswasmcpp::ActionServer::take
     */
    struct FibonacciGoal
    {
        /** @brief Nonzero host-correlated action goal identifier.
         * @details Zero is the default invalid sentinel.
         * @see FibonacciGoal::order
         */
        uint64_t id;
        /** @brief Requested signed Fibonacci order.
         * @details Wire decoding preserves int32 bits; supported algorithm bounds
         * are enforced by the selected action endpoint/application.
         * @see FibonacciGoal::id
         */
        int32_t order;

        /** @brief Initialize an empty goal with zero ID/order.
         * @details Construction performs no host polling or goal acceptance.
         * @see FibonacciGoal::id
         */
        FibonacciGoal() : id(0), order(0)
        {
        }
    };

    namespace detail
    {
        inline bool action_decode(ByteView bytes, wire::action_sequence& out, bool terminal)
        {
            roswasmc_action_sequence raw;
            if(roswasmc_decode_action_sequence(bytes.data(), bytes.size(), terminal ? 1 : 0, &raw))
            {
                return false;
            }
            wire::action_sequence next;
            next.goal = raw.goal;
            next.kind = raw.kind;
            next.values.resize(raw.count);
            roswasmc_reader r = roswasmc_reader_init(raw.values_le, static_cast<size_t>(raw.count) * 4);
            for(size_t i = 0; i < next.values.size(); ++i)
            {
                if(!ParameterElement<int32_t>::read(&r, next.values[i]))
                {
                    return false;
                }
            }
            out = next;
            return true;
        }

        inline wire::bytes goal_bytes(uint64_t id)
        {
            wire::bytes out(8);
            size_t used = 0;
            roswasmc_encode_u64(id, buffer_data(out), out.size(), &used);
            return out;
        }
    }  // namespace detail

    /** @brief Single-role synchronous Fibonacci action requests.
     * @details The constructor fixes send, cancel or receive operation; wrong
     * methods return DENIED locally. This lightweight owner has no local goal
     * table, so the host enforces correlation/ownership. Use ActionClientBundle
     * when bounded local tracking and distinct role capabilities are required.
     * @see roswasmcpp::ActionClientBundle
     */
    class ActionClient : public Request
    {
    public:
        /** @brief Bind one action-client role and fixed reply capacity.
         * @details Rejects selectors outside ACTION_SEND_GOAL through
         * ACTION_RECEIVE_RESULT before opening. Backend lifetime follows Request.
         * @param[in] c Selected backend context.
         * @param[in] a Borrowed exact granted operation alias.
         * @param[in] op Canonical send/cancel/feedback/result selector.
         * @param[in] capacity Reply capacity in bytes, 0..4193786.
         * @see Request::Request
         */
        ActionClient(roswasmc_context const& c, StringView a, roswasmc_operation op, size_t capacity) :
            Request(c, a, op, capacity, op >= ROSWASMC_ACTION_SEND_GOAL && op <= ROSWASMC_ACTION_RECEIVE_RESULT)
        {
        }

        /** @brief Send one signed Fibonacci order and decode a nonzero goal ID.
         * @details Requires ACTION_SEND_GOAL. Serializes any int32 order; the host
         * checks supported order limits and authority. Sends exactly once and
         * requires an exact eight-byte nonzero ID reply; no local ID table is kept.
         * @param[in] order Requested signed order, subject to host algorithm bounds.
         * @param[out] id Correlation identifier, unchanged on reported failure.
         * @return DENIED for a wrong role, the request error, INVALID for bad ID
         * framing/value, or zero.
         * @see ActionClientBundle::send_goal
         */
        uint32_t send_goal(int32_t order, uint64_t& id)
        {
            if(operation() != ROSWASMC_ACTION_SEND_GOAL)
            {
                return UWVM_ROS_DENIED;
            }
            wire::bytes input = ParameterCodec<int32_t>::encode(order), out;
            Result r = call(input, out);
            if(r.error)
            {
                return r.error;
            }
            if(out.size() != 8)
            {
                return UWVM_ROS_INVALID;
            }
            uint64_t next = uwvm_ros_load_u64(buffer_data(out));
            if(!next)
            {
                return UWVM_ROS_INVALID;
            }
            id = next;
            return 0;
        }

        /** @brief Request cancellation using the selected own/any-goal role.
         * @details Requires ACTION_CANCEL_OWN_GOAL or ACTION_CANCEL_ANY_GOAL and a
         * nonzero ID. Any-goal cancellation needs its distinct host grant; a true
         * acceptance reply is not terminal completion and does not consume a goal.
         * @param[in] id Nonzero host-correlated goal ID.
         * @param[out] accepted Canonical native acceptance, unchanged on failure.
         * @return DENIED for a wrong role, INVALID for zero ID/bad Bool reply, the
         * exact request error, or zero (including accepted=false).
         * @see ActionClientBundle::cancel_own
         */
        uint32_t cancel(uint64_t id, bool& accepted)
        {
            if(operation() != ROSWASMC_ACTION_CANCEL_OWN_GOAL && operation() != ROSWASMC_ACTION_CANCEL_ANY_GOAL)
            {
                return UWVM_ROS_DENIED;
            }
            if(!id)
            {
                return UWVM_ROS_INVALID;
            }
            wire::bytes out;
            Result r = call(detail::goal_bytes(id), out);
            return r.error ? r.error : ParameterCodec<bool>::decode(out, accepted) ? 0 : UWVM_ROS_INVALID;
        }

        /** @brief Request all-goals cancellation only through the stronger role.
         * @details Requires ACTION_CANCEL_ANY_GOAL and sends its explicit zero-ID
         * selector. Host scope may include other owners; this helper never grants
         * that authority or retires local IDs on acceptance.
         * @param[out] accepted Native acceptance, unchanged on reported failure.
         * @return DENIED for a wrong role, exact request error, INVALID for malformed
         * Boolean response, or zero (including accepted=false).
         * @see ActionClientBundle::cancel_all
         */
        uint32_t cancel_all(bool& accepted)
        {
            if(operation() != ROSWASMC_ACTION_CANCEL_ANY_GOAL)
            {
                return UWVM_ROS_DENIED;
            }
            wire::bytes out;
            Result r = call(detail::goal_bytes(0), out);
            return r.error ? r.error : ParameterCodec<bool>::decode(out, accepted) ? 0 : UWVM_ROS_INVALID;
        }

        /** @brief Receive one exact sequence correlated with a nonzero goal.
         * @details Requires feedback/result role and verifies the returned goal ID.
         * Feedback has no kind byte; results require terminal kinds 2..4. This
         * lightweight facade keeps no local goal table; host ownership is checked
         * independently and ActionClientBundle adds bounded local ID tracking.
         * @param[in] id Nonzero requested goal ID under host ownership rules.
         * @param[out] value Owning sequence of at most 48 elements, unchanged on
         * reported failure.
         * @return DENIED for a wrong role, INVALID for bad ID/framing/correlation,
         * the request error such as WOULD_BLOCK, or zero for one sequence.
         * @see ActionClientBundle::receive_result
         */
        uint32_t receive(uint64_t id, wire::action_sequence& value)
        {
            if(operation() != ROSWASMC_ACTION_RECEIVE_FEEDBACK && operation() != ROSWASMC_ACTION_RECEIVE_RESULT)
            {
                return UWVM_ROS_DENIED;
            }
            if(!id)
            {
                return UWVM_ROS_INVALID;
            }
            wire::bytes out;
            Result r = call(detail::goal_bytes(id), out);
            if(r.error)
            {
                return r.error;
            }
            wire::action_sequence next;
            if(!detail::action_decode(out, next, operation() == ROSWASMC_ACTION_RECEIVE_RESULT) || next.goal != id ||
               (operation() == ROSWASMC_ACTION_RECEIVE_RESULT && next.kind < 2))
            {
                return UWVM_ROS_INVALID;
            }
            value = next;
            return 0;
        }
    };

    /** @brief Distinct borrowed aliases for a tracked action-client role bundle.
     * @details First four roles are required; cancel_any is optional and empty by
     * default construction. Views need remain live only through bundle acquisition.
     * @see roswasmcpp::ActionClientBundle::ActionClientBundle
     */
    struct ActionClientAliases
    {
        /** @brief Required goal-send alias.
         * @details Grants sending only under the host's action/type policy.
         * @see ActionClientBundle::send_goal
         */
        StringView send;
        /** @brief Required own-goal cancellation alias.
         * @details Does not authorize cancellation of other owners' goals.
         * @see ActionClientBundle::cancel_own
         */
        StringView cancel_own;
        /** @brief Required feedback-receive alias.
         * @details Independently granted from result reception.
         * @see ActionClientBundle::receive_feedback
         */
        StringView feedback;
        /** @brief Required terminal-result receive alias.
         * @details Successful validated terminal reception retires the tracked ID.
         * @see ActionClientBundle::receive_result
         */
        StringView result;
        /** @brief Optional stronger cancel-any/all alias, empty when absent.
         * @details Never synthesized from another role's permission.
         * @see ActionClientBundle::cancel_any
         */
        StringView cancel_any;
    };

    /** @brief Four/five-role action owner with bounded local goal tracking.
     * @details Delegates exact roles/correlation/terminal cleanup to the C action
     * bundle while owning its goal slots and receive bytes. Cancellation preserves
     * tracked IDs until a successful terminal result. Keep the backend alive and
     * serialize all use; this stationary bundle starts no worker or retry loop.
     * @see roswasmc_action_bundle
     */
    class ActionClientBundle
    {
        roswasmc_context context_;
        std::vector<uint64_t> goals_;
        roswasmc_action_bundle bundle_;
        wire::bytes buffer_;
        uint32_t setup_;
        Result last_;
        ActionClientBundle(ActionClientBundle const&);
        ActionClientBundle& operator= (ActionClientBundle const&);

        uint32_t receive(uint64_t goal, wire::action_sequence& output, bool terminal)
        {
            if(error())
            {
                last_ = detail::failure(error());
                return last_.error;
            }
            roswasmc_action_sequence raw;
            last_ = terminal ? roswasmc_action_bundle_result(&bundle_, goal, buffer_data(buffer_), buffer_.size(), &raw)
                             : roswasmc_action_bundle_feedback(&bundle_, goal, buffer_data(buffer_), buffer_.size(), &raw);
            if(last_.error)
            {
                return last_.error;
            }
            if(!last_.has_length || last_.length > buffer_.size() ||
               !detail::action_decode(ByteView(buffer_data(buffer_), static_cast<size_t>(last_.length)), output, terminal))
            {
                last_.error = UWVM_ROS_INVALID;
            }
            return last_.error;
        }

    public:
        /** @brief Acquire distinct action roles and fixed goal/receive storage.
         * @details Requires four aliases and optionally a fifth cancel-any alias.
         * C initialization validates uniqueness/support, acquires in role order and
         * preserves rollback after failure. Inspect error()/rollback_status().
         * @param[in] c Backend context whose table outlives this stationary bundle.
         * @param[in] aliases Borrowed role names for acquisition only.
         * @param[in] slots Local concurrent goal capacity, 1..1024.
         * @param[in] capacity Receive capacity in bytes, 0..4193786.
         * @see roswasmc_action_bundle_init
         */
        ActionClientBundle(roswasmc_context const& c, ActionClientAliases const& aliases, size_t slots, size_t capacity) :
            context_(c), bundle_(), setup_(0), last_()
        {
            if(!slots || slots > 1024u)
            {
                setup_ = UWVM_ROS_INVALID;
                return;
            }
            if(capacity > 4193786u)
            {
                setup_ = UWVM_ROS_TOO_LARGE;
                return;
            }
            goals_.resize(slots);
            buffer_.resize(capacity);
            roswasmc_action_aliases selected;
            selected.send = detail::text(aliases.send);
            selected.cancel_own = detail::text(aliases.cancel_own);
            selected.feedback = detail::text(aliases.feedback);
            selected.result = detail::text(aliases.result);
            selected.cancel_any = detail::text(aliases.cancel_any.empty() ? StringView() : aliases.cancel_any);
            setup_ = roswasmc_action_bundle_init(&context_, &bundle_, &selected, buffer_data(goals_), goals_.size());
        }

        /** @brief Attempt checked close of an active bundle once.
         * @details Discards the cleanup report; explicit close_checked is required
         * when failures or per-role statuses must be retained.
         * @see ActionClientBundle::close_checked
         */
        ~ActionClientBundle()
        {
            if(bundle_.active)
            {
                roswasmc_action_bundle_close_checked(&bundle_, 0, 0, 0);
            }
        }

        /** @brief Inspect setup/C-bundle status and local active state.
         * @details Returns setup error first, then C bundle error; an inactive
         * otherwise error-free bundle reports BAD_HANDLE. No host probe is made.
         * @return Primary stored error or zero for a locally active bundle.
         * @see ActionClientBundle::is_open
         */
        uint32_t error() const
        {
            return setup_ ? setup_ : bundle_.error ? bundle_.error : bundle_.active ? 0 : UWVM_ROS_BAD_HANDLE;
        }

        /** @brief Inspect the C bundle's local active flag.
         * @details Does not query host-side role expiry/revocation.
         * @return Whether the local bundle is active.
         * @see ActionClientBundle::error
         */
        bool is_open() const
        {
            return bundle_.active != 0;
        }

        /** @brief Count locally tracked outstanding goal IDs.
         * @details Cancellation does not decrement the count; successful terminal
         * result reception or actual bundle retirement releases local entries.
         * @return Outstanding goal count, bounded by construction slots.
         * @see ActionClientBundle::owns_goal
         */
        size_t goal_count() const
        {
            return bundle_.count;
        }

        /** @brief Inspect membership in the local goal table.
         * @details Does not establish host ownership beyond this recorded table.
         * @param[in] id Goal identifier to inspect; zero cannot be a tracked goal.
         * @return Whether this bundle currently tracks the ID.
         * @see ActionClientBundle::goal_count
         */
        bool owns_goal(uint64_t id) const
        {
            return roswasmc_action_bundle_owns(&bundle_, id) != 0;
        }

        /** @brief Inspect whether an active optional fifth role was acquired.
         * @details This local check does not guarantee the host will accept a
         * particular cancellation or that its grant has not since been revoked.
         * @return True for an active bundle with a nonzero fifth-role handle.
         * @see ActionClientBundle::cancel_any
         */
        bool has_cancel_any() const
        {
            return is_open() && bundle_.roles == 5 && bundle_.cap[4].handle;
        }

        /** @brief Copy the most recent send/cancel/receive result metadata.
         * @details Initialization and cleanup do not replace this value. Inspect
         * has_length before using length; no error authorizes implicit replay.
         * @return Last stored C operation result, initially value-initialized.
         * @see roswasmc_result
         */
        Result last_result() const
        {
            return last_;
        }

        /** @brief Copy the C bundle's construction-time rollback report.
         * @details Later explicit cleanup is returned separately by checked methods.
         * @return Preserved primary/cleanup errors and rollback attempt counts.
         * @see roswasmc_action_bundle_init
         */
        roswasmc_cleanup_report rollback_status() const
        {
            return bundle_.rollback;
        }

        /** @brief Copy local handle bits in stable role order.
         * @details Order is send, cancel-own, feedback, result, cancel-any. An absent
         * fifth role is zero; this snapshot transfers no ownership or permission.
         * @return Five handle values, including empty/retired zero entries.
         * @see ActionClientAliases
         */
        FixedArray<uint64_t, 5> handles() const
        {
            FixedArray<uint64_t, 5> out;
            for(size_t i = 0; i < 5; ++i)
            {
                out[i] = bundle_.cap[i].handle;
            }
            return out;
        }

        /** @brief Send one bounded Fibonacci goal and track its unique ID.
         * @details Checks order 0..46 and a free local slot before import. The C
         * bundle validates exact nonzero/unique ID reply before table insertion;
         * a failed/uncertain send is never replayed automatically.
         * @param[in] order Fibonacci order in 0..46.
         * @param[out] id New correlated ID, unchanged on reported failure.
         * @return Exact setup/local/host send error or zero for a tracked goal.
         * @see roswasmc_action_bundle_send_goal
         */
        uint32_t send_goal(int32_t order, uint64_t& id)
        {
            last_ = error() ? detail::failure(error()) : roswasmc_action_bundle_send_goal(&bundle_, order, &id);
            return last_.error;
        }

        /** @brief Request cancellation of one locally tracked goal.
         * @details Requires a nonzero owned ID and the cancel-own role. Successful
         * acceptance does not remove the local ID or imply terminal completion.
         * @param[in] id Nonzero locally tracked goal identifier.
         * @param[out] accepted Native acceptance Boolean, unchanged on failure.
         * @return Exact C/local/host status; zero includes accepted=false.
         * @see roswasmc_action_bundle_cancel_own
         */
        uint32_t cancel_own(uint64_t id, bool& accepted)
        {
            int next = 0;
            last_ = error() ? detail::failure(error()) : roswasmc_action_bundle_cancel_own(&bundle_, id, &next);
            if(!last_.error)
            {
                accepted = next != 0;
            }
            return last_.error;
        }

        /** @brief Request a nonzero goal's cancellation through the optional role.
         * @details Requires the distinct fifth alias, otherwise DENIED before the
         * request. May target goals outside the local table when host policy allows;
         * no local goal is removed merely because cancellation was accepted.
         * @param[in] id Nonzero target goal identifier.
         * @param[out] accepted Native acceptance Boolean, unchanged on failure.
         * @return Exact C/local/host status, with zero distinct from acceptance.
         * @see roswasmc_action_bundle_cancel_any
         */
        uint32_t cancel_any(uint64_t id, bool& accepted)
        {
            int next = 0;
            last_ = error() ? detail::failure(error()) : roswasmc_action_bundle_cancel_any(&bundle_, id, &next);
            if(!last_.error)
            {
                accepted = next != 0;
            }
            return last_.error;
        }

        /** @brief Request all-goal cancellation using the stronger fifth role.
         * @details Sends the protocol's zero-ID all-goals selector only after an
         * explicit cancel-any grant. Scope may include other owners under host
         * policy; this method does not grant that authority or retire local IDs.
         * @param[out] accepted Native acceptance Boolean, unchanged on failure.
         * @return DENIED without the optional role or the exact C/local/host status.
         * @see roswasmc_action_bundle_cancel_all
         */
        uint32_t cancel_all(bool& accepted)
        {
            int next = 0;
            last_ = error() ? detail::failure(error()) : roswasmc_action_bundle_cancel_all(&bundle_, &next);
            if(!last_.error)
            {
                accepted = next != 0;
            }
            return last_.error;
        }

        /** @brief Receive one exact feedback sequence for a tracked goal.
         * @details Uses fixed receive storage once, validates correlation and copies
         * at most 48 signed elements. Feedback does not retire the local goal ID.
         * @param[in] id Nonzero locally tracked goal identifier.
         * @param[out] out Owning sequence, unchanged on reported failure.
         * @return Exact C/local/host result such as WOULD_BLOCK, or zero for feedback.
         * @see roswasmc_action_bundle_feedback
         */
        uint32_t receive_feedback(uint64_t id, wire::action_sequence& out)
        {
            return receive(id, out, false);
        }

        /** @brief Receive a validated terminal result and retire its tracked ID.
         * @details The C bundle requires matching ID and kind 2..4 before retirement.
         * C++ then copies the complete sequence; allocation failure follows library
         * policy after C retirement and never authorizes resubmitting this receive.
         * @param[in] id Nonzero locally tracked goal identifier.
         * @param[out] out Owning terminal sequence, unchanged on reported failure.
         * @return Exact C/local/host result, or zero for one complete terminal result.
         * @see roswasmc_action_bundle_result
         */
        uint32_t receive_result(uint64_t id, wire::action_sequence& out)
        {
            return receive(id, out, true);
        }

        /** @brief Close all live roles once with complete per-role status reporting.
         * @details Prechecks destinations/callback availability before retirement;
         * local unsupported cleanup preserves the active bundle. Actual retirement
         * clears its local goal table and closes in reverse acquisition order.
         * @param[out] statuses Optional nonoverlapping array in acquisition order.
         * @param[in] count Status elements, at least 4 or 5 roles when statuses exists.
         * @param[in] primary Existing primary error retained independently.
         * @return Complete primary/cleanup report and attempted/failed counts.
         * @see roswasmc_action_bundle_close_checked
         */
        roswasmc_cleanup_report close_checked(uint32_t* statuses = 0, size_t count = 0, uint32_t primary = 0)
        {
            return roswasmc_action_bundle_close_checked(&bundle_, primary, statuses, count);
        }

        /** @brief Revoke all roles with independent host grants and a full report.
         * @details Uses the same destination/callback prechecks and reverse order
         * as close_checked. No optional revoke callback or authority is invented.
         * @param[out] statuses Optional nonoverlapping array in acquisition order.
         * @param[in] count Writable status elements, at least the acquired role count.
         * @param[in] primary Existing primary failure to preserve separately.
         * @return Complete checked revocation report.
         * @see roswasmc_action_bundle_revoke_checked
         */
        roswasmc_cleanup_report revoke_checked(uint32_t* statuses = 0, size_t count = 0, uint32_t primary = 0)
        {
            return roswasmc_action_bundle_revoke_checked(&bundle_, primary, statuses, count);
        }

        /** @brief Close the bundle and return only the first cleanup error.
         * @details Use close_checked to retain per-role statuses and counts.
         * @return Aggregate checked-close cleanup status.
         * @see ActionClientBundle::close_checked
         */
        uint32_t close()
        {
            return close_checked().cleanup_error;
        }

        /** @brief Revoke the bundle and return only the first cleanup error.
         * @details Requires explicit host rights and uses the checked cleanup path.
         * @return Aggregate checked-revoke cleanup status.
         * @see ActionClientBundle::revoke_checked
         */
        uint32_t revoke()
        {
            return revoke_checked().cleanup_error;
        }
    };

    /** @brief Caller-driven Fibonacci server with distinct advertise/respond roles.
     * @details Exposes complete incoming goals and explicit feedback/result sends.
     * It keeps no algorithm worker or local goal registry; the host verifies the
     * response role's correlation, kind and ownership permissions.
     * @see roswasmcpp::ServerOwners
     */
    class ActionServer : public ServerOwners
    {
    public:
        /** @brief Acquire action-server roles and fixed incoming-goal storage.
         * @details Inherited initialization advertises once and preserves rollback.
         * @param[in] c Backend context whose table outlives this server.
         * @param[in] a Nonempty granted action-advertise alias.
         * @param[in] r Distinct nonempty action-response alias.
         * @param[in] capacity Receive bytes in 0..4193786; a goal needs twelve bytes.
         * @see ServerOwners::ServerOwners
         */
        ActionServer(roswasmc_context const& c, StringView a, StringView r, size_t capacity) : ServerOwners(c, a, r, capacity, true)
        {
        }

        /** @brief Poll and decode at most one complete incoming Fibonacci goal.
         * @details Requires an exact twelve-byte envelope, nonzero ID and signed
         * order. Does not run a callback, accept/reject a goal, or resize/retry poll.
         * @param[out] value Complete goal, unchanged on reported failure.
         * @return CONFLICT while busy, exact initialization/poll error, INVALID for
         * malformed goal framing, or zero for one decoded goal.
         * @see FibonacciGoal
         */
        uint32_t take(FibonacciGoal& value)
        {
            if(busy_)
            {
                return UWVM_ROS_CONFLICT;
            }
            if(error())
            {
                return error();
            }
            Result r = advertise_.poll(buffer_data(buffer_), buffer_.size());
            if(r.error)
            {
                return r.error;
            }
            if(!r.has_length || r.length != 12 || r.length > buffer_.size())
            {
                return UWVM_ROS_INVALID;
            }
            FibonacciGoal next;
            next.id = uwvm_ros_load_u64(buffer_data(buffer_));
            if(!next.id || !ParameterCodec<int32_t>::decode(ByteView(buffer_data(buffer_) + 8, 4), next.order))
            {
                return UWVM_ROS_INVALID;
            }
            value = next;
            return 0;
        }

        /** @brief Encode and send one complete marked Fibonacci response.
         * @details Requires nonzero goal, kind 1 feedback or terminal kind 2..4,
         * and at most 48 elements. Server responses always include the marker byte;
         * the feedback receive format's omitted marker is not a server-send format.
         * Host ownership/response permission remains authoritative; no send retries.
         * @param[in] value Complete owning correlated sequence for this call.
         * @return Stored initialization error, INVALID for local encoding failure,
         * or the exact ACTION_RESPOND request error; reply bytes are not interpreted.
         * @see roswasmc_encode_action_sequence
         */
        uint32_t respond(wire::action_sequence const& value)
        {
            if(error())
            {
                return error();
            }
            if(!value.goal || value.values.size() > 48)
            {
                return UWVM_ROS_INVALID;
            }
            wire::bytes sequence(value.values.size() * 4);
            roswasmc_writer w = roswasmc_writer_init(buffer_data(sequence), sequence.size());
            for(size_t i = 0; i < value.values.size(); ++i)
            {
                detail::ParameterElement<int32_t>::write(&w, value.values[i]);
            }
            roswasmc_action_sequence raw;
            raw.goal = value.goal;
            raw.kind = value.kind;
            raw.count = static_cast<uint32_t>(value.values.size());
            raw.values_le = buffer_data(sequence);
            wire::bytes out(13 + sequence.size());
            size_t used = 0;
            if(roswasmc_encode_action_sequence(&raw, 1, buffer_data(out), out.size(), &used))
            {
                return UWVM_ROS_INVALID;
            }
            return respond_.request(ROSWASMC_ACTION_RESPOND, out, 0, 0).error;
        }

        /** @brief Send a canonical marked response through the legacy framing overload.
         * @details A true legacy flag retains its prior marked-format behavior,
         * accepting kind 1..4. False selects feedback kind 1, now also carrying the
         * required server marker. No marker is silently changed to another outcome.
         * @param[in] value Complete owning correlated sequence for this call.
         * @param[in] terminal Legacy framing flag: true admits all marked outcomes,
         * false requires feedback kind 1. Both send the marker required by the host.
         * @return Setup error, INVALID for mismatched feedback/fields, or exact
         * response request status; invalid local fields cause no import.
         * @deprecated Use respond(value) with an explicit canonical kind.
         * @see ActionServer::respond(wire::action_sequence const&)
         */
        uint32_t respond(wire::action_sequence const& value, bool terminal)
        {
            if(error())
            {
                return error();
            }
            if(!terminal && value.kind != 1)
            {
                return UWVM_ROS_INVALID;
            }
            return respond(value);
        }
    };

    /** @brief Event poll status plus its conditionally valid decoded header.
     * @details Inspect result.error first; only a successful complete poll makes
     * header usable. Payload bytes remain in the caller's poll buffer.
     * @see roswasmcpp::EventStream::poll
     */
    struct EventPoll
    {
        /** @brief Exact event-backend result and explicit length-validity flag.
         * @details Error/length information never authorizes automatic event replay.
         * @see roswasmc_result
         */
        Result result;
        /** @brief Complete canonical header, valid only when result.error is zero.
         * @details Describes payload bytes stored separately in the caller's buffer.
         * @see roswasmc_event_header
         */
        roswasmc_event_header header;

        /** @brief Value-initialize empty status/header storage.
         * @details Construction alone is not a successful poll or valid event.
         * @see EventStream::poll
         */
        EventPoll() : result(), header()
        {
        }
    };

    /** @brief Borrowed observer/source binding with ordered event validation.
     * @details Borrows two stationary Capability owners and an explicit versioned
     * event backend. Keep them alive/stable for this stream's lifetime and serialize
     * polling/dispatch. No ownership or host event permission is synthesized.
     * @see roswasmc_event_watch
     */
    class EventStream
    {
        Capability& observer_;
        Capability& source_;
        roswasmc_event_backend const& api_;
        uint64_t source_handle_, correlation_, sequence_, instance_, session_;
        uint32_t error_;
        bool busy_;
        EventStream(EventStream const&);
        EventStream& operator= (EventStream const&);

    public:
        /** @brief Watch an explicit source through a separately granted observer.
         * @details Requires both owners to have been opened with the same original
         * C context object, not merely equivalent table pointers. Captures the
         * source handle and performs one event-watch binding; inspect error().
         * @param[in,out] observer Live stationary observer-role owner, borrowed.
         * @param[in,out] source Live stationary source owner, borrowed.
         * @param[in] api Immutable supported event backend, borrowed for this lifetime.
         * @param[in] correlation Optional nonzero correlation filter, default zero.
         * @see EventStream::poll
         */
        EventStream(Capability& observer, Capability& source, roswasmc_event_backend const& api, uint64_t correlation = 0) :
            observer_(observer), source_(source), api_(api), source_handle_(source.handle()), correlation_(correlation), sequence_(0), instance_(0),
            session_(0), error_(0), busy_(false)
        {
            roswasmc_capability observed = observer_.cap_, selected = source_.cap_;
            observed.context = selected.context = &source_.context_;
            error_ = observer_.identity_ != source_.identity_ ? UWVM_ROS_INVALID : roswasmc_event_watch(&api_, &observed, &selected, correlation);
        }

        /** @brief Inspect the stored event-watch initialization status.
         * @details Does not include later poll/submit/readiness/cleanup errors.
         * @return Exact local/watch error recorded during construction.
         * @see EventStream::EventStream
         */
        uint32_t error() const
        {
            return error_;
        }

        /** @brief Poll and validate at most one complete ordered event envelope.
         * @details Requires valid backend/source ID and contiguous sequences from 1,
         * with stable instance/session after the first event. A configured nonzero
         * correlation rejects a different nonzero event correlation; zero event
         * correlation is still admitted. Sequence state advances only after full
         * validation. A consumed invalid/oversized event is never repolled here.
         * @param[out] output Caller-owned writable event-envelope storage.
         * @param[in] capacity Available bytes under the event backend's bounds;
         * a complete event needs at least the 64-byte header.
         * @return Exact status and conditionally valid header; ignore header on error.
         * @see roswasmc_event_decode
         */
        EventPoll poll(void* output, size_t capacity)
        {
            EventPoll out;
            if(error_ || busy_)
            {
                out.result = detail::failure(busy_ ? UWVM_ROS_CONFLICT : error_);
                return out;
            }
            out.result = roswasmc_event_poll(&api_, &observer_.cap_, output, capacity);
            if(out.result.error)
            {
                return out;
            }
            if(!out.result.has_length || out.result.length > capacity)
            {
                out.result.error = UWVM_ROS_INVALID;
                return out;
            }
            uint32_t code = roswasmc_event_decode(output, out.result.length, &out.header);
            roswasmc_event_header const& h = out.header;
            if(!code && (h.backend != api_.version || h.source != source_handle_ || sequence_ == UINT64_MAX || h.sequence != sequence_ + 1 ||
                         (instance_ && (h.instance != instance_ || h.session != session_)) || (correlation_ && h.correlation && h.correlation != correlation_)))
            {
                code = UWVM_ROS_INVALID;
            }
            if(code)
            {
                out.result.error = code;
                return out;
            }
            sequence_ = h.sequence;
            instance_ = h.instance;
            session_ = h.session;
            return out;
        }

        /** @brief Synchronous callback over a borrowed header and event payload.
         * @details Neither reference/view survives callback return unless copied.
         * The first argument is caller-managed state; callbacks must obey the
         * selected exception profile and cannot reenter guarded dispatch/cleanup.
         * @see EventStream::dispatch
         */
        typedef void (*Callback)(void*, roswasmc_event_header const&, ByteView);

        /** @brief Poll one validated event and invoke a supplied callback once.
         * @details Rejects null callback before polling. Header is local and payload
         * borrows output after its 64-byte header. Busy state guards recursive
         * poll/dispatch/close/revoke during invocation and is restored on unwinding.
         * @param[out] output Writable envelope storage retained through invocation.
         * @param[in] capacity Available event-envelope bytes.
         * @param[in] callback Nonnull synchronous function pointer.
         * @param[in] user Borrowed callback state, default null, live through return.
         * @return INVALID for no callback, the exact poll error, or zero after one
         * invocation; callback exceptions are not converted to ABI error codes.
         * @see EventStream::poll
         */
        uint32_t dispatch(void* output, size_t capacity, Callback callback, void* user = 0)
        {
            if(!callback)
            {
                return UWVM_ROS_INVALID;
            }
            EventPoll event = poll(output, capacity);
            if(event.result.error)
            {
                return event.result.error;
            }
            detail::PollLease lease(busy_);
            callback(user, event.header, ByteView(static_cast<unsigned char const*>(output) + 64, static_cast<size_t>(event.header.payload_bytes)));
            return 0;
        }

        /** @brief Query explicit backend readiness without consuming an event.
         * @details Returns the stored watch error first; readiness/absence is
         * meaningful only after a successful backend result, not after a refusal.
         * @param[out] out Caller readiness destination, interpreted only on success.
         * @return Exact local/event-backend readiness status.
         * @see roswasmc_event_ready
         */
        uint32_t ready(roswasmc_event_readiness& out) const
        {
            return error_ ? error_ : roswasmc_event_ready(&api_, &observer_.cap_, &out);
        }

        /** @brief Submit one asynchronous service body on the watched source.
         * @details Checks stored watch status and that source still has its captured
         * handle. The explicit event API/host must grant service submission and
         * correlation; this call does not wait for completion or replay a refusal.
         * @param[in] bytes Borrowed complete canonical service body for this call.
         * @param[out] request Backend request ID, interpreted only on success.
         * @return BAD_HANDLE for a replaced source or exact local/backend status.
         * @see roswasmc_service_submit
         */
        uint32_t submit(ByteView bytes, uint64_t& request) const
        {
            if(error_)
            {
                return error_;
            }
            if(source_.handle() != source_handle_)
            {
                return UWVM_ROS_BAD_HANDLE;
            }
            roswasmc_capability observed = observer_.cap_, selected = source_.cap_;
            observed.context = selected.context = &source_.context_;
            return roswasmc_service_submit(&api_, &selected, &observed, bytes.data(), bytes.size(), &request);
        }

        /** @brief Close the borrowed observer owner once while idle.
         * @details Returns CONFLICT during callback dispatch; source ownership stays
         * with its caller. Capability's local unsupported rules apply.
         * @return CONFLICT or exact observer close status.
         * @see Capability::close
         */
        uint32_t close_checked()
        {
            return busy_ ? UWVM_ROS_CONFLICT : observer_.close();
        }

        /** @brief Revoke the observer alias through its explicit host grant.
         * @details Returns CONFLICT during dispatch and otherwise delegates to the
         * borrowed observer owner; no source revocation is performed by this method.
         * @return CONFLICT or exact observer revoke status.
         * @see Capability::revoke
         */
        uint32_t revoke_checked()
        {
            return busy_ ? UWVM_ROS_CONFLICT : observer_.revoke();
        }
    };

    /** @brief Owning bounded event buffer and callback over a borrowed EventStream.
     * @details Keep the stationary stream and its capability/backend borrowers
     * alive through all use. poll_once dispatches at most one event synchronously;
     * callback header/payload borrows last only during that invocation.
     * @see roswasmcpp::EventStream
     */
    class EventSubscription
    {
        EventStream& stream_;
        wire::bytes buffer_;
        EventStream::Callback callback_;
        void* user_;
        uint32_t error_;
        EventSubscription(EventSubscription const&);
        EventSubscription& operator= (EventSubscription const&);

    public:
        /** @brief Allocate event storage and bind a callback without polling.
         * @details Records stream initialization/capacity errors. A null callback
         * can be replaced later; error() returns INVALID while none is set.
         * @param[in,out] stream Stationary borrowed stream that outlives this object.
         * @param[in] capacity Complete envelope capacity in bytes, 64..4194304.
         * @param[in] callback Synchronous event function pointer, possibly null.
         * @param[in] user Borrowed callback state, default null.
         * @see EventSubscription::on_event
         */
        EventSubscription(EventStream& stream, size_t capacity, EventStream::Callback callback, void* user = 0) :
            stream_(stream), callback_(callback), user_(user), error_(capacity < 64         ? UWVM_ROS_INVALID
                                                                      : capacity > 4194304u ? UWVM_ROS_TOO_LARGE
                                                                                            : stream.error())
        {
            if(!error_)
            {
                buffer_.resize(capacity);
            }
        }

        /** @brief Inspect stored setup status and callback availability.
         * @details A missing callback yields INVALID; per-poll errors are returned
         * by poll_once rather than recorded here.
         * @return Stored setup error, INVALID for no callback, or zero.
         * @see EventSubscription::poll_once
         */
        uint32_t error() const
        {
            return error_ ? error_ : callback_ ? 0 : UWVM_ROS_INVALID;
        }

        /** @brief Replace the callback and borrowed state for later dispatch.
         * @details Retains no ownership of user. Current dispatch has already
         * received its function/state arguments, so replacement affects later polls.
         * @param[in] callback Function pointer, or null to clear future dispatch.
         * @param[in] user Borrowed state kept alive through active/future calls.
         * @see EventStream::Callback
         */
        void on_event(EventStream::Callback callback, void* user = 0)
        {
            callback_ = callback;
            user_ = user;
        }

        /** @brief Dispatch at most one validated event using the owned buffer.
         * @details Returns setup/missing-callback errors before polling and delegates
         * sequence, envelope and reentry validation to EventStream.
         * @return Exact setup/dispatch error or zero after one callback invocation.
         * @see EventStream::dispatch
         */
        uint32_t poll_once()
        {
            return error() ? error() : stream_.dispatch(buffer_data(buffer_), buffer_.size(), callback_, user_);
        }

        /** @brief Close the stream's observer owner through checked idle cleanup.
         * @details The stream/owner references still require their ordinary lifetime
         * discipline; this call does not destroy the borrowed objects.
         * @return Exact checked observer-close status.
         * @see EventStream::close_checked
         */
        uint32_t close()
        {
            return stream_.close_checked();
        }

        /** @brief Revoke the stream's observer alias through its explicit grant.
         * @details Reentry is refused by the stream's busy guard.
         * @return Exact checked observer-revoke status.
         * @see EventStream::revoke_checked
         */
        uint32_t revoke()
        {
            return stream_.revoke_checked();
        }
    };

    /** @brief Stationary heap-owner slot for C++98-compatible output factories.
     * @details Exclusively deletes one T pointer, initially null. Does not transfer
     * ownership on copy/move and supplies no reference counting or synchronization.
     * Factory initialization errors can leave a nonnull object for status inspection.
     * @tparam T Complete owned object type, destructible with scalar delete.
     * @see Scoped::reset
     */
    template <class T>
    class Scoped
    {
        T* value_;
        Scoped(Scoped const&);
        Scoped& operator= (Scoped const&);

    public:
        /** @brief Construct an empty slot without allocation.
         * @details No T exists until reset/factory assignment.
         * @see Scoped::get
         */
        Scoped() : value_(0)
        {
        }

        /** @brief Delete the currently owned object once, if any.
         * @details Any resource cleanup result must be collected from T before
         * deletion when its destructor cannot report it.
         * @see Scoped::reset
         */
        ~Scoped()
        {
            delete value_;
        }

        /** @brief Borrow the owned pointer without releasing it.
         * @details Valid until reset/destruction; const slot inspection still
         * permits mutation of its owned T through the returned pointer.
         * @return Borrowed T pointer, possibly null.
         * @see Scoped::operator->
         */
        T* get() const
        {
            return value_;
        }

        /** @brief Borrow member access to a nonempty owned object.
         * @details Caller checks get() before dereferencing an empty slot.
         * @return Borrowed mutable T pointer with this slot's ownership lifetime.
         * @see Scoped::get
         */
        T* operator->() const
        {
            return value_;
        }

        /** @brief Borrow a reference to the owned object.
         * @details Requires a nonempty slot; dereferencing null has no error return.
         * @return Mutable reference valid until reset/destruction.
         * @see Scoped::get
         */
        T& operator* () const
        {
            return *value_;
        }

        /** @brief Adopt one scalar-delete pointer and delete the prior object.
         * @details Passing the current pointer is a no-op. Otherwise adopts value
         * before deleting the old object; callers must not supply a shared, stack,
         * array or already-owned-by-another-slot pointer.
         * @param[in] value Exclusive T pointer to adopt, default null to empty.
         * @see Scoped::~Scoped
         */
        void reset(T* value = 0)
        {
            if(value_ != value)
            {
                T* old = value_;
                value_ = value;
                delete old;
            }
        }
    };

    /** @brief Stationary factory context and owning diagnostic label.
     * @details Creates no native ROS node or host grant. Factories use explicit
     * aliases and copy context metadata into resource owners. A borrowed Context
     * gate disables later factory contexts after shutdown; already created handles
     * keep their separate host lifecycle/cleanup rules. Keep backend and optional
     * Context alive, and serialize factory/resource access where state is shared.
     * @see roswasmcpp::Context
     */
    class Node
    {
        roswasmc_context context_, stopped_;
        Context const* lifecycle_;
        std::string label_;
        Node(Node const&);
        Node& operator= (Node const&);

    public:
        /** @brief Bind a backend and copy a local diagnostic label.
         * @details No alias/native node is opened; label has no endpoint or grant
         * meaning. This overload has no external Context shutdown gate.
         * @param[in] backend Dispatch table borrowed for Node/resource lifetimes.
         * @param[in] label Borrowed live bytes for copying, default empty.
         * @see Node::context
         */
        explicit Node(roswasmc_backend const& backend, StringView label = StringView()) :
            context_(), stopped_(), lifecycle_(0), label_(label.size() ? std::string(label.data(), label.size()) : std::string())
        {
            context_.backend = &backend;
        }

        /** @brief Bind a borrowed Context gate and copy a diagnostic label.
         * @details Context and its backend must outlive this stationary Node.
         * Shutdown prevents a live backend context from reaching later factories.
         * @param[in] c Stationary local Context, borrowed for this Node's lifetime.
         * @param[in] label Borrowed live label bytes to copy, default empty.
         * @see Node::context
         */
        explicit Node(Context const& c, StringView label = StringView()) :
            context_(), stopped_(), lifecycle_(&c), label_(label.size() ? std::string(label.data(), label.size()) : std::string())
        {
            context_.backend = &c.backend();
        }

        /** @brief Borrow the factory's current inline C context.
         * @details Returns the normal inline context while active, or an empty
         * backend context after its borrowed Context stops. References belong to
         * this stationary Node; callers must not infer new host rights from them.
         * @return Inline C context reference, valid until Node destruction.
         * @see Node::Node
         */
        roswasmc_context const& context() const
        {
            return lifecycle_ && !lifecycle_->running() ? stopped_ : context_;
        }

        /** @brief Borrow the locally owned diagnostic label.
         * @details The view remains valid until Node destruction; no host metadata
         * is queried and the label does not select an endpoint.
         * @return Counted immutable view of the owned label bytes.
         * @see Node::Node
         */
        StringView label() const
        {
            return StringView(label_);
        }

        /** @brief Open an existing empty typed publisher using this factory context.
         * @details Works in C++98 onward and preserves Publisher's explicit open
         * status/conflict semantics. No by-value owner transfer is required.
         * @tparam M Complete message type with a Codec specialization.
         * @param[in,out] output Publisher receiving its acquisition status/handle.
         * @param[in] alias Borrowed exact granted topic.publish alias.
         * @return Exact publisher open/precheck/host status.
         * @see Publisher::open
         */
        template <class M>
        uint32_t create_publisher(Publisher<M>& output, StringView alias)
        {
            return output.open(context(), alias);
        }

        /** @brief Open/activate an existing empty typed topic subscription.
         * @details Returns primary setup status; output retains separate rollback
         * status on activation failure. No callback is installed by this factory.
         * @tparam M Complete message type with a Codec specialization.
         * @param[in,out] output Stationary destination subscription.
         * @param[in] alias Borrowed exact granted topic.subscribe alias.
         * @param[in] capacity Complete receive capacity in bytes, 0..4193786.
         * @return Exact Subscription::open status.
         * @see Subscription::rollback_error
         */
        template <class M>
        uint32_t create_subscription(Subscription<M>& output, StringView alias, size_t capacity)
        {
            return output.open(context(), alias, capacity);
        }

        /** @brief Open/activate an empty typed parameter-event subscription.
         * @details Selects parameter-event activation rather than topic subscription;
         * visibility/type still comes from the explicit host alias grant.
         * @tparam M Complete supported event type with a Codec specialization.
         * @param[in,out] output Stationary subscription retaining setup/rollback status.
         * @param[in] alias Borrowed exact granted parameter-event alias.
         * @param[in] capacity Receive capacity in bytes, 0..4193786.
         * @return Exact Subscription::open status.
         * @see Subscription::open
         */
        template <class M>
        uint32_t create_parameter_events(Subscription<M>& output, StringView alias, size_t capacity)
        {
            return output.open(context(), alias, capacity, true);
        }
#if !ROSWASM_CPP_LEGACY
        /** @brief Construct a typed publisher by value in C++11-or-newer modes.
         * @details The resulting owner retains acquisition status; inspect error()
         * before use. The explicit backend table must outlive the returned owner.
         * @tparam M Complete message type with a Codec specialization.
         * @param[in] alias Borrowed exact granted topic.publish alias.
         * @return Publisher owner carrying its handle or initialization error.
         * @see Publisher::Publisher
         */
        template <class M>
        Publisher<M> create_publisher(StringView alias)
        {
            return Publisher<M>(context(), alias);
        }

        /** @brief Construct an activated topic subscription by value in modern modes.
         * @details C++11-or-newer moves preserve the stable backend metadata; install
         * a callback and inspect error()/rollback_error() on the returned owner.
         * @tparam M Complete message type with a Codec specialization.
         * @param[in] alias Borrowed exact granted topic.subscribe alias.
         * @param[in] capacity Receive bytes in 0..4193786.
         * @return Subscription owner with bounded storage and setup status.
         * @see Subscription::Subscription
         */
        template <class M>
        Subscription<M> create_subscription(StringView alias, size_t capacity)
        {
            return Subscription<M>(context(), alias, capacity);
        }

        /** @brief Construct a typed parameter-event subscription by modern value.
         * @details Requires C++11 or newer; returns setup/rollback state and installs
         * no callback. The backend table must outlive the returned owner.
         * @tparam M Supported owning event type with a Codec specialization.
         * @param[in] alias Borrowed exact granted parameter-event alias.
         * @param[in] capacity Receive capacity in bytes, 0..4193786.
         * @return Owning parameter-event subscription with explicit setup status.
         * @see Subscription::Subscription
         */
        template <class M>
        Subscription<M> create_parameter_events(StringView alias, size_t capacity)
        {
            return Subscription<M>(context(), alias, capacity, true);
        }

        /** @brief Construct a synchronous service client by value in modern modes.
         * @details Requires C++11 or newer; inspect the returned owner's error().
         * No service request is sent during construction.
         * @tparam S Service definition with complete ServiceCodec support.
         * @param[in] alias Borrowed exact granted service.call alias.
         * @param[in] capacity Reply capacity in bytes, 0..4193786.
         * @return Client owner carrying acquisition status and bounded storage.
         * @see ServiceClient::ServiceClient
         */
        template <class S>
        ServiceClient<S> create_client(StringView alias, size_t capacity)
        {
            return ServiceClient<S>(context(), alias, capacity);
        }

        /** @brief Construct one explicit raw request-role owner by modern value.
         * @details Requires C++11 or newer; operation support is checked before
         * acquisition but the host alias grant remains authoritative.
         * @param[in] alias Borrowed exact granted request alias.
         * @param[in] op Canonical operation to retain for later calls.
         * @param[in] capacity Reply capacity in bytes, 0..4193786.
         * @return Request owner with its acquisition status and fixed buffer.
         * @see Request::Request
         */
        Request request(StringView alias, roswasmc_operation op, size_t capacity)
        {
            return Request(context(), alias, op, capacity);
        }
#endif
        /** @brief Allocate a stationary service client into an empty named slot.
         * @details A nonempty slot returns CONFLICT. After allocation the slot stays
         * nonempty even if initialization fails, allowing error/cleanup inspection;
         * output is not rolled back to null on a reported acquisition failure.
         * @tparam S Service definition with complete ServiceCodec support.
         * @param[in,out] output Exclusive empty scalar-delete owner slot.
         * @param[in] alias Borrowed exact granted service.call alias.
         * @param[in] capacity Reply bytes in 0..4193786.
         * @return CONFLICT or the newly owned client's initialization status.
         * @see Scoped::reset
         */
        template <class S>
        uint32_t create_client(Scoped<ServiceClient<S> >& output, StringView alias, size_t capacity)
        {
            if(output.get())
            {
                return UWVM_ROS_CONFLICT;
            }
            output.reset(new ServiceClient<S>(context(), alias, capacity));
            return output->error();
        }

        /** @brief Allocate a two-role typed server into an empty named slot.
         * @details Retains the constructed object and its rollback report even on
         * initialization failure. The caller installs a handler before dispatch.
         * @tparam S Service definition with complete ServiceCodec support.
         * @param[in,out] output Exclusive empty stationary server owner slot.
         * @param[in] advertise Nonempty granted service-advertise alias.
         * @param[in] respond Distinct nonempty granted service-response alias.
         * @param[in] capacity Incoming envelope bytes in 0..4193786.
         * @return CONFLICT for an occupied slot or new server initialization status.
         * @see ServerOwners::rollback_status
         */
        template <class S>
        uint32_t create_service(Scoped<ServiceServer<S> >& output, StringView advertise, StringView respond, size_t capacity)
        {
            if(output.get())
            {
                return UWVM_ROS_CONFLICT;
            }
            output.reset(new ServiceServer<S>(context(), advertise, respond, capacity));
            return output->error();
        }

        /** @brief Allocate a tracked multi-role action client into an empty slot.
         * @details Keeps its object/rollback status on initialization failure. No
         * goal is sent and no optional cancel-any alias is invented by the factory.
         * @param[in,out] output Exclusive empty stationary bundle owner slot.
         * @param[in] aliases Distinct borrowed action-role aliases for acquisition.
         * @param[in] goals Concurrent local goal-slot count in 1..1024.
         * @param[in] capacity Receive capacity in bytes, 0..4193786.
         * @return CONFLICT for an occupied slot or bundle initialization status.
         * @see ActionClientBundle::ActionClientBundle
         */
        uint32_t create_action_client(Scoped<ActionClientBundle>& output, ActionClientAliases const& aliases, size_t goals, size_t capacity)
        {
            if(output.get())
            {
                return UWVM_ROS_CONFLICT;
            }
            output.reset(new ActionClientBundle(context(), aliases, goals, capacity));
            return output->error();
        }
    };

    /** @brief Local callback-entry grouping without native thread synchronization.
     * @details Exclusive groups refuse nested entry; reentrant groups count local
     * nesting. Keep the group stationary/alive while borrowed by tasks/timers, and
     * serialize access externally. No host scheduling/ROS permission is created.
     * @see CallbackGroup::enter
     */
    class CallbackGroup
    {
        roswasmc_callback_group value_;

    public:
        /** @brief Initialize exclusive or reentrant local entry accounting.
         * @details No callback, native mutex or backend import is created.
         * @param[in] exclusive True to refuse nested entry, default true.
         * @see CallbackGroup::enter
         */
        explicit CallbackGroup(bool exclusive = true)
        {
            roswasmc_callback_group_init(&value_, exclusive ? 1 : 0);
        }

        /** @brief Attempt one nonblocking local entry.
         * @details Pair each successful entry with leave, including on exceptions.
         * A busy exclusive group or saturated active counter refuses entry.
         * @return True after incrementing activity, false on local conflict.
         * @see CallbackGroup::leave
         */
        bool enter()
        {
            return roswasmc_callback_group_enter(&value_) == 0;
        }

        /** @brief Release one previously acquired local entry.
         * @details Decrements a nonzero counter; leaving an idle group is a no-op.
         * @see CallbackGroup::enter
         */
        void leave()
        {
            roswasmc_callback_group_leave(&value_);
        }

        /** @brief Inspect whether local callback entries remain active.
         * @details Reads an ordinary counter without atomic/thread synchronization.
         * @return True for at least one unbalanced successful entry.
         * @see CallbackGroup::leave
         */
        bool busy() const
        {
            return value_.active != 0;
        }

        /** @brief Borrow the inline C callback-group representation.
         * @details Pointer lasts until this stationary group is destroyed. Direct C
         * users must preserve balanced entry accounting and caller serialization.
         * @return Mutable borrowed local group pointer, with no ownership transfer.
         * @see roswasmc_callback_group
         */
        roswasmc_callback_group* local()
        {
            return &value_;
        }
    };

    /** @brief Stable local future-state names usable in ISO C++98.
     * @details States describe guest-local dispatch, not host operation authority
     * or automatic undo of an already admitted effect.
     * @see roswasmcpp::Future
     */
    struct FutureState
    {
        /** @brief Exact state values shared with the local C executor.
         * @details Numeric values mirror roswasmc_future_state without reordering.
         * @see roswasmc_future_state
         */
        enum Value
        {
            /** @brief Fresh or queued work that has not begun.
             * @details Local cancellation can still prevent dispatch.
             * @see Future::cancel
             */
            pending = ROSWASMC_FUTURE_PENDING,
            /** @brief Work currently executing on the caller's stack.
             * @details Cancellation refuses to interrupt this phase.
             * @see Future::cancel
             */
            running = ROSWASMC_FUTURE_RUNNING,
            /** @brief Completed work with one consumable status/result.
             * @details Completion may carry a numeric error rather than a value.
             * @see Future::take
             */
            ready = ROSWASMC_FUTURE_READY,
            /** @brief Locally cancelled work that will not be dispatched.
             * @details take reports REVOKED; this does not revoke a host alias.
             * @see Future::state
             */
            cancelled = ROSWASMC_FUTURE_CANCELLED,
            /** @brief Completion status has already been consumed once.
             * @details A later take reports BAD_HANDLE without rerunning work.
             * @see Future::take
             */
            taken = ROSWASMC_FUTURE_TAKEN
        };
    };

    /** @brief Owning value plus the actual deferred operation status.
     * @details Value is meaningful only when error is zero. This local carrier
     * neither submits an operation nor grants its required capability.
     * @tparam T Default-constructible, copyable complete result type.
     * @see roswasmcpp::DeferredCall
     */
    template <class T>
    struct DeferredResult
    {
        /** @brief Numeric operation status, zero for a valid value.
         * @details Preserve host/local errors rather than substituting success.
         * @see DeferredResult::value
         */
        uint32_t error;
        /** @brief Owning complete result value, meaningful when error is zero.
         * @details Result/callback copies follow T's ordinary copy semantics.
         * @see DeferredResult::error
         */
        T value;

        /** @brief Initialize success status with a value-initialized T.
         * @details Construction alone is not proof that a deferred operation ran.
         * @see DeferredResult::error
         */
        DeferredResult() : error(0), value()
        {
        }

        /** @brief Copy an explicit status and complete value into the carrier.
         * @details The value is copied even for an error; consumers inspect code
         * before interpreting it as a successful operation result.
         * @param[in] code Actual local/host operation status.
         * @param[in] v Complete value to own through ordinary T copying.
         * @see DeferredResult::value
         */
        DeferredResult(uint32_t code, T const& v) : error(code), value(v)
        {
        }
    };

    /** @brief Status-only completion for a deferred operation without a value.
     * @details Zero represents successful completion only when supplied by actual
     * dispatched work; construction itself performs no operation.
     * @see roswasmcpp::DeferredCall<void>
     */
    template <>
    struct DeferredResult<void>
    {
        /** @brief Actual numeric operation status.
         * @details No synthetic result value accompanies this specialization.
         * @see DeferredResult<void>::DeferredResult
         */
        uint32_t error;

        /** @brief Store one explicit status, defaulting to local zero initialization.
         * @details Does not dispatch a callback or wait for a host operation.
         * @param[in] code Numeric operation status, default zero.
         * @see DeferredResult<void>::error
         */
        explicit DeferredResult(uint32_t code = 0) : error(code)
        {
        }
    };

    /** @brief Stationary caller-owned typed future driven only by explicit spin.
     * @details Keep this object and its queued task alive until the queue releases
     * them; cancellation alone does not release a still-queued pointer. No wait,
     * thread, host revocation or automatic RPC replay occurs. Serialize state use.
     * @tparam T Default-constructible, copyable owning result type.
     * @see roswasmcpp::Executor::post
     */
    template <class T>
    class Future
    {
        roswasmc_future state_;
        T value_;
        Future(Future const&);
        Future& operator= (Future const&);
        template <class U>
        friend class DeferredCall;
        friend class Executor;

    public:
        /** @brief Initialize a fresh pending future and value-initialized result.
         * @details Does not enqueue or execute any operation.
         * @see Future::state
         */
        Future() : value_()
        {
            roswasmc_future_init(&state_);
        }

        /** @brief Inspect the current local future phase.
         * @details Distinguishes local cancellation from a ready operation whose
         * actual numeric completion error happens to equal REVOKED.
         * @return Current FutureState::Value without pumping the executor.
         * @see Future::take
         */
        FutureState::Value state() const
        {
            return static_cast<FutureState::Value>(state_.state);
        }

        /** @brief Cancel pending local dispatch without interrupting running work.
         * @details Successful cancellation records REVOKED; a queued pointer stays
         * borrowed until the executor discards/releases it.
         * @return Zero for pending-to-cancelled, CONFLICT while running, BAD_HANDLE
         * for ready/cancelled/taken phases.
         * @see roswasmc_future_cancel
         */
        uint32_t cancel()
        {
            return roswasmc_future_cancel(&state_);
        }

        /** @brief Test whether one completed status/result is ready to consume.
         * @details Cancelled and already-taken states are not ready. Does not run work.
         * @return True only in the ready phase, including error completions.
         * @see Future::state
         */
        bool ready() const
        {
            return state_.state == ROSWASMC_FUTURE_READY;
        }

        /** @brief Consume one ready status and copy a successful value once.
         * @details No waiting/pumping occurs. A ready error is also consumed and
         * leaves out unchanged. State becomes taken before copying T, so a copying
         * exception cannot authorize a second take of that completion.
         * @param[out] out Owning value destination, assigned only for status zero.
         * @return AGAIN while pending/running, REVOKED for local cancellation,
         * BAD_HANDLE after take, or the consumed actual operation status.
         * @see roswasmc_future_take
         */
        uint32_t take(T& out)
        {
            uint32_t code = roswasmc_future_take(&state_);
            if(!code)
            {
                out = value_;
            }
            return code;
        }
    };

    /** @brief Stationary status-only local future with no result allocation.
     * @details Uses the same caller-driven phase/queue lifetime rules as Future<T>;
     * cancellation does not release a queued borrow or undo a host effect.
     * @see roswasmcpp::Future
     */
    template <>
    class Future<void>
    {
        roswasmc_future state_;
        Future(Future const&);
        Future& operator= (Future const&);
        template <class U>
        friend class DeferredCall;
        friend class Executor;

    public:
        /** @brief Initialize a fresh pending status-only future.
         * @details Does not post work or acquire a host capability.
         * @see Future<void>::state
         */
        Future()
        {
            roswasmc_future_init(&state_);
        }

        /** @brief Inspect the status-only future's local phase.
         * @details No work is pumped and no host liveness query is performed.
         * @return Current phase for interpreting cancellation/completion.
         * @see Future<void>::take
         */
        FutureState::Value state() const
        {
            return static_cast<FutureState::Value>(state_.state);
        }

        /** @brief Cancel only a pending status-only local operation.
         * @details Retains any queue borrow until the executor releases it.
         * @return Zero for cancellation, CONFLICT while running, BAD_HANDLE otherwise.
         * @see roswasmc_future_cancel
         */
        uint32_t cancel()
        {
            return roswasmc_future_cancel(&state_);
        }

        /** @brief Test for a ready unconsumed status-only completion.
         * @details Error completions are ready; cancelled/taken phases are not.
         * @return Whether the local phase is ready.
         * @see Future<void>::state
         */
        bool ready() const
        {
            return state_.state == ROSWASMC_FUTURE_READY;
        }

        /** @brief Consume a ready operation status exactly once without waiting.
         * @details A ready error is consumed too; local cancellation remains a
         * distinct cancelled phase and does not become a fabricated ready success.
         * @return AGAIN for pending/running, REVOKED for cancellation, BAD_HANDLE
         * after consumption, or the actual consumed operation status.
         * @see roswasmc_future_take
         */
        uint32_t take()
        {
            return roswasmc_future_take(&state_);
        }
    };

    /** @brief Named polymorphic deferred task with its own stationary typed future.
     * @details Works in ISO C++98. Executor borrows the whole task until queue
     * release/completion; destruction while borrowed is a lifetime error. run() and
     * on_complete() execute synchronously during explicit spin. No worker, RPC
     * permission or automatic retry is created; borrowed captures/resources must
     * remain alive and callbacks obey the selected exception profile.
     * @tparam T Default-constructible, copyable complete result type.
     * @see roswasmcpp::Executor::post
     */
    template <class T>
    class DeferredCall
    {
        DeferredCall(DeferredCall const&);
        DeferredCall& operator= (DeferredCall const&);

        static uint32_t invoke(void* user)
        {
            DeferredCall& task = *static_cast<DeferredCall*>(user);
            DeferredResult<T> r = task.run();
            if(!r.error)
            {
                task.future.value_ = r.value;
            }
            return r.error;
        }

        static void completion(void* user, roswasmc_future const* status)
        {
            DeferredCall& task = *static_cast<DeferredCall*>(user);
            DeferredResult<T> r;
            r.error = status->error;
            if(!r.error)
            {
                r.value = task.future.value_;
            }
            task.on_complete(r);
        }
        friend class Executor;

    public:
        /** @brief Stationary result/state owned by this task.
         * @details Keep it alive until the queue releases its pointer, including
         * after cancellation; successful take consumes the completion only once.
         * @see Future::take
         */
        Future<T> future;

        /** @brief Initialize a task with a fresh pending future.
         * @details Does not enqueue or call virtual methods during construction.
         * @see Executor::post
         */
        DeferredCall()
        {
        }

        /** @brief Destroy an unborrowed deferred task through its base type.
         * @details Caller must first ensure the executor released all task/future
         * pointers; destructor does not remove a live queued task automatically.
         * @see Executor::cancel_pending
         */
        virtual ~DeferredCall()
        {
        }

        /** @brief Execute one complete application operation during explicit spin.
         * @details Override in a stable derived task and use independently granted
         * capabilities. Return the actual status; successful values are copied into
         * future before readiness/completion. Do not longjmp through scheduler state.
         * @return Actual numeric operation status and complete owning result value.
         * @see DeferredResult
         */
        virtual DeferredResult<T> run() = 0;

        /** @brief Observe a copied completed status/value after run returns.
         * @details The unnamed result is borrowed only for this invocation. It
         * carries a copied value on success and the actual error otherwise. Default
         * implementation does nothing; it neither consumes future nor retries work.
         * @see DeferredCall::run
         */
        virtual void on_complete(DeferredResult<T> const&)
        {
        }
    };

    /** @brief Status-only named deferred task with a stationary Future<void>.
     * @details Shares the typed task's caller-driven lifetime rules; no operation
     * value, native worker or implicit permission is introduced.
     * @see roswasmcpp::DeferredCall
     */
    template <>
    class DeferredCall<void>
    {
        DeferredCall(DeferredCall const&);
        DeferredCall& operator= (DeferredCall const&);

        static uint32_t invoke(void* user)
        {
            return static_cast<DeferredCall*>(user)->run().error;
        }

        static void completion(void* user, roswasmc_future const* status)
        {
            static_cast<DeferredCall*>(user)->on_complete(DeferredResult<void>(status->error));
        }
        friend class Executor;

    public:
        /** @brief Stationary status future owned by this task.
         * @details Remains borrowed until queue release even after local cancellation.
         * @see Future<void>::take
         */
        Future<void> future;

        /** @brief Initialize a status-only task without posting work.
         * @details Future begins pending; subclass run executes only on explicit spin.
         * @see Executor::post
         */
        DeferredCall()
        {
        }

        /** @brief Destroy this task only after all scheduler borrows are released.
         * @details Virtual destruction does not cancel/remove a queued raw pointer.
         * @see Executor::cancel_pending
         */
        virtual ~DeferredCall()
        {
        }

        /** @brief Execute one application operation and return its actual status.
         * @details Runs synchronously on the explicit spinner's stack; use only
         * independently granted resources and obey the selected exception profile.
         * @return Complete status-only result, zero only for actual success.
         * @see DeferredResult<void>
         */
        virtual DeferredResult<void> run() = 0;

        /** @brief Observe the status-only completion after run returns.
         * @details The unnamed result is borrowed for this invocation. Default
         * implementation does nothing and never consumes/replays the operation.
         * @see DeferredCall<void>::run
         */
        virtual void on_complete(DeferredResult<void> const&)
        {
        }
    };

    /** @brief Stationary local timer driven by caller-supplied nanosecond snapshots.
     * @details Reads no clock and starts no thread. Each due tick invokes at most
     * one callback, then schedules from the supplied now rather than replaying
     * missed periods. Keep callback state, optional Context and CallbackGroup alive;
     * serialize all access and never longjmp through active callback state.
     * @see Timer::tick
     */
    class Timer
    {
        roswasmc_timer value_;
        uint32_t error_;
        Timer(Timer const&);
        Timer& operator= (Timer const&);

    public:
        /** @brief Initialize the first deadline from one explicit monotonic snapshot.
         * @details Requires nonzero period/callback and checked now+period arithmetic.
         * No callback or host operation runs; inspect error() before registering.
         * @param[in] period Nonzero period in nanoseconds.
         * @param[in] now Initial monotonic nanoseconds in the domain used by tick/reset.
         * @param[in] callback Borrowed uint32_t(void*) function run synchronously.
         * @param[in] user Borrowed callback state, default null, live through use.
         * @param[in] context Optional stationary borrowed dispatch gate.
         * @param[in,out] group Optional stationary borrowed local callback group.
         * @see roswasmc_timer_init
         */
        Timer(uint64_t period, uint64_t now, roswasmc_deferred_call callback, void* user = 0, Context const* context = 0, CallbackGroup* group = 0) :
            value_(), error_(0)
        {
            error_ = roswasmc_timer_init(&value_, period, now, callback, user, group ? group->local() : 0, context ? context->local() : 0);
        }

        /** @brief Inspect the stored timer-construction error.
         * @details Later tick/reset results are returned directly rather than cached.
         * @return INVALID for zero period/callback, TOO_LARGE for initial deadline
         * overflow, or zero for successful construction.
         * @see Timer::Timer
         */
        uint32_t error() const
        {
            return error_;
        }

        /** @brief Disable future local timer dispatch.
         * @details Idempotently sets the local cancelled flag; does not interrupt
         * an active callback, revoke an alias or undo an admitted host effect.
         * @see Timer::reset
         */
        void cancel()
        {
            roswasmc_timer_cancel(&value_);
        }

        /** @brief Reactivate the timer with a deadline of now+period.
         * @details Checks initialization, active-callback conflict, Context gate and
         * deadline overflow. Resets the local time anchor and clears cancellation;
         * no clock is queried and no callback runs here.
         * @param[in] now New anchor in the same monotonic nanosecond domain.
         * @return Stored construction error or exact C reset status.
         * @see roswasmc_timer_reset
         */
        uint32_t reset(uint64_t now)
        {
            return error_ ? error_ : roswasmc_timer_reset(&value_, now);
        }

        /** @brief Dispatch at most one due timer callback without waiting.
         * @details Rejects a backwards snapshot, cancelled/stopped context, reentry,
         * busy group and overflowing next deadline. A due attempt advances the
         * deadline before callback, including when callback returns an error. C++
         * unwinding restores active/group accounting; the callback is never retried.
         * @param[in] now Monotonic nanoseconds, at least the previous tick snapshot.
         * @return AGAIN before deadline, REVOKED when disabled, local validation/
         * conflict/overflow error, or the actual callback's numeric result.
         * @see roswasmc_timer_tick
         */
        uint32_t tick(uint64_t now)
        {
            if(error_)
            {
                return error_;
            }

            struct Restore
            {
                roswasmc_timer& timer;
                size_t active;
                int entered;

                Restore(roswasmc_timer& t) : timer(t), active(t.group ? t.group->active : 0), entered(t.active)
                {
                }

                ~Restore()
                {
                    timer.active = entered;
                    if(timer.group)
                    {
                        timer.group->active = active;
                    }
                }
            } restore(value_);

            return roswasmc_timer_tick(&value_, now);
        }
    };

    /** @brief Stationary caller-driven deferred queue, poll sources and local timers.
     * @details Owns bounded queue slots but borrows future/task/source/timer objects.
     * Keep borrowers alive until completion/removal/queue cancellation, and serialize
     * all access. Each spin executes only the queue snapshot present at entry, then
     * registered sources and optionally timers. It creates no thread, waits, host
     * permissions or implicit request replay. Deferred operation errors are stored
     * in futures; spin errors describe dispatch/group/source/timer failures. Native
     * callback exceptions unwind with active accounting restored and running work
     * locally cancelled; no longjmp through scheduler state is supported.
     * @see Executor::spin_some_at
     */
    class Executor
    {
        struct Task
        {
            size_t id;
            uint32_t (*poll)(void*);
            void* user;

            Task(size_t i, uint32_t (*p)(void*), void* u) : id(i), poll(p), user(u)
            {
            }
        };

        struct TimerTask
        {
            size_t id;
            Timer* timer;

            TimerTask(size_t i, Timer* t) : id(i), timer(t)
            {
            }
        };

        std::vector<roswasmc_deferred_task> slots_;
        roswasmc_executor executor_;
        std::vector<Task> tasks_;
        std::vector<TimerTask> timers_;
        Context const* context_;
        roswasmc_local_context own_;
        size_t next_id_, maximum_, last_;
        uint32_t error_;
        bool busy_, stopped_;
        Executor(Executor const&);
        Executor& operator= (Executor const&);

        template <class T>
        static uint32_t poll_source(void* user)
        {
            return static_cast<T*>(user)->poll_once();
        }

        bool stopped() const
        {
            return stopped_ || (context_ && !context_->running());
        }

        uint32_t spin(bool has_time, uint64_t now, size_t maximum, size_t& delivered)
        {
            if(busy_)
            {
                return UWVM_ROS_INVALID;
            }
            if(error_)
            {
                return error_;
            }
            if(stopped())
            {
                cancel_pending();
                return UWVM_ROS_REVOKED;
            }
            detail::PollLease lease(busy_);
            delivered = 0;
            last_ = 0;
            size_t initial = executor_.count;
            for(size_t i = 0; i < initial && executor_.count; ++i)
            {
                roswasmc_deferred_task task = executor_.slots[executor_.head];
                if(task.future->state != ROSWASMC_FUTURE_PENDING)
                {
                    task.future->queued = 0;
                    executor_.head = (executor_.head + 1) % executor_.capacity;
                    --executor_.count;
                    continue;
                }
                uint32_t code = roswasmc_callback_group_enter(task.group);
                if(code)
                {
                    return code;
                }

                struct Release
                {
                    roswasmc_deferred_task& task;

                    explicit Release(roswasmc_deferred_task& t) : task(t)
                    {
                    }

                    ~Release()
                    {
                        roswasmc_callback_group_leave(task.group);
                        if(task.future->state == ROSWASMC_FUTURE_RUNNING)
                        {
                            task.future->state = ROSWASMC_FUTURE_CANCELLED;
                            task.future->error = UWVM_ROS_REVOKED;
                            task.future->queued = 0;
                        }
                    }
                } release(task);

                executor_.head = (executor_.head + 1) % executor_.capacity;
                --executor_.count;
                task.future->state = ROSWASMC_FUTURE_RUNNING;
                task.future->error = task.call(task.user);
                task.future->state = ROSWASMC_FUTURE_READY;
                task.future->queued = 0;
                if(task.completion)
                {
                    roswasmc_future snapshot = *task.future;
                    task.completion(task.user, &snapshot);
                }
                ++last_;
                if(stopped())
                {
                    cancel_pending();
                    return UWVM_ROS_REVOKED;
                }
            }
            for(size_t i = 0; i < tasks_.size() && delivered < maximum; ++i)
            {
                uint32_t code = tasks_[i].poll(tasks_[i].user);
                if(code != UWVM_ROS_AGAIN)
                {
                    if(code)
                    {
                        return code;
                    }
                    ++delivered;
                }
                if(stopped())
                {
                    cancel_pending();
                    return UWVM_ROS_REVOKED;
                }
            }
            if(has_time)
            {
                for(size_t i = 0; i < timers_.size() && delivered < maximum; ++i)
                {
                    uint32_t code = timers_[i].timer->tick(now);
                    if(code != UWVM_ROS_AGAIN)
                    {
                        if(code)
                        {
                            return code;
                        }
                        ++delivered;
                    }
                    if(stopped())
                    {
                        cancel_pending();
                        return UWVM_ROS_REVOKED;
                    }
                }
            }
            return 0;
        }

    public:
        /** @brief Initialize an executor with its own active gate and capacity 64.
         * @details Allocates 64 deferred slots; separately bounds the combined
         * registered source/timer count at 64. No work is posted or dispatched.
         * @see Executor::error
         */
        Executor() : executor_(), context_(0), own_(), next_id_(1), maximum_(64), last_(0), error_(0), busy_(false), stopped_(false)
        {
            roswasmc_local_context_init(&own_);
            slots_.resize(64);
            error_ = roswasmc_executor_init(&executor_, &own_, buffer_data(slots_), slots_.size());
        }

        /** @brief Initialize bounded dispatch associated with a borrowed Context.
         * @details The same capacity independently bounds deferred queue slots and
         * combined source/timer registrations. Zero is valid empty capacity;
         * capacity above 1048576 records TOO_LARGE. Context must outlive this object.
         * @param[in] context Stationary borrowed local dispatch gate.
         * @param[in] capacity Slot/registration count in 0..1048576, default 64.
         * @see roswasmc_executor_init
         */
        explicit Executor(Context const& context, size_t capacity = 64) :
            executor_(), context_(&context), own_(), next_id_(1), maximum_(capacity <= 1048576u ? capacity : 0), last_(0),
            error_(capacity > 1048576u ? UWVM_ROS_TOO_LARGE : 0), busy_(false), stopped_(false)
        {
            if(!error_)
            {
                slots_.resize(capacity);
                error_ = roswasmc_executor_init(&executor_, context.local(), buffer_data(slots_), slots_.size());
            }
        }

        /** @brief Cancel/release queued local futures before destroying queue slots.
         * @details Does not delete borrowed tasks/sources/timers or revoke their
         * independently owned capabilities. Caller forbids destruction during spin.
         * @see Executor::cancel_pending
         */
        ~Executor()
        {
            cancel_pending();
        }

        /** @brief Inspect stored executor initialization status.
         * @details Per-post/spin/callback results are reported separately.
         * @return Stored initialization error, otherwise zero.
         * @see Executor::Executor
         */
        uint32_t error() const
        {
            return error_;
        }

        /** @brief Queue one borrowed C operation without running it.
         * @details Keep future/call/user/group alive until queue release. A queued
         * or running future conflicts; deliberate reuse of an unqueued future
         * replaces its prior status. C queue rejection can record a ready error;
         * this wrapper's setup/stopped prechecks return before changing the future.
         * Posts during callbacks are deferred beyond the current queue snapshot.
         * @param[in,out] future Stationary initialized future borrowed by the queue.
         * @param[in] call Nonnull synchronous deferred operation function pointer.
         * @param[in] user Borrowed operation/completion state, live through release.
         * @param[in] completion Optional synchronous completion callback, default null.
         * @param[in,out] group Optional borrowed local callback-group state.
         * @return Exact setup/C queue status; zero means queued, not executed.
         * @see roswasmc_executor_post
         */
        uint32_t post(roswasmc_future& future,
                      roswasmc_deferred_call call,
                      void* user,
                      roswasmc_completion_callback completion = 0,
                      roswasmc_callback_group* group = 0)
        {
            if(error_)
            {
                return error_;
            }
            if(stopped())
            {
                return UWVM_ROS_REVOKED;
            }
            return roswasmc_executor_post(&executor_, &future, call, user, completion, group);
        }

        /** @brief Queue one named typed task using its own stable future.
         * @details Borrows the whole task through run/completion or queue release;
         * cancellation does not permit destroying a still-queued task. Task work
         * needs its own capability grants and is never replayed by posting.
         * @tparam T Complete owning result type, or void.
         * @param[in,out] call Stationary task to borrow without ownership transfer.
         * @param[in,out] group Optional stationary borrowed local group.
         * @return Exact post status; successful queueing is not completion.
         * @see Executor::post(roswasmc_future&, roswasmc_deferred_call, void*, roswasmc_completion_callback,
         * roswasmc_callback_group*)
         */
        template <class T>
        uint32_t post(DeferredCall<T>& call, CallbackGroup* group = 0)
        {
            return post(call.future.state_, &DeferredCall<T>::invoke, &call, &DeferredCall<T>::completion, group ? group->local() : 0);
        }

        /** @brief Register one borrowed poll source while outside dispatch.
         * @details Source supplies uint32_t poll_once(): zero means one delivery,
         * AGAIN means none, and other errors stop that pass. Registration can
         * allocate; busy/stopped/full or exhausted ID space returns zero locally.
         * @tparam Source Stable object exposing the documented poll_once contract.
         * @param[in,out] source Borrowed until its ID is removed or executor cleared.
         * @return Nonzero registration ID, or zero on local refusal.
         * @see Executor::remove
         */
        template <class Source>
        size_t add(Source& source)
        {
            if(busy_ || stopped() || !next_id_ || tasks_.size() + timers_.size() >= maximum_)
            {
                return 0;
            }
            size_t id = next_id_++;
            tasks_.push_back(Task(id, &poll_source<Source>, &source));
            return id;
        }

        /** @brief Register a borrowed initialized local timer while idle.
         * @details Shares the source/timer count bound. Refuses busy/stopped/full,
         * invalid timer or exhausted ID state without dispatching the callback.
         * @param[in,out] timer Stationary timer borrowed until removal/clear.
         * @return Nonzero registration ID, or zero on local refusal.
         * @see Executor::spin_some_at
         */
        size_t add_timer(Timer& timer)
        {
            if(busy_ || stopped() || !next_id_ || timer.error() || tasks_.size() + timers_.size() >= maximum_)
            {
                return 0;
            }
            size_t id = next_id_++;
            timers_.push_back(TimerTask(id, &timer));
            return id;
        }

        /** @brief Release one source/timer registration borrow while idle.
         * @details Unknown IDs are no-ops. Removal during spin is ignored, so
         * callers cannot destroy a borrowed source from inside that active pass.
         * Does not destroy/cancel the source or revoke its capabilities.
         * @param[in] id Nonzero source/timer registration ID to remove.
         * @see Executor::add
         */
        void remove(size_t id)
        {
            if(busy_)
            {
                return;
            }
            for(size_t i = 0; i < tasks_.size(); ++i)
            {
                if(tasks_[i].id == id)
                {
                    tasks_.erase(tasks_.begin() + i);
                    break;
                }
            }
            for(size_t i = 0; i < timers_.size(); ++i)
            {
                if(timers_[i].id == id)
                {
                    timers_.erase(timers_.begin() + i);
                    break;
                }
            }
        }

        /** @brief Release all source/timer registrations and cancel queued work.
         * @details Runs only while idle; a call during spin is ignored. Leaves
         * borrowed objects alive and the executor's active gate reusable.
         * @see Executor::cancel_pending
         */
        void clear()
        {
            if(!busy_)
            {
                tasks_.clear();
                timers_.clear();
                cancel_pending();
            }
        }

        /** @brief Cancel pending queue entries and release their borrowed pointers.
         * @details Runs no operation/completion callback, does not interrupt the
         * current dequeued callback, and preserves source/timer registrations.
         * Does not undo a native effect or change alias ownership.
         * @see roswasmc_executor_cancel_pending
         */
        void cancel_pending()
        {
            if(!error_)
            {
                roswasmc_executor_cancel_pending(&executor_);
            }
        }

        /** @brief Permanently stop this executor's local dispatch and cancel queue.
         * @details New posts/registrations are refused. A current synchronous
         * callback finishes before spin observes the stop; resources keep their
         * separate explicit close/revoke lifecycle and no host effect is undone.
         * @see Executor::cancel_pending
         */
        void shutdown()
        {
            stopped_ = true;
            cancel_pending();
        }

        /** @brief Count registered sources plus local timers.
         * @details Deferred queue entries are excluded from this count.
         * @return Number of current source/timer registrations.
         * @see Executor::add_timer
         */
        size_t size() const
        {
            return tasks_.size() + timers_.size();
        }

        /** @brief Inspect the most recent started pass's completed deferred count.
         * @details Counts completed queue operations, including error completions,
         * separately from source/timer deliveries. Early setup/reentry/stop rejection
         * can leave the previous count; no cumulative execution total is maintained.
         * @return Last stored per-pass deferred completion count.
         * @see Executor::spin_some
         */
        size_t completed_requests() const
        {
            return last_;
        }

        /** @brief Run the initial deferred queue and an unbounded source pass.
         * @details This overload reports deferred completions, not source deliveries.
         * Runs each initial queue entry at most once, then each source at most once;
         * timers require spin_some_at. Newly posted work waits for a later pass.
         * @param[out] completed Deferred completion count, assigned only on success.
         * @return Zero for a complete pass, REVOKED when stopped, INVALID for reentry,
         * or the exact group/source dispatch error. Work errors remain in futures.
         * @see Executor::completed_requests
         */
        uint32_t spin_some(size_t& completed)
        {
            size_t delivered = 0;
            uint32_t code = spin(false, 0, (std::numeric_limits<size_t>::max)(), delivered);
            if(!code)
            {
                completed = last_;
            }
            return code;
        }

        /** @brief Run one initial queue snapshot and a bounded source-delivery pass.
         * @details maximum bounds successful source deliveries only; even zero can
         * run the initial deferred queue. AGAIN sources do not count. No timer is
         * ticked and no blocking wait or automatic error retry occurs.
         * @param[in] maximum Maximum successful source deliveries in this pass.
         * @param[out] delivered Zeroed after initial prechecks and updated as sources
         * succeed; may contain a partial count on a later dispatch error.
         * @return Exact pass status; deferred operation errors stay in their futures.
         * @see Executor::spin_some_at
         */
        uint32_t spin_some(size_t maximum, size_t& delivered)
        {
            return spin(false, 0, maximum, delivered);
        }

        /** @brief Run one complete caller-driven pass over queue and sources.
         * @details Convenience spelling for an unlimited source-delivery budget;
         * it is not limited to a single callback. Does not tick timers or wait.
         * @param[out] delivered Source delivery count with spin_some's partial-error
         * semantics, distinct from deferred completion count.
         * @return Exact queue/group/source dispatch status.
         * @see Executor::spin_some(size_t, size_t&)
         */
        uint32_t spin_once(size_t& delivered)
        {
            return spin_some((std::numeric_limits<size_t>::max)(), delivered);
        }

        /** @brief Run queue, sources and due timers with one explicit time snapshot.
         * @details Executes the initial deferred snapshot first, then sources and
         * timers in registration order under a shared delivery budget. Each timer
         * is ticked at most once with now; no clock import or catch-up loop occurs.
         * @param[in] now Caller-supplied monotonic nanoseconds in all timers' domain.
         * @param[in] maximum Combined successful source/timer delivery budget;
         * deferred queue completions are counted independently.
         * @param[out] delivered Zeroed after initial prechecks; updated successes
         * remain visible if a later source/timer/group error stops the pass.
         * @return Exact pass error or zero; actual deferred work statuses stay in
         * futures and are consumed explicitly.
         * @see Timer::tick
         */
        uint32_t spin_some_at(uint64_t now, size_t maximum, size_t& delivered)
        {
            return spin(true, now, maximum, delivered);
        }
    };
}  // namespace roswasmcpp
