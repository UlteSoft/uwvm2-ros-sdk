/** @file
 * @brief Portable local Action ownership and trajectory outcome bookkeeping.
 * @details Generated C definitions supply the actual codecs and dispatch. This
 * layer records one submission, observations, cancellation and cleanup; it
 * creates no permission, thread, clock, retry or physical stop. The context's
 * backend and borrowed callback state must outlive every dependent owner.
 * Serialize access to each journal/client. Numeric errors are returned directly;
 * a timeout or cleanup result does not prove the native controller stopped.
 * @see uwvm_industrial::Trajectory
 */
#pragma once
#include <platform/ros/cpp/roswasm/views.hpp>
#include <platform/ros/c/roswasm/action_bundle.h>
#include <stdint.h>

namespace uwvm_industrial
{
    /** @brief Named states of the local single-submission journal.
     * @details These values describe observations rather than native controller
     * states; only a validated terminal observation clears outcome uncertainty.
     * @see Journal::phase
     */
    struct Phase
    {
        /** @brief Finite local progress states in declaration order.
         * @details No numeric value is serialized or used as host authority.
         * @see Journal
         */
        enum Value
        {
            /** @brief No submission method has been entered.
             * @details A previously recorded local failure can still be present.
             * @see Journal::before_send
             */
            fresh,
            /** @brief Submission began without a validated returned goal ID.
             * @details An error does not authorize replay of the submission.
             * @see Journal::accepted
             */
            submitted_unknown,
            /** @brief A nonzero goal ID is recorded and terminal outcome is unknown.
             * @details The ID is local bookkeeping, not permission to operate it.
             * @see Journal::feedback
             */
            active,
            /** @brief Own-goal cancellation began without a validated response.
             * @details Repeating cancellation is not an automatic recovery path.
             * @see Journal::cancelled
             */
            cancel_unknown,
            /** @brief The cancellation request returned accepted.
             * @details Acceptance alone does not establish terminal state or stop.
             * @see Outcome::native_outcome_unknown
             */
            cancel_acknowledged,
            /** @brief The cancellation request returned rejected.
             * @details Feedback and terminal observations remain locally eligible.
             * @see Journal::feedback
             */
            cancel_rejected,
            /** @brief A matching terminal result has been validated.
             * @details Its success/failure is recorded separately in primary.
             * @see Journal::terminal
             */
            terminal,
            /** @brief The one explicit retirement path has begun.
             * @details This value alone does not prove successful handle cleanup.
             * @see Journal::retired
             */
            retired
        };
    };

    /** @brief Copyable snapshot separating business outcome and cleanup evidence.
     * @details Zero initialization represents no recorded event. A nonzero primary
     * is sticky; cleanup is independently reported and never replaces it. No field
     * certifies physical controller state or implies a stronger cancellation grant.
     * @see Journal::outcome
     */
    struct Outcome
    {
        /** @brief First nonzero business or local validation error.
         * @details Terminal mapping is zero for kind 2/controller zero, 125 for kind
         * 4 and 5 otherwise, unless an earlier failure already occupies this field.
         * @see Journal::failure
         */
        uint32_t primary;
        /** @brief Aggregate cleanup error from the most recently captured report.
         * @details This is independent of primary and individual role statuses.
         * @see Outcome::role_cleanup
         */
        uint32_t cleanup;
        /** @brief Matching nonzero goal ID after accepted submission.
         * @details Zero means no validated goal ID has been recorded.
         * @see Journal::accepted
         */
        uint64_t goal;
        /** @brief Validated terminal marker, or zero before terminal observation.
         * @details Canonical terminal kinds are 2, 3 and 4; feedback kind 1 is absent.
         * @see Journal::terminal
         */
        uint8_t terminal_kind;
        /** @brief The local submission path passed before_send.
         * @details This flag does not prove that a host import or controller ran.
         * @see Journal::before_send
         */
        bool source_api_entered;
        /** @brief Submission began without a subsequently validated terminal result.
         * @details Cancellation acceptance, timeout and close do not clear it.
         * @see Journal::terminal
         */
        bool native_outcome_unknown;
        /** @brief Boolean returned by a validated own-cancel observation.
         * @details False also covers the absence of a cancellation observation;
         * inspect phase to distinguish those cases.
         * @see Journal::cancelled
         */
        bool cancel_acknowledged;
        /** @brief Number of cleanup callbacks attempted in the captured report.
         * @details This can be less than the five available role-status slots.
         * @see Journal::retired
         */
        uint32_t cleanup_attempted;
        /** @brief Five statuses in send/own-cancel/feedback/result/any-cancel order.
         * @details An unused or unattempted zero slot does not prove a callback ran.
         * @see ActionOwner::constructor_results
         */
        ::roswasmcpp::FixedArray<uint32_t, 5> role_cleanup;

        /** @brief Create an empty outcome snapshot without I/O.
         * @details All scalar fields and fixed-array elements start at zero/false.
         * @see Journal::Journal
         */
        Outcome() :
            primary(0), cleanup(0), goal(0), terminal_kind(0), source_api_entered(false), native_outcome_unknown(false), cancel_acknowledged(false),
            cleanup_attempted(0)
        {
        }
    };

    /** @brief Local state machine for one submission and one retirement path.
     * @details Methods validate phase/ID before mutation and never call a backend.
     * Failures preserve the first primary error. Copies are independent snapshots;
     * serialize mutation and keep references from outcome live only with this object.
     * @see Trajectory
     */
    class Journal
    {
        Phase::Value phase_;
        Outcome value_;

    public:
        /** @brief Start in fresh with an empty outcome.
         * @details No alias, goal or timing source is acquired.
         * @see Outcome::Outcome
         */
        Journal() : phase_(Phase::fresh)
        {
        }

        /** @brief Read the current local journal phase.
         * @details The returned value does not query native state.
         * @return A copied Phase::Value.
         * @see Journal::outcome
         */
        Phase::Value phase() const
        {
            return phase_;
        }

        /** @brief Borrow the recorded outcome snapshot.
         * @details The reference belongs to this journal and changes on mutation.
         * @return A const reference valid through this object's lifetime.
         * @see Journal::phase
         */
        Outcome const& outcome() const
        {
            return value_;
        }

        /** @brief Enter the one permitted submission path.
         * @details Only fresh succeeds, setting source-entry and uncertainty flags.
         * This is called before the client and does not prove host admission.
         * @return Zero on transition, or 17 without mutation after a prior attempt.
         * @see Journal::accepted
         */
        uint32_t before_send()
        {
            if(phase_ != Phase::fresh)
            {
                return 17;
            }
            phase_ = Phase::submitted_unknown;
            value_.source_api_entered = true;
            value_.native_outcome_unknown = true;
            return 0;
        }

        /** @brief Record a validated goal ID after beginning submission.
         * @details Only submitted_unknown accepts a nonzero ID; native outcome
         * remains unknown until a terminal observation.
         * @param id Nonzero goal ID returned by the selected client.
         * @return Zero and active, or 22 without mutation.
         * @see Journal::terminal
         */
        uint32_t accepted(uint64_t id)
        {
            if(phase_ != Phase::submitted_unknown || !id)
            {
                return 22;
            }
            value_.goal = id;
            phase_ = Phase::active;
            return 0;
        }

        /** @brief Enter the one own-cancel path for the active matching goal.
         * @details This local transition sends nothing and creates no cancel-any
         * authority. An uncertain/rejected cancellation is not automatically retried.
         * @param id Nonzero ID equal to outcome().goal.
         * @return Zero and cancel_unknown, or 9 without mutation.
         * @see Journal::cancelled
         */
        uint32_t before_cancel(uint64_t id)
        {
            if(phase_ != Phase::active || !id || id != value_.goal)
            {
                return 9;
            }
            phase_ = Phase::cancel_unknown;
            return 0;
        }

        /** @brief Record a Boolean response to the pending own-cancel attempt.
         * @details Requires cancel_unknown and the recorded ID. Acceptance does not
         * clear native-outcome uncertainty or imply physical stop.
         * @param id ID associated with the pending request.
         * @param accepted Validated cancellation response.
         * @return Zero with acknowledged/rejected phase, or 22 without mutation.
         * @see Journal::feedback
         */
        uint32_t cancelled(uint64_t id, bool accepted)
        {
            if(phase_ != Phase::cancel_unknown || id != value_.goal)
            {
                return 22;
            }
            value_.cancel_acknowledged = accepted;
            phase_ = accepted ? Phase::cancel_acknowledged : Phase::cancel_rejected;
            return 0;
        }

        /** @brief Check whether observations for a matching goal remain eligible.
         * @details Allows active and all three cancellation phases. It performs no
         * poll, changes no phase and cannot establish goal ownership at the host.
         * @param id Nonzero ID equal to the recorded goal.
         * @return Zero when eligible, otherwise 9.
         * @see Journal::terminal
         */
        uint32_t feedback(uint64_t id) const
        {
            return id && id == value_.goal &&
                           (phase_ == Phase::active || phase_ == Phase::cancel_unknown || phase_ == Phase::cancel_acknowledged ||
                            phase_ == Phase::cancel_rejected)
                       ? 0u
                       : 9u;
        }

        /** @brief Record a matching terminal result and clear outcome uncertainty.
         * @details Requires feedback eligibility and kind 2..4. Unless an earlier
         * primary error exists, map kind 2/controller zero to success, kind 4 to 125
         * and other outcomes to 5. The method itself returns zero after recording
         * even when the resulting primary business outcome is nonzero.
         * @param id Matching active or cancelling goal ID.
         * @param kind Canonical terminal marker 2, 3 or 4.
         * @param controller_error Selected result's controller status code.
         * @return Zero after recording, or 22 without mutation.
         * @see Outcome::primary
         */
        uint32_t terminal(uint64_t id, uint8_t kind, int32_t controller_error)
        {
            if(feedback(id) || kind < 2 || kind > 4)
            {
                return 22;
            }
            value_.terminal_kind = kind;
            value_.native_outcome_unknown = false;
            phase_ = Phase::terminal;
            if(!value_.primary)
            {
                value_.primary = kind == 2 && controller_error == 0 ? 0u : kind == 4 ? 125u : 5u;
            }
            return 0;
        }

        /** @brief Preserve the first nonzero primary error.
         * @details Zero and later nonzero failures leave primary unchanged; phase
         * and uncertainty flags are not modified.
         * @param code Numeric error to record without conversion.
         * @see Journal::timeout
         */
        void failure(uint32_t code)
        {
            if(code && !value_.primary)
            {
                value_.primary = code;
            }
        }

        /** @brief Record timeout code 110 without cancellation or a phase change.
         * @details No clock is read. A later validated terminal observation may
         * clear uncertainty while the first primary timeout remains recorded.
         * @see Journal::failure
         */
        void timeout()
        {
            failure(110);
        }

        /** @brief Mark the single retirement path before attempting cleanup.
         * @details Every phase except retired transitions locally; no callback runs.
         * This preserves unknown native outcome when no terminal result was seen.
         * @return Zero on first entry, or 9 for repeated retirement.
         * @see Journal::retired
         */
        uint32_t before_retire()
        {
            if(phase_ == Phase::retired)
            {
                return 9;
            }
            phase_ = Phase::retired;
            return 0;
        }

        /** @brief Copy a cleanup report without changing phase or primary error.
         * @details Exactly five indexed status elements are read. The caller must
         * provide that live extent; attempted is recorded rather than validated.
         * @tparam A Indexable container with at least five uint32-compatible values.
         * @param statuses Borrowed role statuses in acquisition order.
         * @param code Aggregate cleanup error.
         * @param attempted Count reported by the checked cleanup operation.
         * @see Outcome::role_cleanup
         */
        template <class A>
        void retired(A const& statuses, uint32_t code, uint32_t attempted = 5)
        {
            for(size_t i = 0; i < 5; ++i)
            {
                value_.role_cleanup[i] = statuses[i];
            }
            value_.cleanup = code;
            value_.cleanup_attempted = attempted;
        }
    };

    /** @brief Noncopyable portable owner for a generated typed Action definition.
     * @details Stores a copied C context, a fixed 16-element goal table and the
     * original C role bundle. The backend/callback state remains borrowed and must
     * outlive cleanup. Four independent aliases are required; optional cancel-any
     * remains a fifth explicit grant. No move, retry or hidden thread is supplied.
     * @tparam Definition Provides Goal/Result/Feedback and send/feedback/result
     * functions taking the original bundle and generated C values.
     * @see roswasmc_action_bundle
     */
    template <class Definition>
    class ActionOwner
    {
        roswasmc_context context_;
        ::roswasmcpp::FixedArray<uint64_t, 16> goals_;
        roswasmc_action_bundle bundle_;
        ActionOwner(ActionOwner const&);
        ActionOwner& operator= (ActionOwner const&);

    public:
        /** @brief Goal value supplied by the selected generated definition.
         * @details Its field limits and native type pairing belong to that definition.
         * @see ActionOwner::send_goal
         */
        typedef typename Definition::Goal Goal;
        /** @brief Terminal result value supplied by the generated definition.
         * @details The associated canonical terminal marker is returned separately.
         * @see ActionOwner::result
         */
        typedef typename Definition::Result Result;
        /** @brief Feedback value supplied by the generated definition.
         * @details This alias adds no subscription or native type authority.
         * @see ActionOwner::feedback
         */
        typedef typename Definition::Feedback Feedback;

        /** @brief Initialize the bounded original C Action bundle once.
         * @details Slots must be 1..16; otherwise record 90 without imports. Alias
         * acquisition failures and reverse rollback statuses remain inspectable.
         * Alias text is borrowed during initialization; the backend lives longer.
         * @param context C dispatch context copied into this owner.
         * @param aliases Four required and one optional independent role aliases.
         * @param slots Number of usable goal-table entries, not a wire-byte bound.
         * @see ActionOwner::constructor_report
         */
        ActionOwner(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 1) : context_(context), goals_(), bundle_()
        {
            if(!slots || slots > goals_.size())
            {
                bundle_.error = 90;
                bundle_.rollback = roswasmc_cleanup_init(90);
                return;
            }
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        /** @brief Attempt checked close once if the role bundle remains active.
         * @details Cleanup is synchronous and best effort; errors are not surfaced
         * from destruction. Use close_checked first to retain per-role evidence.
         * @see ActionOwner::close_checked
         */
        ~ActionOwner()
        {
            if(bundle_.active)
            {
                roswasmc_action_bundle_close_checked(&bundle_, 0, 0, 0);
            }
        }

        /** @brief Read initialization error or inactive-state status.
         * @details This is not the last send/poll/cancel result and performs no I/O.
         * @return Stored initialization error, zero while active, otherwise 9.
         * @see ActionOwner::is_open
         */
        uint32_t error() const
        {
            return bundle_.error ? bundle_.error : bundle_.active ? 0u : 9u;
        }

        /** @brief Test whether the underlying C bundle is active.
         * @details This local flag does not query host liveness or native outcome.
         * @return True for an active bundle.
         * @see ActionOwner::error
         */
        bool is_open() const
        {
            return bundle_.active != 0;
        }

        /** @brief Copy the original constructor rollback report.
         * @details Primary error, first cleanup error and attempted count retain
         * their C meanings; this accessor makes no additional cleanup attempt.
         * @return A value snapshot independent of later observations.
         * @see ActionOwner::constructor_results
         */
        roswasmc_cleanup_report constructor_report() const
        {
            return bundle_.rollback;
        }

        /** @brief Copy all five constructor rollback statuses.
         * @details Slots follow acquisition order even though cleanup runs in reverse.
         * A zero unattempted slot is not proof that a close callback succeeded.
         * @return Owning fixed array of five numeric statuses.
         * @see ActionOwner::constructor_report
         */
        ::roswasmcpp::FixedArray<uint32_t, 5> constructor_results() const
        {
            ::roswasmcpp::FixedArray<uint32_t, 5> out;
            for(size_t i = 0; i < 5; ++i)
            {
                out[i] = bundle_.rollback_status[i];
            }
            return out;
        }

        /** @brief Delegate one typed goal submission to the generated definition.
         * @details No timeout/size failure is replayed. The definition and C bundle
         * validate encoding, capacity and returned IDs; this wrapper adds no retry.
         * @param value Borrowed generated Goal for this synchronous call.
         * @param id Destination governed by Definition::send's result contract.
         * @return The unchanged roswasmc_result from the generated definition.
         * @see ActionOwner::result
         */
        roswasmc_result send_goal(Goal const& value, uint64_t& id)
        {
            return Definition::send(&bundle_, &value, &id);
        }

        /** @brief Delegate one matching-goal feedback observation.
         * @details The C bundle/definition checks tracked identity and canonical
         * payload. Idle 11 does not trigger another poll in this call.
         * @param id Goal ID tracked by the bundle.
         * @param out Destination governed by Definition::feedback's contract.
         * @return The definition's unchanged numeric/result-size report.
         * @see ActionOwner::result
         */
        roswasmc_result feedback(uint64_t id, Feedback& out)
        {
            return Definition::feedback(&bundle_, id, &out);
        }

        /** @brief Delegate one tracked-goal terminal-result observation.
         * @details Canonical decoding and terminal tracking belong to the generated
         * definition/C bundle; there is no implicit cancellation on failure.
         * @param id Goal ID tracked by the bundle.
         * @param kind Terminal-marker destination supplied to the definition.
         * @param out Generated Result destination supplied to the definition.
         * @return The definition's unchanged roswasmc_result.
         * @see ActionOwner::send_goal
         */
        roswasmc_result result(uint64_t id, uint8_t& kind, Result& out)
        {
            return Definition::result(&bundle_, id, &kind, &out);
        }

        /** @brief Attempt cancellation through the explicit own-goal role once.
         * @details A validated Boolean acknowledgement is not a terminal result or
         * a physical stop. This method never escalates to the optional any role.
         * @param id Nonzero goal tracked by this bundle.
         * @param accepted C Boolean destination, updated only on success.
         * @return The original C bundle's numeric/result-size report.
         * @see roswasmc_action_bundle_cancel_own
         */
        roswasmc_result cancel_own(uint64_t id, int& accepted)
        {
            return roswasmc_action_bundle_cancel_own(&bundle_, id, &accepted);
        }

        /** @brief Attempt reverse role cleanup and retain the supplied primary code.
         * @details Delegates the original C cleanup semantics, including preserving
         * owners whose local close callback is absent. An actual callback attempt
         * retires that local handle even if notification fails; no call is replayed.
         * @tparam A Contiguous uint32-compatible container exposing data() and size().
         * @param primary Existing business error, independent of cleanup status.
         * @param statuses Borrowed writable role-status storage and explicit extent.
         * @return Primary/first-cleanup error and actual attempt counts.
         * @see roswasmc_action_bundle_close_checked
         */
        template <class A>
        roswasmc_cleanup_report close_checked(uint32_t primary, A& statuses)
        {
            return roswasmc_action_bundle_close_checked(&bundle_, primary, statuses.data(), statuses.size());
        }
    };

    namespace detail
    {
        template <class C>
        struct Reports
        {
            template <class U, roswasmc_cleanup_report (U::*)() const>
            struct Member;
            template <class U>
            static char test(Member<U, &U::constructor_report>*);
            template <class U>
            static long test(...);

            enum
            {
                present = sizeof(test<C>(0)) == sizeof(char)
            };
        };

        template <class C, bool Present>
        struct Capture
        {
            static void run(C const&, Journal&)
            {
            }
        };

        template <class C>
        struct Capture<C, true>
        {
            static void run(C const& owner, Journal& journal)
            {
                roswasmc_cleanup_report r = owner.constructor_report();
                journal.retired(owner.constructor_results(), r.cleanup_error, r.attempted);
            }
        };
    }  // namespace detail

    /** @brief Single-submission trajectory facade with an inspectable local journal.
     * @details Calls the supplied client synchronously and never schedules, sleeps,
     * retries, grants authority or chooses a stronger cancellation role. A result
     * with error_code and a validated terminal kind supplies outcome evidence;
     * timeout, cancellation acknowledgement and close alone leave uncertainty.
     * Copies/assignment are disabled. Keep backend state live through destruction
     * and serialize client/journal access. The client's destructor owns final cleanup.
     * @tparam Client Provides typed Goal/Feedback/Result, bundle-like ownership and
     * send_goal/feedback/result/cancel_own/close_checked operations. Result contains
     * an error_code compatible with int32_t; constructor reports are optional.
     * @see Journal
     */
    template <class Client>
    class Trajectory
    {
        Journal journal_;
        Client client_;
        Trajectory(Trajectory const&);
        Trajectory& operator= (Trajectory const&);

    public:
        /** @brief Selected client's Goal value type.
         * @details Goal field units and bounds belong to the generated definition.
         * @see Trajectory::submit
         */
        typedef typename Client::Goal Goal;
        /** @brief Selected client's Feedback value type.
         * @details This alias creates no independently granted observation role.
         * @see Trajectory::feedback
         */
        typedef typename Client::Feedback Feedback;
        /** @brief Selected client's terminal Result value type.
         * @details A compatible error_code field is required by result().
         * @see Trajectory::result
         */
        typedef typename Client::Result Result;

        /** @brief Construct the client and capture initialization/rollback evidence.
         * @details Client::error is recorded as the first primary error. If the
         * optional report API exists, all five rollback statuses are copied locally.
         * Native role acquisition and capacity validation follow the selected client.
         * @param context Explicit backend context; borrowed state outlives this object.
         * @param aliases Explicit independent role grants supplied to the client.
         * @param capacity Requested pending-goal capacity in entries.
         * @see Trajectory::journal
         */
        Trajectory(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t capacity = 1) :
            journal_(), client_(context, aliases, capacity)
        {
            journal_.failure(client_.error());
            detail::Capture<Client, detail::Reports<Client>::present>::run(client_, journal_);
        }

        /** @brief Borrow the local phase/outcome journal.
         * @details Its reference expires with this object and observes later mutation.
         * @return Const Journal reference without backend I/O.
         * @see Journal::outcome
         */
        Journal const& journal() const
        {
            return journal_;
        }

        /** @brief Read the selected client's current ownership/setup error.
         * @details This does not return the journal's first business error; inspect
         * journal().outcome().primary for that independent value.
         * @return Client::error unchanged.
         * @see Trajectory::journal
         */
        uint32_t error() const
        {
            return client_.error();
        }

        /** @brief Enter and attempt the one local goal submission.
         * @details Check client setup first, then mark submission uncertain before
         * invoking send_goal. A failed submission stays submitted_unknown, preventing
         * automatic replay. A successful nonzero ID becomes active; no poll follows.
         * @param goal Borrowed typed goal, valid during the synchronous call.
         * @return Client setup/send error, 17 for a repeated attempt, 22 for an invalid
         * returned ID, or zero after recording active state.
         * @see Journal::before_send
         */
        uint32_t submit(Goal const& goal)
        {
            uint32_t code = client_.error();
            if(code)
            {
                return code;
            }
            code = journal_.before_send();
            if(code)
            {
                return code;
            }
            uint64_t id = 0;
            roswasmc_result r = client_.send_goal(goal, id);
            if(r.error)
            {
                journal_.failure(r.error);
                return r.error;
            }
            code = journal_.accepted(id);
            if(code)
            {
                journal_.failure(code);
            }
            return code;
        }

        /** @brief Poll feedback once for the locally recorded eligible goal.
         * @details Idle 11 is returned without becoming a sticky primary error.
         * Other client failures enter the journal; output behavior follows Client.
         * @param out Borrowed Feedback destination for the selected client.
         * @return 9 for an ineligible local phase/ID, otherwise the client's error.
         * @see Journal::feedback
         */
        uint32_t feedback(Feedback& out)
        {
            uint64_t id = journal_.outcome().goal;
            uint32_t code = journal_.feedback(id);
            if(code)
            {
                return code;
            }
            roswasmc_result r = client_.feedback(id, out);
            if(r.error != 11)
            {
                journal_.failure(r.error);
            }
            return r.error;
        }

        /** @brief Observe and validate one terminal result before replacing outputs.
         * @details Decode through local temporaries, require the matching goal and
         * kind 2..4, then record controller outcome. Numeric failures preserve both
         * caller destinations. Idle 11 is not made sticky; other failures are.
         * The return can be zero while an earlier primary error remains recorded.
         * @param out Result destination assigned after terminal validation.
         * @param kind Terminal marker assigned with the validated result.
         * @return Local eligibility/validation or client error, otherwise zero.
         * @see Journal::terminal
         */
        uint32_t result(Result& out, uint8_t& kind)
        {
            uint64_t id = journal_.outcome().goal;
            uint32_t code = journal_.feedback(id);
            if(code)
            {
                return code;
            }
            Result next = Result();
            uint8_t next_kind = 0;
            roswasmc_result r = client_.result(id, next_kind, next);
            if(r.error)
            {
                if(r.error != 11)
                {
                    journal_.failure(r.error);
                }
                return r.error;
            }
            code = journal_.terminal(id, next_kind, next.error_code);
            if(code)
            {
                journal_.failure(code);
                return code;
            }
            out = next;
            kind = next_kind;
            return 0;
        }

        /** @brief Enter one own-goal cancellation and validate its Boolean reply.
         * @details Only active may enter; a request failure leaves cancel_unknown
         * and records a primary error without replay. Acceptance does not clear
         * uncertainty, complete the goal, or grant cancel-any/all authority.
         * @param acknowledged Replaced only after a complete valid Boolean response.
         * @return Local phase error, client error, 22 for a malformed Boolean, or zero.
         * @see Journal::cancelled
         */
        uint32_t cancel_own(bool& acknowledged)
        {
            uint64_t id = journal_.outcome().goal;
            uint32_t code = journal_.before_cancel(id);
            if(code)
            {
                return code;
            }
            int next = 0;
            roswasmc_result r = client_.cancel_own(id, next);
            if(r.error)
            {
                journal_.failure(r.error);
                return r.error;
            }
            if(next != 0 && next != 1)
            {
                journal_.failure(22);
                return 22;
            }
            code = journal_.cancelled(id, next != 0);
            if(code)
            {
                journal_.failure(code);
                return code;
            }
            acknowledged = next != 0;
            return 0;
        }

        /** @brief Record the caller's timeout observation as code 110.
         * @details Reads no clock, changes no phase and sends no cancellation/stop.
         * Existing primary errors remain first; terminal observation is still explicit.
         * @see Journal::timeout
         */
        void timeout()
        {
            journal_.timeout();
        }

        /** @brief Enter retirement once and capture checked client cleanup.
         * @details Repeated calls return the existing snapshot without another
         * client call. An inactive client returns the journal without cleanup. For
         * an active client, capture five statuses, cleanup error and attempted count.
         * A retained owner from absent callbacks requires the client's explicit
         * recovery/destructor semantics; this journal never reopens retirement.
         * @return Copied outcome preserving primary and native-outcome uncertainty.
         * @see Journal::before_retire
         */
        Outcome close()
        {
            if(journal_.before_retire())
            {
                return journal_.outcome();
            }
            ::roswasmcpp::FixedArray<uint32_t, 5> statuses;
            if(!client_.is_open())
            {
                return journal_.outcome();
            }
            roswasmc_cleanup_report r = client_.close_checked(journal_.outcome().primary, statuses);
            journal_.retired(statuses, r.cleanup_error, r.attempted);
            return journal_.outcome();
        }
    };
}  // namespace uwvm_industrial
