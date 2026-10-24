/** @file Complete generated-record owners shared by every C++ source profile.
 * Bindings name the original generated C codecs and operations exactly. No
 * native SDK object or standard-library object crosses this header's C ABI.
 * Legacy handlers are function pointer + user state; modern handlers retain
 * shared callable snapshots so replacement affects the following pass.
 */
#pragma once
#include <platform/ros/cpp/roswasm/cpp_profile.hpp>
#include <platform/ros/c/roswasm/roswasmc.h>
#include <platform/ros/c/roswasm/action_bundle.h>
#include <platform/ros/cpp/roswasm/views.hpp>
#include <stdint.h>
#if !ROSWASM_CPP_LEGACY
# include <functional>
# include <memory>
# include <utility>
#endif
#if !ROSWASM_CPP_LEGACY && ROSWASM_CPP_STANDARD >= 20
# include <array>
#endif
namespace roswasmcpp
{
    namespace vendor_detail
    {
        /** @brief Borrow the exact bytes of a generated-interface alias.
         * @details Adds no terminator or validation. The original character storage
         * must remain live during its synchronous consumer; no Host call is performed.
         * @param[in] value Caller-owned counted alias bytes.
         * @return A C range borrowing the same pointer and byte count.
         * @see roswasmc_action_bundle_alias
         */
        inline roswasmc_string alias(StringView value)
        {
            roswasmc_string out = {value.data(), value.size()};
            return out;
        }

        /** @brief Construct a local failure without inventing a payload length.
         * @details Does not import or change an owner. The caller supplies the actual
         * numeric validation/operation error; this helper does not translate it.
         * @param[in] code Error code to retain, normally nonzero.
         * @return Result with that error, zero length and has_length false.
         * @see roswasmc_action_bundle_failure
         */
        inline roswasmc_result failure(uint32_t code)
        {
            roswasmc_result r = {code, 0, 0};
            return r;
        }

        /** @brief Scope one caller-driven server pass with a borrowed busy flag.
         * @details Internal local guard, without a native lock or synchronization.
         * Construct only after rejecting an already-busy owner. The flag storage must
         * outlive the guard; normal return/native exception unwinding releases it.
         * @see roswasmcpp::vendor_detail::ServiceServer::process_once
         */
        struct Pass
        {
            /** @brief Borrowed local dispatch state.
             * @details References the live server's flag; it is not an atomic variable.
             * @see Pass::Pass
             */
            bool& busy;

            /** @brief Mark one previously idle local pass active.
             * @details Does not check for nested entry; the enclosing server does so
             * before construction. No allocation or Host import occurs.
             * @param[in,out] value Live false flag, borrowed until destruction.
             * @see Pass::~Pass
             */
            explicit Pass(bool& value) : busy(value)
            {
                busy = true;
            }

            /** @brief Release the borrowed local pass flag.
             * @details Sets the original flag false on ordinary scope exit or native
             * unwinding. It does not close any Host resource.
             * @see Pass::Pass
             */
            ~Pass()
            {
                busy = false;
            }

        private:
            Pass(Pass const&);
            Pass& operator= (Pass const&);
        };

        /** @brief Stationary base owner for independent advertise/respond capabilities.
         * @details Concrete generated Service/Action servers keep two distinct handles
         * and an inline copy of the context. Its immutable backend must outlive the
         * server. This object is noncopyable/nonmoving in all C++98-or-newer profiles.
         * Callers serialize access and keep the server alive throughout callbacks.
         * Destruction is nonvirtual: destroy the concrete server type, not a derived
         * object through this base pointer. Host grants remain separate for both roles.
         * @see roswasmcpp::vendor_detail::ServerOwners::close_checked
         */
        class ServerOwners
        {
            ServerOwners(ServerOwners const&);
            ServerOwners& operator= (ServerOwners const&);

        protected:
            roswasmc_context context_;
            roswasmc_capability advertise_, respond_;
            uint32_t error_;
            bool busy_;
            roswasmc_cleanup_report rollback_;

            ServerOwners(roswasmc_context const& c, StringView advertise, StringView respond, bool action) :
                context_(c), advertise_(), respond_(), error_(0), busy_(false), rollback_()
            {
                roswasmc_capability_init(&advertise_, &context_);
                roswasmc_capability_init(&respond_, &context_);
                error_ = roswasmc_check_operation(&context_, action ? ROSWASMC_ACTION_RESPOND : ROSWASMC_SERVICE_RESPOND);
                if(!error_ && (!roswasmc_action_bundle_alias(alias(advertise)) || !roswasmc_action_bundle_alias(alias(respond)) || advertise == respond))
                {
                    error_ = UWVM_ROS_INVALID;
                }
                if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                {
                    error_ = UWVM_ROS_UNSUPPORTED;
                }
                if(!error_)
                {
                    error_ = action                                ? roswasmc_check_operation(&context_, ROSWASMC_ACTION_ADVERTISE)
                             : context_.backend->advertise_service ? 0
                                                                   : UWVM_ROS_UNSUPPORTED;
                }
                if(!error_)
                {
                    error_ = roswasmc_open(&advertise_, advertise.data(), advertise.size());
                }
                if(!error_)
                {
                    error_ = roswasmc_open(&respond_, respond.data(), respond.size());
                }
                if(!error_ && advertise_.handle == respond_.handle)
                {
                    respond_.handle = 0;
                    error_ = UWVM_ROS_CONFLICT;
                }
                if(!error_)
                {
                    if(action)
                    {
                        roswasmc_result r = roswasmc_action_advertise(&advertise_, 0, 0, 0, 0);
                        error_ = r.error ? r.error : !r.has_length || r.length ? UWVM_ROS_INVALID : 0;
                    }
                    else
                    {
                        error_ = roswasmc_service_advertise(&advertise_);
                    }
                }
                if(error_)
                {
                    rollback_ = cleanup(error_, 0, 0, false);
                }
            }

            roswasmc_cleanup_report cleanup(uint32_t primary, uint32_t* statuses, size_t count, bool revoke)
            {
                roswasmc_cleanup_report r = roswasmc_cleanup_init(primary);
                if(busy_)
                {
                    r.cleanup_error = UWVM_ROS_CONFLICT;
                    return r;
                }
                if(statuses && count < 2)
                {
                    r.cleanup_error = UWVM_ROS_INVALID;
                    return r;
                }
                if(!is_open())
                {
                    r.cleanup_error = UWVM_ROS_BAD_HANDLE;
                    return r;
                }
                roswasmc_capability* owners[2] = {&advertise_, &respond_};
                for(size_t i = 2; i > 0; --i)
                {
                    uint32_t code = 0;
                    if(roswasmc_is_open(owners[i - 1]))
                    {
                        code = revoke ? roswasmc_revoke(owners[i - 1]) : roswasmc_close(owners[i - 1]);
                        ++r.attempted;
                        if(code)
                        {
                            ++r.failed;
                            if(!r.cleanup_error)
                            {
                                r.cleanup_error = code;
                            }
                        }
                    }
                    if(statuses)
                    {
                        statuses[i - 1] = code;
                    }
                }
                return r;
            }

        public:
            /** @brief Attempt best-effort cleanup of remaining server roles.
             * @details Closes respond before advertise and discards the report. Use
             * close_checked() before destruction to observe independent failures.
             * An active callback must finish before this owner is destroyed.
             * @see ServerOwners::close_checked
             */
            ~ServerOwners()
            {
                if(is_open())
                {
                    cleanup(0, 0, 0, false);
                }
            }

            /** @brief Inspect cached setup status and remaining local ownership.
             * @details Does not query native health or replace the latest per-operation
             * result. Any remaining role makes local ownership nonempty; constructor
             * failure retains its original code even after rollback.
             * @return Setup error, otherwise zero while any role is owned, otherwise
             * UWVM_ROS_BAD_HANDLE after local retirement.
             * @see ServerOwners::construction_cleanup
             */
            uint32_t error() const
            {
                return error_ ? error_ : is_open() ? 0 : UWVM_ROS_BAD_HANDLE;
            }

            /** @brief Test whether either local server-role handle remains owned.
             * @details This is not a Host validity, deadline or paired-role health probe.
             * Makes no import or implicit reconnect.
             * @return True for at least one nonzero local role handle.
             * @see ServerOwners::error
             */
            bool is_open() const
            {
                return roswasmc_is_open(&advertise_) || roswasmc_is_open(&respond_);
            }

            /** @brief Inspect cleanup performed after a constructor failure.
             * @details Returns the stored rollback report by value without retrying any
             * cleanup. Primary setup failure and subsequent cleanup failure are distinct.
             * @return Original construction rollback counters and error fields.
             * @see ServerOwners::error
             */
            roswasmc_cleanup_report construction_cleanup() const
            {
                return rollback_;
            }

            /** @brief Retire owned roles with an observable reverse-order close report.
             * @details Closes respond then advertise once, preserving primary separately.
             * A short status buffer or active callback refuses before cleanup. Empty
             * ownership reports BAD_HANDLE. Ambiguous Host errors do not retain a local
             * handle for automatic retry; cleanup is not native cancellation or motion stop.
             * @param[in] primary Earlier operation error to retain in the report.
             * @param[out] statuses Optional disjoint writable uint32 storage; indices 0/1
             * receive advertise/respond results regardless of reverse execution order.
             * @param[in] count Status element capacity; at least 2 when statuses is nonnull.
             * @return Primary error plus attempted/failed counters and first cleanup error.
             * @see roswasmc_close
             */
            roswasmc_cleanup_report close_checked(uint32_t primary, uint32_t* statuses = 0, size_t count = 0)
            {
                return cleanup(primary, statuses, count, false);
            }

            /** @brief Revoke owned roles with a separate cleanup report.
             * @details Uses respond-before-advertise ordering and never retries ambiguous
             * failures. Requires backend/Host revoke support; revocation does not prove
             * that previously admitted external effects stopped. Busy/short-buffer and
             * empty-owner behavior matches close_checked().
             * @param[in] primary Earlier operation error to preserve independently.
             * @param[out] statuses Optional disjoint writable two-element role results,
             * advertise at index 0 and respond at index 1.
             * @param[in] count Element capacity, at least 2 for nonnull statuses.
             * @return Primary error and actual independent cleanup results/counters.
             * @see roswasmc_revoke
             */
            roswasmc_cleanup_report revoke_checked(uint32_t primary, uint32_t* statuses = 0, size_t count = 0)
            {
                return cleanup(primary, statuses, count, true);
            }

            /** @brief Close using caller-owned contiguous status storage.
             * @details Forwards data()/size() without allocation; a nonnull range shorter
             * than two elements refuses before cleanup. Storage must not alias the owner.
             * @tparam A Array/view with writable uint32 data() and element-count size().
             * @param[in] primary Earlier operation error retained independently.
             * @param[out] statuses Role results in advertise/respond index order.
             * @return The pointer overload's actual cleanup report.
             * @see ServerOwners::close_checked(uint32_t, uint32_t*, size_t)
             */
            template <class A>
            roswasmc_cleanup_report close_checked(uint32_t primary, A& statuses)
            {
                return cleanup(primary, statuses.data(), statuses.size(), false);
            }

            /** @brief Revoke using caller-owned contiguous status storage.
             * @details Forwards data()/size(); no native effects are undone by this
             * adapter. The buffer remains borrowed only for this synchronous call.
             * @tparam A Array/view with writable uint32 data() and element-count size().
             * @param[in] primary Earlier operation error retained separately.
             * @param[out] statuses Disjoint advertise/respond results, at least two slots.
             * @return The pointer overload's actual revoke report.
             * @see ServerOwners::revoke_checked(uint32_t, uint32_t*, size_t)
             */
            template <class A>
            roswasmc_cleanup_report revoke_checked(uint32_t primary, A& statuses)
            {
                return cleanup(primary, statuses.data(), statuses.size(), true);
            }
        };

        /** @brief Stationary complete-value client for one generated Service binding.
         * @details Supported in C++98 and newer. Stores context metadata inline and
         * borrows its immutable backend for the owner's full lifetime. Copying/moving
         * is prohibited so internal C pointers remain stable. Calls execute once on the
         * caller's stack, without a worker or retry; serialize access to this owner.
         * @tparam Binding Generated Request/Response aliases and exact C call adapter.
         * @see roswasmcpp::vendor_detail::ServiceClient::call
         */
        template <class Binding>
        class ServiceClient
        {
            roswasmc_context context_;
            roswasmc_capability cap_;
            uint32_t error_;
            ServiceClient(ServiceClient const&);
            ServiceClient& operator= (ServiceClient const&);

        public:
            /** @brief Complete generated request storage type.
             * @details Retains the binding's full bounded C representation and defaults.
             * Merely naming the type creates no endpoint or permission.
             * @see roswasmcpp::vendor_detail::ServiceClient::call
             */
            typedef typename Binding::Request Request;
            /** @brief Complete generated response storage type.
             * @details Response ownership remains with the caller; successful call()
             * commits only the validated complete record.
             * @see roswasmcpp::vendor_detail::ServiceClient::call
             */
            typedef typename Binding::Response Response;

            /** @brief Validate the backend and open one exact service-call alias.
             * @details Copies context metadata, checks role/ABI support and alias grammar,
             * then attempts one Host open. No fallback grant or native type is fabricated.
             * Inspect error() before use. Underlying backend callbacks must not throw.
             * @param[in] c Context metadata; its immutable backend must outlive this owner.
             * @param[in] selected Borrowed 1..255 ASCII alias bytes using letters, digits,
             * underscore, dot or hyphen; dot and double-dot alone are refused. Host policy
             * must independently grant this service/type/direction.
             * @see ServiceClient::error
             */
            ServiceClient(roswasmc_context const& c, StringView selected) : context_(c), cap_(), error_(0)
            {
                roswasmc_capability_init(&cap_, &context_);
                error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
                if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                {
                    error_ = UWVM_ROS_UNSUPPORTED;
                }
                if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                {
                    error_ = UWVM_ROS_INVALID;
                }
                if(!error_)
                {
                    error_ = roswasmc_open(&cap_, selected.data(), selected.size());
                }
            }

            /** @brief Attempt one best-effort close of an owned service handle.
             * @details Discards the cleanup status and performs no retry. Finish all
             * borrowed calls before destruction; use close() to observe cleanup first.
             * @see ServiceClient::close
             */
            ~ServiceClient()
            {
                if(is_open())
                {
                    roswasmc_close(&cap_);
                }
            }

            /** @brief Inspect setup status and local service ownership.
             * @details Makes no Host health query. A later call's failure is returned by
             * call() and does not replace this cached construction status.
             * @return Setup error, zero for a locally owned handle, or UWVM_ROS_BAD_HANDLE after close.
             * @see ServiceClient::call
             */
            uint32_t error() const
            {
                return error_ ? error_ : is_open() ? 0 : UWVM_ROS_BAD_HANDLE;
            }

            /** @brief Test for a locally owned service handle.
             * @details Does not check native availability, deadline or authority renewal.
             * @return True for a nonzero local handle.
             * @see ServiceClient::close
             */
            bool is_open() const
            {
                return roswasmc_is_open(&cap_) != 0;
            }

            /** @brief Call the bound service once with its complete request record.
             * @details Requires the constructor's exact service.call grant. The binding
             * validates/encodes the full input and commits a complete response only after
             * successful framing/decoding. Failure can follow native work and is never
             * replayed implicitly. Inputs are borrowed only during this synchronous call.
             * @param[in] value Complete request, using declared bounds and field semantics.
             * @param[in,out] response Disjoint caller-owned response, unchanged on refusal.
             * @return Actual binding result, or cached setup/BAD_HANDLE failure without
             * importing when this owner is not ready. Inspect error before output.
             * @see roswasmc_service_call
             */
            roswasmc_result call(Request const& value, Response& response)
            {
                return error() ? failure(error()) : Binding::call(&cap_, value, response);
            }

            /** @brief Relinquish the local service handle with one close attempt.
             * @details Numeric cleanup failure is observable, with no retry or native
             * request cancellation. The C owner retires local ownership independently.
             * @return Actual close code, including bad/unsupported handles.
             * @see roswasmc_close
             */
            uint32_t close()
            {
                return roswasmc_close(&cap_);
            }

            /** @brief Relinquish the service handle through revoke.
             * @details Requires the backend's actual revoke operation. Previously admitted
             * native requests may already have effects; no undo or replay is implied.
             * @return Actual revoke code; local ownership is retired by the C owner.
             * @see roswasmc_revoke
             */
            uint32_t revoke()
            {
                return roswasmc_revoke(&cap_);
            }
        };

        /** @brief Caller-driven complete-value server for one generated Service binding.
         * @details Owns independently granted advertise/respond roles through its
         * stationary base. C++98/03 use a borrowed function pointer/user pair; C++11 and
         * newer retain callable snapshots. No worker, implicit retry or clock is created.
         * Keep the concrete server and backend alive throughout a callback and serialize
         * all access. A failed response can follow native work; it is not rolled back.
         * @tparam Binding Generated complete Request/Response types and exact C operations.
         * @see roswasmcpp::vendor_detail::ServiceServer::process_once
         */
        template <class Binding>
        class ServiceServer : public ServerOwners
        {
        public:
            /** @brief Complete generated incoming request type.
             * @details Owns all bounded fields; an active handler borrows its const
             * reference only for that invocation.
             * @see ServiceServer::on_request
             */
            typedef typename Binding::Request Request;
            /** @brief Complete generated outgoing response type.
             * @details A handler returns this record by value; the C binding validates
             * all fields before admitting a response import.
             * @see ServiceServer::respond
             */
            typedef typename Binding::Response Response;
#if ROSWASM_CPP_LEGACY
            /** @brief Legacy synchronous response-producing function pointer.
             * @details C++98/03 signature is Response(void* user, Request const&).
             * User storage must outlive installed callbacks; request references must not
             * escape an invocation. No-exception Guests require nonthrowing handlers.
             * @see ServiceServer::on_request
             */
            typedef Response (*Handler)(void*, Request const&);

        private:
            Handler handler_;
            void* user_;
#else
            /** @brief Owning modern synchronous response-producing callable type.
             * @details C++11-or-newer signature is Response(Request const&). The server
             * keeps a shared callable snapshot during dispatch, so replacement affects
             * the next pass. Captured references keep their caller-managed lifetimes.
             * @see ServiceServer::on_request
             */
            typedef std::function<Response(Request const&)> Handler;

        private:
            std::shared_ptr<Handler> handler_;
#endif

        public:
            /** @brief Open independent service-advertise and response roles.
             * @details Validates role/ABI support and distinct alias grammar, opens both
             * handles, then activates advertisement. Failure attempts reverse-order
             * cleanup; inspect error() and construction_cleanup(). Installs no handler.
             * @param[in] c Context metadata copied inline; its backend must outlive this server.
             * @param[in] a Advertise alias, borrowed for construction, using 1..255 allowed
             * ASCII bytes and independently authorized for this exact service/type.
             * @param[in] r Distinct response alias with its separate Host grant; borrowed
             * only during construction. Equal resulting handles are rejected as conflict.
             * @see ServerOwners::construction_cleanup
             */
            ServiceServer(roswasmc_context const& c, StringView a, StringView r) :
                ServerOwners(c, a, r, false), handler_()
#if ROSWASM_CPP_LEGACY
                ,
                user_(0)
#endif
            {
            }
#if ROSWASM_CPP_LEGACY
            /** @brief Install a legacy function pointer and caller-owned user state.
             * @details Does not poll or allocate. Each dispatch snapshots this pair;
             * replacement during a handler takes effect next pass. A null pointer
             * disables processing without retiring server roles.
             * @param[in] handler Synchronous nonthrowing callback, or null to disable.
             * @param[in] user Optional Guest-local state, alive through every invocation
             * until replacement/destruction; never transferred to another Guest instance.
             * @see ServiceServer::process_once
             */
            void on_request(Handler handler, void* user = 0)
            {
                handler_ = handler;
                user_ = user;
            }
#else
            /** @brief Install an owning modern callable for subsequent dispatch.
             * @details Allocates a shared callable owner for a nonempty handler; allocation
             * failure follows the active C++ exception/termination policy. Replacement
             * cannot destroy the snapshot already running. An empty callable disables
             * dispatch without closing or revoking roles.
             * @param[in] handler Callable moved into storage; captured references still
             * require caller-managed lifetime. It must not throw in no-exception Guests.
             * @see ServiceServer::process_once
             */
            void on_request(Handler handler)
            {
                handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : std::shared_ptr<Handler>();
            }
#endif
            /** @brief Poll one complete incoming request without invoking a handler.
             * @details Requires active advertisement. Reentrant polling refuses before
             * importing. Idle/malformed/refused input preserves both destinations; a
             * successful ticket is correlated request data, not a capability handle.
             * @param[in,out] ticket Disjoint destination for a validated nonzero ticket.
             * @param[in,out] value Disjoint complete request destination.
             * @return Actual polling result, including AGAIN on idle and CONFLICT on
             * nested dispatch. Success does not itself send a response.
             * @see ServiceServer::respond
             */
            roswasmc_result poll_once(uint64_t& ticket, Request& value)
            {
                if(busy_)
                {
                    return failure(UWVM_ROS_CONFLICT);
                }
                if(error())
                {
                    return failure(error());
                }
                Pass guard(busy_);
                return Binding::poll(&advertise_, ticket, value);
            }

            /** @brief Respond once using the independently owned response role.
             * @details The C binding validates the full record and acknowledgement;
             * Host policy checks ticket ownership/deadline. A nonzero result may follow
             * an admitted native response and must not trigger automatic replay.
             * @param[in] ticket Nonzero live ticket from the matching advertise/poll role.
             * @param[in] value Complete response borrowed during this synchronous call.
             * @return Actual binding result, or setup/BAD_HANDLE status before import.
             * @see roswasmc_service_respond
             */
            roswasmc_result respond(uint64_t ticket, Response const& value)
            {
                return error() ? failure(error()) : Binding::respond(&respond_, ticket, value);
            }

            /** @brief Process at most one request through the installed handler.
             * @details Convenience spelling for process_once(); no worker or retry loop
             * is started, and all callback/ownership rules are identical.
             * @return The actual process_once() status.
             * @see ServiceServer::process_once
             */
            uint32_t poll_once()
            {
                return process_once();
            }

            /** @brief Poll, invoke one handler and attempt one correlated response.
             * @details Refuses a missing handler before consuming input. After one valid
             * request, snapshots the handler, invokes it synchronously, validates its
             * complete response and sends once. Busy state releases on normal return
             * or native exception unwinding. A throwing callback may consume a request
             * without responding; no-exception Guests require nonthrowing handlers.
             * @return Actual poll/response error, zero after a successful response,
             * UWVM_ROS_INVALID without a handler, UWVM_ROS_CONFLICT during reentry,
             * or the cached setup/retirement status. Idle is not successful processing.
             * @see ServiceServer::on_request
             */
            uint32_t process_once()
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
                Pass guard(busy_);
                uint64_t ticket = 0;
                Request value = Request();
                roswasmc_result r = Binding::poll(&advertise_, ticket, value);
                if(r.error)
                {
                    return r.error;
                }
#if ROSWASM_CPP_LEGACY
                Response response = handler(user, value);
#else
                Response response = (*handler)(value);
#endif
                return Binding::respond(&respond_, ticket, response).error;
            }
        };

        /** @brief Stationary full-field Action client with an explicit local goal table.
         * @details Supports C++98 and newer. Stores up to 1024 IDs inline and owns
         * independent send/own-cancel/feedback/result roles, plus an optional stronger
         * cancel-any role. Host policy independently validates every role and goal;
         * local tracking cannot create authority. Access is caller-serialized with no
         * worker, implicit clock, retry or native-object transfer.
         * @tparam Binding Complete generated Goal/Result/Feedback codecs and exact C adapters.
         * @see roswasmcpp::vendor_detail::ActionClient::send_goal
         */
        template <class Binding>
        class ActionClient
        {
            roswasmc_context context_;
            FixedArray<uint64_t, 1024> goals_;
            roswasmc_action_bundle bundle_;
            ActionClient(ActionClient const&);
            ActionClient& operator= (ActionClient const&);

        public:
            /** @brief Complete owning generated Goal record.
             * @details Retains all declared bounded fields; sending validates the full
             * value and does not serialize native C++ object layout.
             * @see ActionClient::send_goal
             */
            typedef typename Binding::Goal Goal;
            /** @brief Complete owning generated terminal Result record.
             * @details Commits only after exact goal/terminal framing and full validation.
             * @see ActionClient::result
             */
            typedef typename Binding::Result Result;
            /** @brief Complete owning generated Feedback record.
             * @details Feedback does not imply completion or retire a tracked goal.
             * @see ActionClient::feedback
             */
            typedef typename Binding::Feedback Feedback;

            /** @brief Open the explicit Action role bundle with a bounded local ID table.
             * @details Copies context metadata and borrows its immutable backend for the
             * owner's lifetime. Roles are acquired independently; partial failure records
             * reverse cleanup. The optional fifth alias is never invented. No heap storage
             * is used for IDs, and no goal is sent during construction.
             * @param[in] c Context metadata; backend callbacks/lifetime remain caller-owned.
             * @param[in] aliases Complete four-role selection and explicit optional
             * cancel-any alias. Alias bytes are borrowed for this synchronous construction;
             * exact resource/type/native permission matching remains Host policy.
             * @param[in] slots Maximum concurrent locally tracked goals, range 1..1024,
             * default 8. Zero or an excessive count records UWVM_ROS_INVALID before open.
             * @see ActionClient::constructor_report
             */
            ActionClient(roswasmc_context const& c, roswasmc_action_aliases const& aliases, size_t slots = 8) : context_(c), goals_(), bundle_()
            {
                if(!slots || slots > goals_.size())
                {
                    bundle_.error = UWVM_ROS_INVALID;
                    return;
                }
                roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
            }

            /** @brief Attempt best-effort reverse cleanup of active Action roles.
             * @details Discards cleanup status and never resends a goal or cancellation.
             * Finish all operations/borrows before destruction. Explicit close_checked()
             * exposes independent failures; cleanup is not proof of a native physical stop.
             * @see ActionClient::close_checked
             */
            ~ActionClient()
            {
                if(bundle_.active)
                {
                    roswasmc_action_bundle_close_checked(&bundle_, 0, 0, 0);
                }
            }

            /** @brief Inspect cached bundle setup and local activation state.
             * @details Does not probe native goal health or return the latest operation's
             * error. Every send/receive/cancel result is reported independently.
             * @return Setup error, otherwise zero for a locally active bundle, otherwise
             * UWVM_ROS_BAD_HANDLE after local retirement.
             * @see ActionClient::constructor_report
             */
            uint32_t error() const
            {
                return bundle_.error ? bundle_.error : bundle_.active ? 0 : UWVM_ROS_BAD_HANDLE;
            }

            /** @brief Inspect the bundle's local active flag.
             * @details Makes no Host query and does not renew role deadlines or rights.
             * @return True while this local bundle is active.
             * @see ActionClient::error
             */
            bool is_open() const
            {
                return bundle_.active != 0;
            }

            /** @brief Test local provenance for one native-correlated goal ID.
             * @details This table is bookkeeping, independent of Host authorization.
             * Accepted cancellation leaves IDs tracked until a validated terminal result.
             * @param[in] id Goal ID to inspect, not a capability handle; zero is never owned.
             * @return True only when the ID is present in this bundle's live goal table.
             * @see ActionClient::result
             */
            bool owns(uint64_t id) const
            {
                return roswasmc_action_bundle_owns(&bundle_, id) != 0;
            }

            /** @brief Copy the independent construction rollback report.
             * @details Preserves the original primary failure and cleanup counters/codes;
             * reading it performs no retry or additional Host import.
             * @return Stored rollback report by value.
             * @see ActionClient::constructor_results
             */
            roswasmc_cleanup_report constructor_report() const
            {
                return bundle_.rollback;
            }
#if ROSWASM_CPP_LEGACY || ROSWASM_CPP_STANDARD < 20
            /** @brief Five-slot portable construction-cleanup result storage.
             * @details C++98 through C++17 use inline FixedArray elements. Ordering is send,
             * own-cancel, feedback, result, optional cancel-any; an absent role adds no grant.
             * @see ActionClient::constructor_results
             */
            typedef FixedArray<uint32_t, 5> CleanupResults;
#else
            /** @brief Five-slot modern construction-cleanup result storage.
             * @details C++20 and newer use std::array in send, own-cancel, feedback,
             * result, optional cancel-any order. These are numeric statuses, not handles.
             * @see ActionClient::constructor_results
             */
            typedef std::array<uint32_t, 5> CleanupResults;
#endif
            /** @brief Copy all five construction cleanup status slots.
             * @details Returns owning scalar storage with no retained pointer into the
             * client. Read alongside constructor_report(); unused slots imply no authority.
             * @return Per-role rollback codes in send/own-cancel/feedback/result/any order.
             * @see ActionClient::constructor_report
             */
            CleanupResults constructor_results() const
            {
                CleanupResults out;
                for(size_t i = 0; i < 5; ++i)
                {
                    out[i] = bundle_.rollback_status[i];
                }
                return out;
            }

            /** @brief Send one complete Goal and track its validated nonzero ID.
             * @details Checks full record fields and local slot capacity before dispatch.
             * Commits ID/table only after exact unique-ID framing. Ambiguous admission
             * failures are returned without automatic resend; a send grant is required.
             * @param[in] value Complete Goal record borrowed for this synchronous call.
             * @param[in,out] id Disjoint output, unchanged on refusal; receives the tracked ID.
             * @return Actual send result, including slot-limit, validation and Host errors.
             * @see roswasmc_action_send_goal
             */
            roswasmc_result send_goal(Goal const& value, uint64_t& id)
            {
                return Binding::send(&bundle_, value, id);
            }

            /** @brief Receive one fully validated feedback record for a locally owned goal.
             * @details Uses the independent feedback role. Checks the returned ID and
             * complete component before committing output; idle/failure leaves it unchanged.
             * A feedback record does not consume goal ownership or drive a hidden loop.
             * @param[in] id Nonzero ID still tracked by this bundle.
             * @param[in,out] value Disjoint complete Feedback destination.
             * @return Actual receive result; UWVM_ROS_AGAIN is pending and BAD_HANDLE
             * denotes an unowned/stale local ID, not a successful empty record.
             * @see ActionClient::owns
             */
            roswasmc_result feedback(uint64_t id, Feedback& value)
            {
                return Binding::feedback(&bundle_, id, value);
            }

            /** @brief Receive one terminal Result and retire exactly its tracked ID.
             * @details Validates matching goal, marker 2..4 and every component field before
             * committing outputs and retiring local ownership. Cancel acceptance
             * alone never performs this retirement. Idle/errors preserve both outputs/table.
             * @param[in] id Nonzero locally tracked goal ID.
             * @param[in,out] kind Disjoint terminal marker output, restricted to 2..4 on success.
             * @param[in,out] value Complete Result destination, disjoint from kind/owner state.
             * @return Actual terminal-receive result, including pending or malformed framing.
             * @see ActionClient::cancel_own
             */
            roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
            {
                return Binding::result(&bundle_, id, kind, value);
            }

            /** @brief Request cancellation of one locally owned goal exactly once.
             * @details Uses its separate own-cancel role and leaves the goal tracked even
             * after acceptance. Native cancellation, terminal completion and physical stop
             * remain distinct. No failure is implicitly retried.
             * @param[in] id Nonzero locally owned goal ID.
             * @param[in,out] accepted Disjoint canonical acceptance 0/1 output; unchanged on error.
             * @return Actual cancellation request result; zero alone is not accepted=true.
             * @see roswasmc_action_bundle_cancel_own
             */
            roswasmc_result cancel_own(uint64_t id, int& accepted)
            {
                return roswasmc_action_bundle_cancel_own(&bundle_, id, &accepted);
            }

            /** @brief Cancel one selected goal using the explicit stronger fifth role.
             * @details The ID may be outside the local table, but the Host still checks
             * exact resource, known goal and policy scope. Missing fifth role refuses
             * before native dispatch; zero is invalid here. Use cancel_all deliberately.
             * @param[in] id Nonzero goal selector; not a capability or unbounded grant.
             * @param[in,out] accepted Disjoint 0/1 acceptance output, unchanged on failure.
             * @return Actual result, including DENIED without a fifth role or INVALID for zero.
             * @see roswasmc_action_bundle_cancel_any
             */
            roswasmc_result cancel_any(uint64_t id, int& accepted)
            {
                return roswasmc_action_bundle_cancel_any(&bundle_, id, &accepted);
            }

            /** @brief Deliberately request all-goals cancellation within the fifth role's scope.
             * @details Requires an explicit cancel-any grant and can affect other owners
             * permitted by that Host policy. It never invents that role. Acceptance leaves
             * local IDs tracked until their terminal results; this is not a physical stop.
             * @param[in,out] accepted Disjoint canonical 0/1 output, unchanged on error.
             * @return Actual all-goals request result; no automatic retry or local retirement.
             * @see roswasmc_action_bundle_cancel_all
             */
            roswasmc_result cancel_all(int& accepted)
            {
                return roswasmc_action_bundle_cancel_all(&bundle_, &accepted);
            }

            /** @brief Close all acquired Action roles with independent checked results.
             * @details Retires local roles in reverse acquisition order, attempting each
             * once. Inadequate nonnull status storage refuses before retirement. Cleanup
             * reports do not undo admitted goals or certify a native physical stop.
             * @param[in] primary Earlier operation error retained independently.
             * @param[out] statuses Optional disjoint writable per-role uint32 storage in
             * acquisition order: send/own-cancel/feedback/result/optional any.
             * @param[in] count Element capacity, at least the acquired role count 4 or 5
             * when statuses is nonnull.
             * @return Primary error, per-role cleanup results and first cleanup failure/counters.
             * @see roswasmc_action_bundle_close_checked
             */
            roswasmc_cleanup_report close_checked(uint32_t primary, uint32_t* statuses = 0, size_t count = 0)
            {
                return roswasmc_action_bundle_close_checked(&bundle_, primary, statuses, count);
            }

            /** @brief Revoke acquired Action roles with explicit checked cleanup results.
             * @details This is separate from goal cancellation and requires actual revoke
             * support. Ambiguous failures still retire local ownership; no role or native
             * effect is automatically replayed or assumed stopped.
             * @param[in] primary Earlier error to preserve separately from cleanup.
             * @param[out] statuses Optional disjoint writable acquisition-order role results.
             * @param[in] count Element capacity, at least 4 or 5 for the actual acquired roles
             * whenever statuses is nonnull.
             * @return Actual primary/cleanup report and counters.
             * @see roswasmc_action_bundle_revoke_checked
             */
            roswasmc_cleanup_report revoke_checked(uint32_t primary, uint32_t* statuses = 0, size_t count = 0)
            {
                return roswasmc_action_bundle_revoke_checked(&bundle_, primary, statuses, count);
            }

            /** @brief Close using an owning array or borrowed contiguous status view.
             * @details Forwards data()/size() without allocating. A nonnull short range
             * refuses before retirement; keep output storage disjoint from bundle state.
             * @tparam A Writable uint32 array/view with element-count size().
             * @param[in] primary Earlier operation error retained independently.
             * @param[out] statuses Acquisition-order results, with enough slots for all roles.
             * @return Pointer overload's actual checked-close report.
             * @see ActionClient::close_checked(uint32_t, uint32_t*, size_t)
             */
            template <class A>
            roswasmc_cleanup_report close_checked(uint32_t primary, A& statuses)
            {
                return close_checked(primary, statuses.data(), statuses.size());
            }

            /** @brief Revoke using caller-owned contiguous per-role status storage.
             * @details Preserves the pointer overload's reverse retirement and independent
             * error reporting. Does not grant revoke rights or imply native cancellation.
             * @tparam A Writable uint32 array/view with data() and element-count size().
             * @param[in] primary Earlier operation error retained in the report.
             * @param[out] statuses Disjoint acquisition-order results for every acquired role.
             * @return Pointer overload's actual checked-revoke report.
             * @see ActionClient::revoke_checked(uint32_t, uint32_t*, size_t)
             */
            template <class A>
            roswasmc_cleanup_report revoke_checked(uint32_t primary, A& statuses)
            {
                return revoke_checked(primary, statuses.data(), statuses.size());
            }
        };

        /** @brief Caller-driven full-field Action server with independently owned roles.
         * @details Supports C++98 and newer. Keeps a stable advertise/respond base and
         * never spawns a worker or grants rights from a type/alias name. Each handler
         * pass processes at most one goal, validates all requested outgoing records,
         * then sends feedback before a terminal result. Access is caller-serialized;
         * keep this concrete object/backend alive through every callback.
         * @tparam Binding Complete Goal/Result/Feedback records, validators and exact C adapters.
         * @see roswasmcpp::vendor_detail::ActionServer::process_once
         */
        template <class Binding>
        class ActionServer : public ServerOwners
        {
        public:
            /** @brief Complete generated incoming Goal type.
             * @details An active handler borrows its const reference only during the call;
             * retaining it requires an explicit owning copy of the full record.
             * @see ActionServer::on_goal
             */
            typedef typename Binding::Goal Goal;
            /** @brief Complete generated terminal Result type.
             * @details Full field validation precedes automatic response imports.
             * @see ActionServer::respond_result
             */
            typedef typename Binding::Result Result;
            /** @brief Complete generated Feedback type.
             * @details A feedback response does not mark a server goal terminal.
             * @see ActionServer::respond_feedback
             */
            typedef typename Binding::Feedback Feedback;

            /** @brief Owning outgoing records and explicit response-selection flags.
             * @details Returned by a handler by value. Unselected records are not sent.
             * All selected records/terminal kind are checked before the first automatic
             * import; a later terminal failure cannot undo already delivered feedback.
             * @see ActionServer::process_once
             */
            struct Replies
            {
                /** @brief Complete feedback record for the current goal.
                 * @details Read/validated only when send_feedback is true.
                 * @see Replies::send_feedback
                 */
                Feedback feedback;
                /** @brief Complete terminal record for the current goal.
                 * @details Read/validated only when send_result is true.
                 * @see Replies::send_result
                 */
                Result result;
                /** @brief Terminal wire marker, admitted values 2..4.
                 * @details Default 2; checked only when send_result is selected. It is not
                 * a capability, native handle or implicit cancellation request.
                 * @see ActionServer::respond_result
                 */
                uint8_t kind;
                /** @brief Select one automatic feedback response for this pass.
                 * @details Default true. Set false when no feedback is needed or when
                 * its explicit response was already handled by the callback.
                 * @see ActionServer::process_once
                 */
                bool send_feedback;
                /** @brief Select one automatic terminal response for this pass.
                 * @details Default true. Set false to keep the goal nonterminal in this
                 * automatic pass or after separately handling its explicit response.
                 * @see ActionServer::process_once
                 */
                bool send_result;

                /** @brief Value-initialize both records and select feedback plus terminal output.
                 * @details Sets kind 2 and both send flags true. Zero/value initialization
                 * does not apply nonzero schema defaults automatically; handlers populate
                 * every required field or explicitly use the generated default codec.
                 * @see Replies::kind
                 */
                Replies() : feedback(), result(), kind(2), send_feedback(true), send_result(true)
                {
                }
            };
#if ROSWASM_CPP_LEGACY
            /** @brief Legacy synchronous Goal handler with caller-owned user state.
             * @details C++98/03 signature is Replies(void*, uint64_t, Goal const&).
             * The ticket is correlated server data, not an owner handle. Goal references
             * expire when the callback returns; no-exception Guests require nonthrowing code.
             * @see ActionServer::on_goal
             */
            typedef Replies (*Handler)(void*, uint64_t, Goal const&);

        private:
            Handler handler_;
            void* user_;
#else
            /** @brief Owning modern Goal-to-Replies callable type.
             * @details C++11-or-newer dispatch snapshots its shared callable owner;
             * replacement affects later passes. Captured references remain caller-managed
             * and must outlive their use. Handlers execute on the polling caller's stack.
             * @see ActionServer::on_goal
             */
            typedef std::function<Replies(uint64_t, Goal const&)> Handler;

        private:
            std::shared_ptr<Handler> handler_;
#endif

        public:
            /** @brief Open distinct Action-advertise and response aliases.
             * @details Validates role/ABI support, distinct aliases/handles and activation
             * framing. Partial failure records reverse cleanup; no handler or clock is
             * installed. Each role needs its own trusted Host resource/type grant.
             * @param[in] c Copied context metadata; immutable backend must outlive this owner.
             * @param[in] a Advertise alias, 1..255 allowed ASCII bytes, borrowed for construction.
             * @param[in] r Distinct response alias with an independent grant; borrowed for construction.
             * @see ServerOwners::construction_cleanup
             */
            ActionServer(roswasmc_context const& c, StringView a, StringView r) :
                ServerOwners(c, a, r, true), handler_()
#if ROSWASM_CPP_LEGACY
                ,
                user_(0)
#endif
            {
            }
#if ROSWASM_CPP_LEGACY
            /** @brief Install a legacy Goal handler and borrowed user-state pointer.
             * @details Does not poll or allocate. The pair is copied for each dispatch;
             * replacing it during a callback affects the next pass. A null handler
             * disables processing while leaving roles explicitly owned.
             * @param[in] handler Synchronous nonthrowing callback, or null to disable.
             * @param[in] user Optional Guest-local state, live until all installed calls
             * finish and the handler is replaced or this server destroyed.
             * @see ActionServer::process_once
             */
            void on_goal(Handler handler, void* user = 0)
            {
                handler_ = handler;
                user_ = user;
            }
#else
            /** @brief Install an owning modern Goal handler for later passes.
             * @details A nonempty callable allocates a shared owner; allocation follows
             * the active C++ exception/termination policy. A running snapshot remains
             * alive during replacement. An empty callable disables future processing.
             * @param[in] handler Callable moved into storage; captured references remain
             * caller-owned. It must not throw in exception-disabled Guests.
             * @see ActionServer::process_once
             */
            void on_goal(Handler handler)
            {
                handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : std::shared_ptr<Handler>();
            }
#endif
            /** @brief Poll one complete incoming Goal without invoking a handler.
             * @details Uses the activated advertise role. Busy/refused/idle or malformed
             * input leaves destinations unchanged. A validated nonzero ticket is required
             * for subsequent feedback/results, under the independent response grant.
             * @param[in,out] id Disjoint destination for a correlated nonzero server ticket.
             * @param[in,out] value Complete Goal destination, disjoint from id/owner state.
             * @return Actual poll result; AGAIN means no goal and CONFLICT means nested use.
             * @see ActionServer::respond_feedback
             */
            roswasmc_result poll_once(uint64_t& id, Goal& value)
            {
                if(busy_)
                {
                    return failure(UWVM_ROS_CONFLICT);
                }
                if(error())
                {
                    return failure(error());
                }
                Pass guard(busy_);
                return Binding::poll(&advertise_, id, value);
            }

            /** @brief Send one full feedback record through the independent response role.
             * @details Validates/encodes every field before import. Host policy checks
             * ticket ownership/type/deadline; success is nonterminal. An ambiguous
             * acknowledgement is returned without automatic replay.
             * @param[in] id Nonzero live ticket from the matching advertise role.
             * @param[in] value Complete Feedback record borrowed for this call.
             * @return Actual binding result, or setup/retirement error before importing.
             * @see roswasmc_action_respond
             */
            roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
            {
                return error() ? failure(error()) : Binding::respond_feedback(&respond_, id, value);
            }

            /** @brief Send one complete terminal result for a live server goal.
             * @details Checks marker 2..4 and full component validity before import. The
             * Host owns one-shot terminal state; a failed acknowledgement may follow
             * native completion and cannot justify an implicit second terminal response.
             * @param[in] id Nonzero correlated ticket from the matching advertise role.
             * @param[in] kind Terminal wire marker, range 2..4.
             * @param[in] value Complete Result record borrowed synchronously.
             * @return Actual terminal response result or local setup/validation failure.
             * @see roswasmc_action_respond
             */
            roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
            {
                return error() ? failure(error()) : Binding::respond_result(&respond_, id, kind, value);
            }

            /** @brief Process at most one Goal through the installed handler.
             * @details Delegates to process_once() without a hidden loop or native worker.
             * Handler lifetime, validation, response ordering and errors are identical.
             * @return The actual process_once() result.
             * @see ActionServer::process_once
             */
            uint32_t poll_once()
            {
                return process_once();
            }

            /** @brief Poll one Goal, invoke its handler and send the selected replies once.
             * @details Refuses absent handlers before polling. Snapshots the callable,
             * decodes one complete goal, and validates every selected response/terminal
             * marker before any response import. Sends feedback before result; if result
             * fails after feedback, that effect is not undone. Native exceptions release
             * busy state but may leave a consumed goal unanswered; no-exception Guests
             * require nonthrowing callbacks. Never automatically retries external effects.
             * @return Zero after all selected replies (also when neither is selected),
             * actual poll/response errors, INVALID for a missing/invalid handler result,
             * CONFLICT on nested dispatch, or the cached setup/retirement code.
             * @see ActionServer::on_goal
             */
            uint32_t process_once()
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
                Pass guard(busy_);
                uint64_t id = 0;
                Goal value = Goal();
                roswasmc_result r = Binding::poll(&advertise_, id, value);
                if(r.error)
                {
                    return r.error;
                }
#if ROSWASM_CPP_LEGACY
                Replies replies = handler(user, id, value);
#else
                Replies replies = (*handler)(id, value);
#endif
                if(replies.send_result && (replies.kind < 2 || replies.kind > 4 || !Binding::valid_result(replies.result)))
                {
                    return UWVM_ROS_INVALID;
                }
                if(replies.send_feedback && !Binding::valid_feedback(replies.feedback))
                {
                    return UWVM_ROS_INVALID;
                }
                if(replies.send_feedback)
                {
                    r = Binding::respond_feedback(&respond_, id, replies.feedback);
                    if(r.error)
                    {
                        return r.error;
                    }
                }
                return replies.send_result ? Binding::respond_result(&respond_, id, replies.kind, replies.result).error : 0;
            }
        };
    }  // namespace vendor_detail
}  // namespace roswasmcpp
