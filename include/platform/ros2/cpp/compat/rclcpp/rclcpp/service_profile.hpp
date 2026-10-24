/** @file
 * @brief Finite AddTwoInts server and unified-event asynchronous source client.
 * @details Request IDs originate from real selected service submission; only
 * exact bound events complete them. Readiness uses a separately selected query
 * namespace/alias; missing support is 95 rather than inferred graph readiness.
 * Include through rclcpp.hpp so the base adapter/types are present. Calls are
 * caller-driven, serialized and bounded; there is no native executor thread,
 * infinite wait, retry or implicit grant. Numeric failures use the base adapter's
 * RCLError/abort path; explicit cleanup retains independently inspectable status.
 * @see roswasm_rclcpp::ServiceProfile
 */
#pragma once
#include <platform/ros2/cpp/compat/rclcpp/example_interfaces/srv/add_two_ints.hpp>
#include <array>
#include <cinttypes>
#include <optional>
#include <cmath>
#include <platform/ros/cpp/roswasm/service_client.hpp>
// No native GUID/sequence number is serialized by this Guest ABI. The selected
// official server ignores this parameter. The callback receives a NULL shared
// pointer; dereferencing/inspecting a native request header is unsupported.
/** @brief Opaque native request-header name required by selected callback syntax.
 * @details This profile defines no native layout and always passes a null shared
 * header pointer. Dereferencing or inspecting native request metadata is unsupported.
 * @see rclcpp::Service
 */
struct rmw_request_id_t;

namespace rclcpp
{
    namespace detail
    {
        using AddTwoInts = ::example_interfaces::srv::AddTwoInts;

        inline roswasm_rclcpp::ServiceBinding const& service(Core& core, std::string_view name, roswasm_rclcpp::ServiceRole role)
        {
            running();
            core.prepare_factory();
            auto profile = state().selection->services;
            if(!profile)
            {
                fail(13);
            }
            if(!profile->events || profile->events->version != 2 || profile->bindings.size() > 32)
            {
                fail(22);
            }
            roswasm_rclcpp::ServiceBinding const* found{};
            for(auto const& row: profile->bindings)
            {
                if(row.node == core.node && row.service == name && row.role == role)
                {
                    if(found)
                    {
                        fail(22);
                    }
                    found = &row;
                }
            }
            if(!found)
            {
                fail(13);
            }
            auto const& r = *found;
            if(r.type != "example_interfaces/srv/AddTwoInts" || r.qos_profile != "official-default-service-profile")
            {
                fail(95);
            }
            if(!text(r.node, 128) || !text(r.service, 255) || !r.maximum_pending || r.maximum_pending > 16)
            {
                fail(22);
            }
            if(role == roswasm_rclcpp::ServiceRole::client)
            {
                if(!text(r.call_alias, 64) || !text(r.observer_alias, 64) || r.call_alias == r.observer_alias || !r.advertise_alias.empty() ||
                   !r.respond_alias.empty())
                {
                    fail(22);
                }
                if(!profile->events->submit || !profile->events->watch || !profile->events->poll)
                {
                    fail(95);
                }
                if(!r.availability_alias.empty())
                {
                    if(!text(r.availability_alias, 64) || r.availability_alias == r.call_alias || r.availability_alias == r.observer_alias)
                    {
                        fail(22);
                    }
                    auto query = profile->clients;
                    if(!query || !query->abi_version || !query->features || !query->query)
                    {
                        fail(95);
                    }
                    if(query->version != 2)
                    {
                        fail(22);
                    }
                }
            }
            else if(role == roswasm_rclcpp::ServiceRole::server)
            {
                if(!text(r.advertise_alias, 64) || !text(r.respond_alias, 64) || r.advertise_alias == r.respond_alias || !r.call_alias.empty() ||
                   !r.observer_alias.empty() || !r.availability_alias.empty())
                {
                    fail(22);
                }
            }
            else
            {
                fail(22);
            }
            return r;
        }

        struct ServiceLease
        {
            bool& local;
            std::vector<std::shared_ptr<Entity>> retained;
            std::array<std::shared_ptr<Core>, 16> retained_cores{};

            explicit ServiceLease(bool& value) : local{value}
            {
                if(value || state().service_dispatching)
                {
                    fail(17);
                }
                // Fixed total registry bound16 Nodes x64 facades. Allocate and retain
                // before consuming an event or entering a user callback. Releasing a
                // final application shared_ptr in that callback cannot run a capability
                // destructor until this complete group lease has ended.
                retained.reserve(16 * 64);
                std::size_t core_count{};
                for(auto const& weak: state().service_cores)
                {
                    if(auto core = weak.lock())
                    {
                        retained_cores[core_count++] = core;  // Also pin Nodes owning only a Clock/Logger.
                        for(auto const& entity: core->entities)
                        {
                            if(auto owner = entity.lock())
                            {
                                retained.push_back(std::move(owner));
                            }
                        }
                    }
                }
                local = true;
                state().service_dispatching = true;
            }

            ~ServiceLease()
            {
                state().service_dispatching = false;
                local = false;
            }

            // Members retire after the destructor body restores the group state.
        };

        inline void service_log(std::shared_ptr<Core> const& core, std::string const& rendered)
        {
            if(!core || core->closed)
            {
                fail(9);
            }
            running();
            if(rendered.size() > 4095)
            {
                fail(90);
            }
            if(!core->logger)
            {
                if(state().service_dispatching)
                {
                    fail(17);
                }
                if(!text(core->binding.info_logger_alias, 64))
                {
                    fail(13);
                }
                core->logger = std::make_unique<roswasmcpp::Logger>(core->context(), core->binding.info_logger_alias);
                checked(core->logger->error());
            }
            checked(core->logger->write(rendered));
        }
    }  // namespace detail

    /** @brief Implement the exact selected two-addend request INFO format.
     * @details Validate the PRId64 literal before memory formatting and one explicit
     * service_log operation. Unsupported/null format is 95; no printf varargs run.
     * @param format Complete live NUL-terminated request-format literal.
     * @param a First signed addend.
     * @param b Second signed addend.
     * @see Logger::info
     */
    inline void Logger::info(char const* format, std::int64_t a, std::int64_t b) const
    {
        if(!format || std::string_view{format} != "request: %" PRId64 " + %" PRId64)
        {
            detail::fail(95);
        }
        detail::service_log(core_.lock(), ::fast_io::concat_std("request: ", a, " + ", b));
    }

    /** @brief Implement the exact selected three-value result INFO format.
     * @details Validate the acquired PRId64 literal before rendering signed values
     * into memory and using the independently selected info owner once.
     * @param format Complete live NUL-terminated result-format literal.
     * @param a First signed addend.
     * @param b Second signed addend.
     * @param c Signed result returned by the selected service.
     * @see Logger::info
     */
    inline void Logger::info(char const* format, std::int64_t a, std::int64_t b, std::int64_t c) const
    {
        if(!format || std::string_view{format} != "result of %" PRId64 " + %" PRId64 " = %" PRId64)
        {
            detail::fail(95);
        }
        detail::service_log(core_.lock(), ::fast_io::concat_std("result of ", a, " + ", b, " = ", c));
    }

    /** @brief Implement the selected literal service-waiting INFO message.
     * @details Accept only the exact acquired waiting literal, otherwise fail 95.
     * This logs one message without observing or waiting for service readiness.
     * @param literal Live NUL-terminated exact supported message.
     * @see Client::wait_for_service
     */
    inline void Logger::info(char const* literal) const
    {
        if(!literal || std::string_view{literal} != "waiting for service to appear...")
        {
            detail::fail(95);
        }
        detail::service_log(core_.lock(), literal);
    }

    /** @brief Refuse the unsupported source ERROR logging path with 95.
     * @details The unnamed literal is unused and no import is made. An acquired
     * info owner never supplies a stronger severity operation.
     * @see Logger::info
     */
    inline void Logger::error(char const*) const
    {
        // INFO aliases cannot silently acquire ERROR severity. This unsupported
        // original-client failure path remains a required separate logger profile.
        detail::fail(95);
    }

    /** @brief Finite selected AddTwoInts server with one caller-driven callback.
     * @details Node's factory separately selects advertisement/response aliases and
     * prepares its required info logger before callback dispatch. Each poll owns
     * fresh request/response shared values, so retained callback pointers never
     * alias a later request. The supplied native-header pointer is always null;
     * inspecting native rmw request metadata is unsupported. Group leases prevent
     * owner mutation/reentry while a callback is active.
     * @tparam S Exactly the selected example_interfaces::srv::AddTwoInts type.
     * @see Node::create_service
     */
    template <class S>
    class Service : public detail::Entity
    {
        static_assert(std::is_same_v<S, detail::AddTwoInts>, "Only complete acquired AddTwoInts is registered by this source profile");
        using Handler = std::function<typename S::Response(typename S::Request const&)>;
        using Callback = std::function<void(std::shared_ptr<rmw_request_id_t>, std::shared_ptr<typename S::Request>, std::shared_ptr<typename S::Response>)>;
        std::shared_ptr<detail::Core> core_;
        Callback callback_;
        std::shared_ptr<Handler> prepared_;
        std::shared_ptr<typename S::Request> request_;
        std::shared_ptr<typename S::Response> response_;
        std::optional<roswasmcpp::ServiceServer<S>> server_;
        std::array<std::uint32_t, 2> cleanup_statuses_{};
        roswasmc_cleanup_report cleanup_report_{};
        bool busy_{}, closed_{};

    public:
        /** @brief Shared ownership of one finite source server facade.
         * @details Sharing retains the existing role owners rather than advertising again.
         * @see Service::close
         */
        using SharedPtr = std::shared_ptr<Service>;

        /** @brief Prepare the typed callback without activating native service roles.
         * @details Requires nonnull Core and callback, otherwise 22. Node's factory
         * subsequently activates the selected aliases. Before invoking a callback,
         * the prepared handler rejects signed-addition overflow with 90. Shared
         * request/response values are allocated before consuming an event.
         * @param core Shared source-node core retained through role cleanup.
         * @param callback Callable taking null request-header and owned request/response
         * shared pointers; pointers may be retained as independent value snapshots.
         * @see Node::create_service
         */
        Service(std::shared_ptr<detail::Core> core, Callback callback) :
            core_{std::move(core)}, callback_{std::move(callback)}, prepared_{std::make_shared<Handler>(
                                                                        [this](typename S::Request const& input)
                                                                        {
                                                                            if((input.b > 0 && input.a > std::numeric_limits<std::int64_t>::max() - input.b) ||
                                                                               (input.b < 0 && input.a < std::numeric_limits<std::int64_t>::min() - input.b))
                                                                            {
                                                                                detail::fail(90);
                                                                            }
                                                                            *request_ = input;
                                                                            *response_ = {};
                                                                            callback_({}, request_, response_);
                                                                            return *response_;
                                                                        })}
        {
            if(!core_ || !callback_)
            {
                detail::fail(22);
            }
        }

    private:
        friend class Node;

        void _activate(roswasm_rclcpp::ServiceBinding const& row)
        {
            // The exact official callback logs. Acquire that independent owner
            // before any callback is entered; no lazy factory runs under its lease.
            if(!core_->logger)
            {
                if(!detail::text(core_->binding.info_logger_alias, 64))
                {
                    detail::fail(13);
                }
                auto logger = std::make_unique<roswasmcpp::Logger>(core_->context(), core_->binding.info_logger_alias);
                detail::checked(logger->error());
                core_->logger = std::move(logger);
            }
            server_.emplace(core_->context(), row.advertise_alias, row.respond_alias, 24);
            if(server_->error())
            {
                detail::cleanup(server_->rollback_status().cleanup_error);
                detail::fail(server_->error());
            }
            server_->on_request_shared(prepared_);  // All callable/registry storage was allocated before opening.
        }

    public:
        /** @brief Consume at most one request and synchronously dispatch its callback.
         * @details The unnamed timestamp is unused. Closed/inactive state is 9 and
         * group/reentrant dispatch is 17. Fresh shared values and a group lease are
         * prepared before the SDK poll; numeric results/callback exceptions preserve
         * the SDK's single-attempt response behavior without replay.
         * @return SDK poll status, idle 11, closed 9 or reentry 17.
         * @see Service::close
         */
        std::uint32_t poll(std::uint64_t) override
        {
            if(closed_ || core_->closed || !server_)
            {
                return 9;
            }
            if(busy_ || detail::state().service_dispatching)
            {
                return 17;
            }
            // Allocate fresh callback owners BEFORE consuming the next actual event.
            // Retained callback pointers therefore never alias a later request.
            auto request = std::make_shared<typename S::Request>();
            auto response = std::make_shared<typename S::Response>();
            request_ = std::move(request);
            response_ = std::move(response);
            detail::ServiceLease lease{busy_};
            return server_->poll_once();
        }

        /** @brief Attempt checked reverse cleanup once outside callback dispatch.
         * @details Busy/group dispatch returns 17 without mutation. Otherwise the
         * facade becomes closed before any cleanup; repeated calls return zero.
         * Per-role errors and aggregate counts remain available after the attempt.
         * @return Zero, guard 17 or the first checked cleanup error.
         * @see Service::cleanup_report
         */
        std::uint32_t close() noexcept override
        {
            if(busy_ || detail::state().service_dispatching)
            {
                return 17;
            }
            if(closed_)
            {
                return 0;
            }
            closed_ = true;
            if(!server_)
            {
                return 0;
            }
            cleanup_report_ = server_->close_checked(cleanup_statuses_.data());
            return cleanup_report_.cleanup_error;
        }

        /** @brief Copy the most recently captured checked-cleanup report.
         * @details The initially zero report does not imply cleanup occurred.
         * @return Primary/cleanup errors and attempted/failed counts by value.
         * @see Service::cleanup_statuses
         */
        roswasmc_cleanup_report cleanup_report() const noexcept
        {
            return cleanup_report_;
        }

        /** @brief Borrow advertisement/response cleanup statuses in acquisition order.
         * @details The array belongs to this facade. Zero unattempted slots do not
         * establish callback success; inspect cleanup_report().attempted as well.
         * @return Const two-element array reference valid with this object.
         * @see Service::cleanup_report
         */
        std::array<std::uint32_t, 2> const& cleanup_statuses() const noexcept
        {
            return cleanup_statuses_;
        }  // advertise, respond

        /** @brief Best-effort close with first adapter cleanup-error retention.
         * @details Member role owners then follow their normal destruction contract;
         * no exception, business replay or stronger permission is introduced here.
         * @see roswasm_rclcpp_cleanup_error
         */
        ~Service()
        {
            detail::cleanup(close());
        }
    };

    /** @brief Shared local completion state for one submitted finite request.
     * @details The client and move-only future share this record. Request IDs are
     * full-width opaque Guest IDs, not native rmw headers or signed sequences.
     * Caller code must not mutate a live client's completion state or race its
     * dispatch. Ready can describe an error/abandonment rather than a valid response.
     * @tparam S Selected complete AddTwoInts source service type.
     * @see ServiceFuture
     */
    template <class S>
    struct ServiceCompletion
    {
        /** @brief Owning response value allocated before request submission.
         * @details Its fields become meaningful after a successful exact response event.
         * @see ServiceCompletion::error
         */
        std::shared_ptr<typename S::Response> response = std::make_shared<typename S::Response>();
        /** @brief Weak association with the submitting source-node core.
         * @details Identity matching protects cross-node waits without extending core life.
         * @see ServiceFuture::_belongs
         */
        std::weak_ptr<detail::Core> owner;
        /** @brief Opaque nonzero request ID returned by actual event submission.
         * @details Zero is the unsubmitted default, never a native sequence number.
         * @see Client::async_send_request
         */
        std::uint64_t request_id{};
        /** @brief Completion failure code, or zero for a successful response.
         * @details Local abandonment uses 125; readiness alone does not clear this code.
         * @see ServiceFuture::get
         */
        std::uint32_t error{};
        /** @brief Flags from the actual matched completion/resource event.
         * @details Zero is also the default before any observed completion event.
         * @see ServiceFuture::completion_flags
         */
        std::uint8_t event_flags{};
        /** @brief Local completion, failure or abandonment has become observable.
         * @details This does not itself establish a successful response value.
         * @see ServiceCompletion::error
         */
        bool ready{};
        /** @brief Local pending result was abandoned while its tombstone stays tracked.
         * @details No native request cancellation follows from this local flag.
         * @see Client::remove_pending_request
         */
        bool abandoned{};
    };

    /** @brief Move-only, nonblocking result owner for one submitted service request.
     * @details get never dispatches or waits. Pending access fails with 11; ready
     * access consumes the future, then raises its actual error or returns the shared
     * response. Discarding/moving the future does not cancel the client's request.
     * This finite surface is not a general std::shared_future implementation.
     * @tparam S Selected complete source AddTwoInts association.
     * @see spin_until_future_complete
     */
    template <class S>
    class ServiceFuture
    {
        std::shared_ptr<ServiceCompletion<S>> data_;
        std::uint8_t retained_flags_{};
        template <class>
        friend class Client;

    public:
        /** @brief Associated service type used by the finite wait overload.
         * @details Supplies only source type association, not runtime authority.
         * @see spin_until_future_complete
         */
        using ServiceType = S;
        /** @brief Create an invalid future without dispatch or allocation.
         * @details valid is false and get refuses 22 until a submitted owner is moved in.
         * @see ServiceFuture::valid
         */
        ServiceFuture() = default;
        /** @brief Disable duplicating the consuming result handle by copy.
         * @details The client still shares internal state to complete one request.
         * @see ServiceFuture::ServiceFuture(ServiceFuture&&)
         */
        ServiceFuture(ServiceFuture const&) = delete;
        /** @brief Disable replacing a result handle by copy assignment.
         * @details This deleted spelling neither cancels nor submits a request.
         * @see ServiceFuture::get
         */
        ServiceFuture& operator= (ServiceFuture const&) = delete;
        /** @brief Transfer the shared completion handle by ordinary member moves.
         * @details A moved-from data handle is empty; no native operation is replayed.
         * @see ServiceFuture::valid
         */
        ServiceFuture(ServiceFuture&&) = default;
        /** @brief Replace this result handle by ordinary member moves.
         * @details Dropping the prior local reference does not cancel its pending
         * request, which remains tracked by its client until completion/cleanup.
         * @see ServiceFuture::get
         */
        ServiceFuture& operator= (ServiceFuture&&) = default;

    private:
        explicit ServiceFuture(std::shared_ptr<ServiceCompletion<S>> data) : data_{std::move(data)}
        {
        }

    public:
        /** @brief Test whether this future still owns a completion-state handle.
         * @details A valid future can be pending or failed; get consumes ready state.
         * @return True for a nonempty local data handle, without I/O.
         * @see ServiceFuture::_ready
         */
        bool valid() const noexcept
        {
            return bool(data_);
        }

        /** @brief Compare this request's weak node association with a supplied core.
         * @details Internal finite wait support only; it creates no native ownership.
         * @param owner Shared source core to compare without retaining it here.
         * @return True for existing state whose locked association equals owner.
         * @see spin_until_future_complete
         */
        bool _belongs(std::shared_ptr<detail::Core> const& owner) const noexcept
        {
            return data_ && data_->owner.lock() == owner;
        }

        /** @brief Inspect completion/failure/abandonment readiness without dispatch.
         * @details Ready does not imply a successful response; get checks its error.
         * @return True only when nonempty state has its ready flag set.
         * @see ServiceFuture::get
         */
        bool _ready() const noexcept
        {
            return data_ && data_->ready;
        }

        /** @brief Read observed completion flags, including after consuming get.
         * @details Active state wins; otherwise use the flags retained by get.
         * @return Actual event flags or the zero default when none were recorded.
         * @see ServiceFuture::get
         */
        std::uint8_t completion_flags() const noexcept
        {
            return data_ ? data_->event_flags : retained_flags_;
        }

        /** @brief Read the opaque request ID while completion state is retained.
         * @details After get or a move empties the data handle, this returns zero.
         * @return Full uint64 Guest request ID, without narrowing or native lookup.
         * @see Client::FutureAndRequestId
         */
        std::uint64_t request_id() const noexcept
        {
            return data_ ? data_->request_id : 0;
        }

        /** @brief Consume one ready completion without waiting or dispatching.
         * @details Empty is 22 and pending is 11 without consumption. Ready state is
         * moved out and its event flags retained before checking the actual error;
         * thus a failed ready get also leaves this future invalid. Success returns
         * its shared response value, independently retained by the caller.
         * @return Shared response on success; failures use RCLError/abort.
         * @see spin_until_future_complete
         */
        std::shared_ptr<typename S::Response> get()
        {
            if(!data_)
            {
                detail::fail(22);
            }
            if(!data_->ready)
            {
                detail::fail(11);
            }
            auto state = std::move(data_);
            retained_flags_ = state->event_flags;
            detail::checked(state->error);
            return std::move(state->response);
        }
    };

    /** @brief Finite event-backed AddTwoInts client with bounded request tracking.
     * @details Node's factory acquires distinct call/observer roles and optional
     * independent readiness observation. A fixed 16-slot table uses the selected
     * 1..16 limit. Submission and completion are separate real event operations;
     * synchronous calls are never presented as completed futures. Serialize calls,
     * retain callback/backend state and keep group lifecycle guards intact.
     * @tparam S Exactly the selected source AddTwoInts service association.
     * @see Node::create_client
     */
    template <class S>
    class Client : public detail::Entity
    {
        static_assert(std::is_same_v<S, detail::AddTwoInts>);
        std::shared_ptr<detail::Core> core_;
        std::optional<roswasmcpp::ServiceClient<S>> client_;
        std::optional<roswasmcpp::Capability> observer_;
        std::optional<roswasmcpp::EventStream> stream_;
        std::optional<roswasmcpp::ServiceAvailability> availability_;
        mutable bool query_busy_{};
        std::uint32_t availability_cleanup_status_{};

        bool observe_service(std::uint64_t wait_ns) const
        {
            detail::running();
            if(closed_ || core_->closed || !client_)
            {
                detail::fail(9);
            }
            if(source_retired_)
            {
                detail::fail(source_error_);
            }
            if(busy_ || query_busy_ || detail::state().service_dispatching)
            {
                detail::fail(17);
            }
            if(!availability_)
            {
                detail::fail(95);
            }
            // Retain all group facades and pin lifecycle before invoking even a
            // local test transport. No native callback can enter Wasm, and a
            // reentrant local transport cannot close/regrant a borrowed owner.
            detail::ServiceLease lease{query_busy_};
            bool ready{};
            detail::checked(availability_->query(wait_ns, ready));
            return ready;
        }

        std::array<std::shared_ptr<ServiceCompletion<S>>, 16> pending_{};
        std::size_t maximum_{};
        std::array<unsigned char, 72> bytes_{};
        std::array<std::uint32_t, 2> cleanup_statuses_{};
        roswasmc_cleanup_report cleanup_report_{};
        bool busy_{}, closed_{}, source_retired_{};
        std::uint32_t source_error_{};

        void fail_pending(std::uint32_t code) noexcept
        {
            for(auto& p: pending_)
            {
                if(p)
                {
                    if(!p->ready)
                    {
                        p->error = code;
                        p->ready = true;
                    }
                    p.reset();
                }
            }
        }

    public:
        /** @brief Shared ownership of one selected client facade and its roles.
         * @details Pointer copies retain existing ownership without submitting work.
         * @see Client::close
         */
        using SharedPtr = std::shared_ptr<Client>;
        /** @brief Move-only result handle completed by this client's actual events.
         * @details Discarding the handle alone does not remove the tracked request.
         * @see ServiceFuture
         */
        using Future = ServiceFuture<S>;

        /** @brief Move-only future paired with its full-width submitted request ID.
         * @details The public ID remains a value snapshot even after consuming the
         * future. It is a Guest correlation ID, never native rmw metadata/authority.
         * @see Client::async_send_request
         */
        struct FutureAndRequestId
        {
            /** @brief Associated source service for finite wait overload selection.
             * @details This type alias grants no runtime operation.
             * @see spin_until_future_complete
             */
            using ServiceType = S;
            /** @brief Consuming nonblocking result owner for the submitted request.
             * @details Moves transfer the handle; get consumes ready state once.
             * @see ServiceFuture::get
             */
            Future future;
            /** @brief Full uint64 ID returned by actual selected service submission.
             * @details Used with the associated future to validate local removal.
             * @see Client::remove_pending_request
             */
            std::uint64_t request_id{};

            /** @brief Move a future together with an explicit ID snapshot.
             * @details This local constructor performs no submission or identity
             * validation; removal/wait operations check their respective association.
             * @param value Result handle transferred into this pair.
             * @param id Opaque Guest request-ID value to preserve.
             * @see Client::async_send_request
             */
            FutureAndRequestId(Future value, std::uint64_t id) : future{std::move(value)}, request_id{id}
            {
            }

            /** @brief Disable duplicating the consuming pair by copy construction.
             * @details Share response values after get rather than copying this handle.
             * @see FutureAndRequestId::get
             */
            FutureAndRequestId(FutureAndRequestId const&) = delete;
            /** @brief Disable copy replacement of the consuming pair.
             * @details This deleted operation performs no native request cancellation.
             * @see FutureAndRequestId::future
             */
            FutureAndRequestId& operator= (FutureAndRequestId const&) = delete;
            /** @brief Transfer future ownership and copy the ID snapshot by member moves.
             * @details No request is submitted or replayed by this local operation.
             * @see FutureAndRequestId::valid
             */
            FutureAndRequestId(FutureAndRequestId&&) = default;
            /** @brief Replace the pair using ordinary member moves.
             * @details Dropping a prior future reference does not cancel its request.
             * @see ServiceFuture::operator=
             */
            FutureAndRequestId& operator= (FutureAndRequestId&&) = default;

            /** @brief Inspect whether the paired future still has completion state.
             * @details Validity does not imply readiness or successful business outcome.
             * @return The future's local validity predicate.
             * @see FutureAndRequestId::_ready
             */
            bool valid() const noexcept
            {
                return future.valid();
            }

            /** @brief Inspect readiness without waiting or polling.
             * @details Error/abandonment completion also counts as ready.
             * @return The future's current local ready predicate.
             * @see FutureAndRequestId::get
             */
            bool _ready() const noexcept
            {
                return future._ready();
            }

            /** @brief Compare the future's source-node association for finite waits.
             * @details Performs only weak local identity comparison without imports.
             * @param owner Source core expected to own this request association.
             * @return The future's association predicate.
             * @see ServiceFuture::_belongs
             */
            bool _belongs(std::shared_ptr<detail::Core> const& owner) const noexcept
            {
                return future._belongs(owner);
            }

            /** @brief Consume the paired ready future without dispatching or waiting.
             * @details Empty/pending/failure behavior follows ServiceFuture::get;
             * the separate request_id snapshot remains unchanged.
             * @return Shared response on success, otherwise adapter failure handling.
             * @see ServiceFuture::get
             */
            std::shared_ptr<typename S::Response> get()
            {
                return future.get();
            }
        };

        /** @brief Retain a nonnull source core before factory activation.
         * @details Null input fails with 22. No call/observer/readiness role is opened
         * until Node's factory activates its exact selected service row.
         * @param core Shared internal source-node owner retained through cleanup.
         * @see Node::create_client
         */
        explicit Client(std::shared_ptr<detail::Core> core) : core_{std::move(core)}
        {
            if(!core_)
            {
                detail::fail(22);
            }
        }

    private:
        friend class Node;

        void _activate(roswasm_rclcpp::ServiceBinding const& row)
        {
            maximum_ = row.maximum_pending;
            client_.emplace(core_->context(), row.call_alias, 8);
            detail::checked(client_->error());
            observer_.emplace(core_->context(), row.observer_alias);
            detail::checked(observer_->error());
            stream_.emplace(*observer_, client_->borrowed_event_source(), *detail::state().selection->services->events);
            detail::checked(stream_->error());
            if(!row.availability_alias.empty())
            {
                availability_.emplace(core_->context(),
                                      *detail::state().selection->services->clients,
                                      client_->borrowed_event_source(),
                                      row.availability_alias);
                detail::checked(availability_->error());
            }
        }

    public:
        /** @brief Query one real readiness observation with zero wait budget.
         * @details Requires a running live client, selected availability namespace/
         * alias and no callback/query reentry. Missing optional observation is 95;
         * no business request is submitted or graph name treated as readiness.
         * @return The validated readiness Boolean; numeric errors use RCLError/abort.
         * @see Client::wait_for_service
         */
        bool service_is_ready() const
        {
            return observe_service(0);
        }

        /** @brief Perform one explicitly selected finite native readiness wait.
         * @details Convert duration to nanoseconds and reject negative/nonfinite or
         * values above 60000000000 with 22 before import. Positive fractional nanos
         * truncate toward zero. Host policy may impose a smaller bound and retains
         * its numeric error. This metadata observation submits no business request.
         * @tparam Rep Duration count representation accepted by chrono conversion.
         * @tparam Period Ratio describing the caller's explicit duration units.
         * @param duration Finite nonnegative budget of at most 60 seconds.
         * @return Validated ready Boolean, using adapter failure handling on error.
         * @see Client::service_is_ready
         */
        template <class Rep, class Period>
        bool wait_for_service(std::chrono::duration<Rep, Period> duration) const
        {
            auto ns = std::chrono::duration<long double, std::nano>{duration}.count();
            if(!std::isfinite(ns) || ns < 0 || ns > 60000000000.0L)
            {
                detail::fail(22);
            }
            return observe_service(static_cast<std::uint64_t>(ns));
        }

        /** @brief Refuse the unsupported unbounded readiness-wait spelling.
         * @details Always fails with 95 before any observation import; this profile
         * requires an explicit finite duration and selected observation contract.
         * @return No successful result; the adapter failure path is always entered.
         * @see Client::wait_for_service(std::chrono::duration<Rep,Period>)
         */
        bool wait_for_service() const
        {
            detail::fail(95);
        }

        /** @brief Submit one real event-backed request and return its pending handle.
         * @details Requires live/running state, no service-group reentry, a nonnull
         * request and an available selected slot. Allocate full state/response/wire
         * bytes before import. Return the actual submitted opaque ID; completion
         * requires a later exact event. Submission errors are not replayed. Duplicate
         * IDs fail pending state with 22; capacity exhaustion is 90.
         * @param request Shared request value read/encoded synchronously, not retained.
         * @return Move-only future/ID pair for the admitted pending request.
         * @see Client::poll
         */
        FutureAndRequestId async_send_request(std::shared_ptr<typename S::Request> const& request)
        {
            detail::running();
            if(closed_ || core_->closed || !stream_)
            {
                detail::fail(9);
            }
            if(source_retired_)
            {
                detail::fail(source_error_);
            }
            if(busy_ || detail::state().service_dispatching)
            {
                detail::fail(17);
            }
            if(!request)
            {
                detail::fail(22);
            }
            std::size_t slot = maximum_;
            for(std::size_t i{}; i != maximum_; ++i)
            {
                if(!pending_[i])
                {
                    slot = i;
                    break;
                }
            }
            if(slot == maximum_)
            {
                detail::fail(90);
            }
            // Allocate complete state, response and encoded request before submit.
            auto state = std::make_shared<ServiceCompletion<S>>();
            state->owner = core_;
            auto bytes = roswasmcpp::ServiceCodec<S>::encode(*request);
            Future future{state};
            pending_[slot] = state;
            std::uint64_t id{};
            auto code = stream_->submit(bytes, id);
            if(code)
            {
                pending_[slot].reset();
                state->error = code;
                state->ready = true;
                detail::fail(code);
            }
            for(std::size_t i{}; i != maximum_; ++i)
            {
                if(i != slot && pending_[i] && pending_[i]->request_id == id)
                {
                    fail_pending(22);
                    detail::fail(22);
                }
            }
            state->request_id = id;
            return {std::move(future), id};
        }

        /** @brief Abandon a matching local result while retaining its drain tombstone.
         * @details Validate pair ID, state and source-core association. First removal
         * marks ready/error 125 without native cancellation. The slot stays occupied
         * until a valid matching late event or cleanup drains it; repeated removal
         * returns false. Closed/guard/mismatched inputs use 9/17/22 failure handling.
         * @param future Pair returned for this exact client's pending request.
         * @return True on first local abandonment, otherwise false when untracked/already
         * abandoned; no native stop or cancellation acknowledgement is implied.
         * @see Client::poll
         */
        bool remove_pending_request(FutureAndRequestId const& future)
        {
            detail::running();
            if(closed_ || core_->closed)
            {
                detail::fail(9);
            }
            if(busy_ || detail::state().service_dispatching)
            {
                detail::fail(17);
            }
            if(!future.future.data_ || future.request_id != future.future.data_->request_id || !future._belongs(core_))
            {
                detail::fail(22);
            }
            for(auto& p: pending_)
            {
                if(p && p == future.future.data_ && !p->abandoned)
                {
                    p->abandoned = true;
                    p->error = 125;
                    p->ready = true;
                    return true;
                }
            }
            return false;
        }

        /** @brief Consume one selected event and update only its exact correlation.
         * @details The unnamed timestamp is unused. A group lease pins facade
         * lifetimes. Idle 11 is preserved; transport failures fail pending requests.
         * Source-close/error events retain flags and retire affected pending state.
         * Responses require complete eight-byte decoding even for abandoned
         * tombstones. Wrong kinds, unknown IDs, duplicates or malformed responses
         * fail pending requests with 22; another request is never completed instead.
         * @return Zero after a handled event, idle 11, guard 17, closed 9 or event error.
         * @see Client::async_send_request
         */
        std::uint32_t poll(std::uint64_t) override
        {
            if(closed_ || core_->closed || !stream_)
            {
                return 9;
            }
            if(busy_ || detail::state().service_dispatching)
            {
                return 17;
            }
            detail::ServiceLease lease{busy_};
            auto event = stream_->poll(bytes_);
            if(event.result.error)
            {
                if(event.result.error != 11)
                {
                    fail_pending(event.result.error);
                }
                return event.result.error;
            }
            auto const& h = event.header;
            if(h.kind == ROSWASMC_RESOURCE_CLOSED || (h.kind == ROSWASMC_RESOURCE_ERROR && (!h.correlation || (h.flags & 1u))))
            {
                if(h.kind == ROSWASMC_RESOURCE_CLOSED || (h.flags & 1u))
                {
                    source_retired_ = true;
                    source_error_ = h.error ? h.error : 9;
                }
                for(auto& state: pending_)
                {
                    if(state)
                    {
                        state->event_flags = h.flags;
                    }
                }
                fail_pending(h.error ? h.error : 9);
                return 0;
            }
            if(h.kind != ROSWASMC_SERVICE_RESPONSE && h.kind != ROSWASMC_RESOURCE_ERROR)
            {
                fail_pending(22);
                return 22;
            }
            for(auto& state: pending_)
            {
                if(state && state->request_id == h.correlation)
                {
                    // Local abandonment does not weaken the canonical response wire.
                    // Validate the complete value before retiring its tombstone. A bad
                    // late response fails22 while the already-local125 stays unchanged.
                    typename S::Response next{};
                    if(h.kind == ROSWASMC_SERVICE_RESPONSE &&
                       !roswasmcpp::ServiceCodec<S>::decode_response({bytes_.data() + 64, static_cast<std::size_t>(h.payload_bytes)}, next))
                    {
                        fail_pending(22);
                        return 22;
                    }
                    state->event_flags = h.flags;
                    if(!state->abandoned && h.kind == ROSWASMC_RESOURCE_ERROR)
                    {
                        state->error = h.error;
                        state->ready = true;
                    }
                    else if(!state->abandoned)
                    {
                        *state->response = next;
                        state->ready = true;
                    }
                    state.reset();
                    return 0;
                }
            }
            fail_pending(22);
            return 22;  // Unknown/duplicate response cannot complete another request.
        }

        /** @brief Retire local pending state and attempt reverse role cleanup once.
         * @details Busy/group dispatch returns 17 without mutation. Otherwise mark
         * closed, complete pending handles with 125, then close optional availability,
         * observer and call-source owners in reverse acquisition order. Record each
         * reported error/count without replay; repeated facade closes return zero.
         * @return Guard 17, first reported cleanup error, or zero.
         * @see Client::cleanup_report
         */
        std::uint32_t close() noexcept override
        {
            if(busy_ || detail::state().service_dispatching)
            {
                return 17;
            }
            if(closed_)
            {
                return 0;
            }
            closed_ = true;
            fail_pending(125);
            cleanup_report_ = roswasmc_cleanup_init(0);
            auto record = [&](std::size_t index, std::uint32_t code)
            {
                cleanup_statuses_[index] = code;
                ++cleanup_report_.attempted;
                if(code)
                {
                    ++cleanup_report_.failed;
                    if(!cleanup_report_.cleanup_error)
                    {
                        cleanup_report_.cleanup_error = code;
                    }
                }
            };
            // The optional query was acquired last and retires first. Preserve the
            // original observer/source status slots for existing callers; its own
            // status is separate while the aggregate counts every real attempt.
            if(availability_ && availability_->is_open())
            {
                auto code = availability_->close();
                availability_cleanup_status_ = code;
                ++cleanup_report_.attempted;
                if(code)
                {
                    ++cleanup_report_.failed;
                    if(!cleanup_report_.cleanup_error)
                    {
                        cleanup_report_.cleanup_error = code;
                    }
                }
            }
            if(observer_ && observer_->is_open())
            {
                record(0, observer_->close());
            }
            if(client_ && client_->is_open())
            {
                record(1, client_->close());
            }
            return cleanup_report_.cleanup_error;
        }

        /** @brief Copy the retained aggregate cleanup report.
         * @details Includes the optional availability owner's reported attempt/error
         * counts in addition to the two original role-status slots.
         * @return Value snapshot; zero defaults alone do not prove cleanup occurred.
         * @see Client::cleanup_statuses
         */
        roswasmc_cleanup_report cleanup_report() const noexcept
        {
            return cleanup_report_;
        }

        /** @brief Borrow observer/call-source cleanup statuses in that order.
         * @details Array lifetime is this facade's lifetime. The optional query
         * result is separate; inspect the aggregate report for captured counts.
         * @return Const two-element role-status array reference.
         * @see Client::availability_cleanup_status
         */
        std::array<std::uint32_t, 2> const& cleanup_statuses() const noexcept
        {
            return cleanup_statuses_;
        }  // observer, call source

        /** @brief Read the optional readiness owner's retained close result.
         * @details Separate from observer/call slots; the zero default can also mean
         * no availability owner or no cleanup attempt yet.
         * @return Recorded numeric readiness-owner cleanup result.
         * @see Client::cleanup_report
         */
        std::uint32_t availability_cleanup_status() const noexcept
        {
            return availability_cleanup_status_;
        }

        /** @brief Best-effort close with first adapter cleanup-error retention.
         * @details Remaining member owners then use their destructor semantics;
         * pending business requests are not replayed or escalated to cancellation.
         * @see roswasm_rclcpp_cleanup_error
         */
        ~Client()
        {
            detail::cleanup(close());
        }
    };

    /** @brief Activate and register one exact selected finite service server.
     * @details Resolve the server row and prepare shared callable/facade storage
     * before acquiring its logger and advertise/respond owners. Uses the Node
     * declaration's finite callback/lifetime and checked-failure contract.
     * @tparam S Exactly the selected source AddTwoInts association.
     * @tparam Callback Convertible to the supported three-shared-pointer callback.
     * @param name Counted exact selected service spelling.
     * @param callback Callable construction source retained by the facade.
     * @return Shared activated server registered in this node core.
     * @see Service
     */
    template <class S, class Callback>
    std::shared_ptr<Service<S>> Node::create_service(std::string_view name, Callback&& callback)
    {
        auto const& row = detail::service(*core_, name, roswasm_rclcpp::ServiceRole::server);
        using Function = std::function<void(std::shared_ptr<rmw_request_id_t>, std::shared_ptr<typename S::Request>, std::shared_ptr<typename S::Response>)>;
        auto value = std::make_shared<Service<S>>(core_, Function{std::forward<Callback>(callback)});
        // Registry capacity and strong facade/callable ownership already exist.
        value->_activate(row);
        core_->add(value);
        return value;
    }

    /** @brief Activate and register one exact selected finite service client.
     * @details Lookup validates the client profile and independent role aliases;
     * activation opens the call, observer and optional readiness owners explicitly.
     * Checked acquisition failure follows normal member cleanup without replay.
     * @tparam S Exactly the selected source AddTwoInts association.
     * @param name Counted exact selected service spelling.
     * @return Shared activated event-backed client registered in this core.
     * @see Client
     */
    template <class S>
    std::shared_ptr<Client<S>> Node::create_client(std::string_view name)
    {
        auto const& row = detail::service(*core_, name, roswasm_rclcpp::ServiceRole::client);
        auto value = std::make_shared<Client<S>>(core_);
        value->_activate(row);
        core_->add(value);
        return value;
    }
    /** @brief Local outcome of the finite caller-driven future dispatch loop.
     * @details These values concern readiness/pacing rather than native business
     * success. A ready future still requires get to inspect its actual error.
     * @see spin_until_future_complete
     */
    enum class FutureReturnCode
    {
        /** @brief Completion state became ready within the finite pass bound.
         * @details Failure or local-abandonment readiness also yields this value.
         * @see ServiceFuture::get
         */
        SUCCESS,
        /** @brief Local running state stopped during the finite wait loop.
         * @details This does not cancel or prove completion of a native request.
         * @see shutdown
         */
        INTERRUPTED,
        /** @brief The selected finite iteration budget ended before readiness.
         * @details Records local last_error 110 without cancellation or hidden retry.
         * @see roswasm_rclcpp_last_error
         */
        TIMEOUT
    };

    /** @brief Drive bounded selected dispatch until this node's future becomes ready.
     * @details Requires a nonnull Node-derived facade, valid associated future and
     * initially running state. Wrong association is 22 and concurrent/reentrant
     * spin/group mutation is 17. Each pass invokes the selected pacing hook and
     * snapshots/polls this core's live entities. Ready returns SUCCESS even for a
     * failed completion; local shutdown returns INTERRUPTED. Pass exhaustion records
     * 110 and returns TIMEOUT without closing the node or cancelling its request.
     * Poll/callback failures follow RCLError/abort; a lease clears local spin flags.
     * @tparam NodeT Node or a public derived finite source-node type.
     * @tparam Future Finite associated future/pair exposing ServiceType and predicates.
     * @param node Shared node retained for the complete caller-driven dispatch call.
     * @param future Existing result owner inspected without consuming get.
     * @return Local readiness/interruption/budget outcome, independent of business error.
     * @see ServiceFuture::get
     */
    template <class NodeT, class Future>
        requires requires { typename Future::ServiceType; }
    FutureReturnCode spin_until_future_complete(std::shared_ptr<NodeT> const& node, Future const& future)
    {
        static_assert(std::is_base_of_v<Node, NodeT>);
        if(!node || !future.valid())
        {
            detail::fail(22);
        }
        auto retained = node;
        auto core = retained->_service_core();
        auto& s = detail::state();
        detail::running();
        if(!future._belongs(core))
        {
            detail::fail(22);
        }
        if(s.spinning || s.service_dispatching || core->dispatching || core->closed)
        {
            detail::fail(17);
        }

        struct Lease
        {
            bool& flag;
            std::shared_ptr<detail::Core> core;

            ~Lease()
            {
                flag = false;
                core->dispatching = false;
            }
        } lease{s.spinning, core};

        s.spinning = true;
        for(std::size_t pass{}; pass != s.selection->maximum_spin_steps; ++pass)
        {
            if(future._ready())
            {
                return FutureReturnCode::SUCCESS;
            }
            if(!ok())
            {
                return FutureReturnCode::INTERRUPTED;
            }
            auto step = s.selection->step(s.selection->step_context);
            if(step == 125)
            {
                shutdown();
                return FutureReturnCode::INTERRUPTED;
            }
            detail::checked(step);
            if(!ok())
            {
                return FutureReturnCode::INTERRUPTED;
            }
            std::vector<std::shared_ptr<detail::Entity>> owners;
            owners.reserve(core->entities.size());
            for(auto const& weak: core->entities)
            {
                if(auto p = weak.lock())
                {
                    owners.push_back(std::move(p));
                }
            }
            auto now = core->clock ? core->now() : 0;
            core->dispatching = true;
            for(auto const& owner: owners)
            {
                auto code = owner->poll(now);
                if(code != 11)
                {
                    detail::checked(code);
                }
                if(!ok())
                {
                    break;
                }
            }
            core->dispatching = false;
        }
        if(future._ready())
        {
            return FutureReturnCode::SUCCESS;
        }
        s.last_error = 110;
        return FutureReturnCode::TIMEOUT;
    }
}  // namespace rclcpp
