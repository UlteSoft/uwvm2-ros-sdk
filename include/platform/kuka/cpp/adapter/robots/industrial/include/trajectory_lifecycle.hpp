/**
 * @file trajectory_lifecycle.hpp
 * @brief Complete kuka values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see document/platform/kuka/en_US/README.md
 */

/** @file Finite caller-driven industrial Action lifecycle, independent of ROS ABI.
 * This value journal creates no thread, clock, resource, grant, retry or emergency
 * stop. Actual generated complete Goal/Feedback/Result codecs and SDK Action
 * owners perform wire/ID/permission checks. A source API entry is deliberately
 * recorded before the call: an error cannot prove zero native effect. A fresh
 * journal is a fresh local transaction, never authority to resend an old goal.
 * This header requires C++20 for Trajectory's optional constructor-report
 * detection; the simpler journal value syntax does not qualify earlier modes.
 */
#pragma once
#include <cstdint>
#include <array>
#include <ros/cpp/roswasm/roswasmcpp.hpp>

namespace uwvm_industrial
{
    /** @brief Local once-only action progress, independent of native robot state.
     * @details C++11 scoped enumeration. Values describe journal transitions only,
     * without an executor, clock, permission grant or terminal-state inference.
     * @see Journal
     */
    enum class Phase : unsigned char
    {
        /** @brief No send attempt recorded.
         * @details Only this phase permits before_send(); no native fact is implied.
         * @see Journal::before_send
         */
        fresh,
        /** @brief A send API was entered but acceptance is not yet known.
         * @details A transport error can still follow a native effect; never resend
         * automatically merely because acceptance is unknown.
         * @see Journal::accepted
         */
        submitted_unknown,
        /** @brief A nonzero correlated goal ID was retained.
         * @details Local ownership permits polling/own-cancel but conveys no new grant.
         * @see Journal::feedback
         */
        active,
        /** @brief Own-cancel was entered without a known acknowledgement.
         * @details The once-only cancel attempt cannot be replayed by this journal.
         * @see Journal::cancelled
         */
        cancel_unknown,
        /** @brief The original cancel response acknowledged the request.
         * @details A genuine terminal result is still required; stopping is unproven.
         * @see Journal::terminal
         */
        cancel_acknowledged,
        /** @brief The original cancel response did not acknowledge cancellation.
         * @details Goal correlation remains available for feedback/terminal polling.
         * @see Journal::feedback
         */
        cancel_rejected,
        /** @brief A genuine correlated terminal kind was recorded.
         * @details Outcome success still depends on the original controller result.
         * @see Journal::terminal
         */
        terminal,
        /** @brief Local ownership cleanup has been entered.
         * @details Retirement is not native cancellation or physical stopping.
         * @see Journal::before_retire
         */
        retired
    };

    /** @brief Copyable local outcome/cleanup journal without native ownership.
     * @details Original goal/kind and SDK statuses retain their full widths. Boolean
     * observations describe API entry/uncertainty, never native safety or authority.
     * Role statuses use send, cancel-own, feedback, result, cancel-any order. This
     * value owns all its scalar/array storage and may outlive the action owner.
     * @see Journal::outcome
     * @see Trajectory::close
     */
    struct Outcome
    {
        std::uint32_t primary{}, cleanup{};
        std::uint64_t goal{};
        std::uint8_t terminal_kind{};
        bool source_api_entered{}, native_outcome_unknown{}, cancel_acknowledged{};
        std::uint32_t cleanup_attempted{};
        std::array<std::uint32_t, 5> role_cleanup{};
    };

    /** @brief Record a full-width goal identity and once-only local effect guards.
     * @details Pure value journal in this C++20 header, with no imports, allocation, timer, lock or
     * permission. Serialize reads/mutations of one instance. A new journal never
     * authorizes resending an old goal. Call mutators only with observations from
     * the actual selected SDK, not peer-supplied replacement IDs. Terminal kinds
     * are original SDK 2/3/4; application success also needs controller error 0.
     * @see Outcome
     * @see Trajectory
     */
    class Journal final
    {
        Phase phase_{Phase::fresh};
        Outcome value_{};

    public:
        /** @brief Read the current local phase.
         * @details Serialized cached value read performs no host operation.
         * @return Current Phase; its value is not current physical robot state.
         * @see outcome
         */
        Phase phase() const noexcept
        {
            return phase_;
        }

        /** @brief Borrow the journal's complete retained outcome.
         * @details Read-only reference remains valid only for this Journal's lifetime;
         * serialize access and copy the value before the owner is destroyed.
         * @return Borrowed const Outcome reference, never a native handle.
         * @see phase
         */
        Outcome const& outcome() const noexcept
        {
            return value_;
        }

        /** @brief Record entry into the original send API before dispatch.
         * @details Transitions fresh to submitted_unknown and marks possible native
         * effect before the call. No send occurs here; a refusal preserves state.
         * @return 0 for the first entry, or 17 if a send was already recorded.
         * @see accepted
         */
        std::uint32_t before_send() noexcept
        {
            if(phase_ != Phase::fresh)
                return 17;
            phase_ = Phase::submitted_unknown;
            value_.source_api_entered = true;
            value_.native_outcome_unknown = true;
            return 0;
        }

        /** @brief Commit a genuine nonzero goal ID after successful submission.
         * @details Requires submitted_unknown; refuses a replacement ID in every
         * later phase. This value operation grants no host or controller rights.
         * @param[in] id Complete opaque uint64 ID from the actual send response.
         * @return 0 on transition to active, or 22 without mutation for bad phase/zero ID.
         * @see before_send
         */
        std::uint32_t accepted(std::uint64_t id) noexcept
        {
            if(phase_ != Phase::submitted_unknown || !id)
                return 22;
            value_.goal = id;
            phase_ = Phase::active;
            return 0;
        }

        /** @brief Consume the single cancel-own attempt for the retained goal.
         * @details Only active may transition to cancel_unknown. No host request,
         * terminal inference or native retry is performed by this value operation.
         * @param[in] id Nonzero ID equal to outcome().goal.
         * @return 0 on transition, otherwise 9 with the phase unchanged.
         * @see cancelled
         */
        std::uint32_t before_cancel(std::uint64_t id) noexcept
        {
            if(phase_ != Phase::active || !id || id != value_.goal)
                return 9;
            phase_ = Phase::cancel_unknown;
            return 0;
        }

        /** @brief Record an actual own-cancel acknowledgement without inferring stop.
         * @details Requires cancel_unknown and the retained ID. Both accepted and
         * rejected responses leave feedback/result polling available.
         * @param[in] id Full opaque ID associated with this cancel request.
         * @param[in] accepted Canonical acknowledgement from the actual SDK response.
         * @return 0 on commit, or 22 for phase/identity mismatch without mutation.
         * @see terminal
         */
        std::uint32_t cancelled(std::uint64_t id, bool accepted) noexcept
        {
            if(phase_ != Phase::cancel_unknown || id != value_.goal)
                return 22;
            value_.cancel_acknowledged = accepted;
            phase_ = accepted ? Phase::cancel_acknowledged : Phase::cancel_rejected;
            return 0;
        }

        /** @brief Check whether this goal may be polled in the current local phase.
         * @details Read-only local check permits active and all post-cancel phases;
         * it performs no poll and does not check host policy or freshness.
         * @param[in] id Nonzero full-width ID that must match outcome().goal.
         * @return 0 if locally pollable, otherwise 9; no state changes.
         * @see terminal
         */
        std::uint32_t feedback(std::uint64_t id) const noexcept
        {
            return id && id == value_.goal &&
                           (phase_ == Phase::active || phase_ == Phase::cancel_unknown || phase_ == Phase::cancel_acknowledged ||
                            phase_ == Phase::cancel_rejected)
                       ? 0u
                       : 9u;
        }

        /** @brief Record a genuine correlated terminal kind and controller code.
         * @details Requires a pollable retained ID and kind 2..4. Clears native
         * outcome uncertainty, retains any earlier primary failure, and otherwise
         * records 125 for canceled kind 4 or 5 for non-success. Recording a result
         * returns 0 even when its application outcome failed; inspect outcome().
         * @param[in] id Full-width retained goal ID from the actual result envelope.
         * @param[in] kind Original terminal kind: 2 completed, 3 aborted, 4 canceled.
         * @param[in] controller_error Original signed result error_code; 0 is required
         * for completed application success. No unit conversion occurs.
         * @return 0 on recorded terminal outcome, or 22 without mutation for invalid
         * ID, phase or kind. This does not establish physical stopping.
         * @see feedback
         * @see outcome
         */
        std::uint32_t terminal(std::uint64_t id, std::uint8_t kind, std::int32_t controller_error) noexcept
        {
            if(feedback(id) || kind < 2 || kind > 4)
                return 22;
            value_.terminal_kind = kind;
            value_.native_outcome_unknown = false;
            phase_ = Phase::terminal;
            // Preserve the vendor/controller result separately in its actual typed
            // object. Local125 is cancellation,5 is a real non-success terminal.
            if(!value_.primary)
                value_.primary = kind == 2 && controller_error == 0 ? 0u : kind == 4 ? 125u : 5u;
            return 0;
        }

        /** @brief Latch the first nonzero application/SDK failure.
         * @details Serialized local mutation never overwrites an earlier primary
         * error, changes phase, issues cleanup, or asserts native outcome certainty.
         * @param[in] primary Original status to retain; zero leaves the journal unchanged.
         * @see outcome
         */
        void failure(std::uint32_t primary) noexcept
        {
            if(primary && !value_.primary)
                value_.primary = primary;
        }

        /** @brief Record status 110 after an externally established deadline.
         * @details This journal reads no clock and starts no timer. The caller must
         * establish deadline expiry. Recording it neither cancels nor resends a
         * native goal; outcome uncertainty remains until an actual terminal result.
         * @see failure
         * @see terminal
         */
        void timeout() noexcept
        {
            failure(110); /* Unknown until a genuine terminal result. */
        }

        /** @brief Consume the single local role-retirement transition.
         * @details Any non-retired phase may retire; no host close/cancel is issued
         * here and native outcome uncertainty is intentionally preserved.
         * @return 0 on transition to retired, or 9 if already retired.
         * @see retired
         */
        std::uint32_t before_retire() noexcept
        {
            if(phase_ == Phase::retired)
                return 9;
            phase_ = Phase::retired;
            return 0;
        }

        /** @brief Copy actual cleanup observations into the value journal.
         * @details Serialized copy does not itself change phase or perform cleanup;
         * also used to retain constructor rollback. Inputs must come from the real
         * SDK report. Storage is borrowed only during the call and copied by value.
         * @param[in] statuses Five original per-role statuses in acquisition order.
         * @param[in] first First independent cleanup error, 0 for clean/no cleanup.
         * @param[in] attempted Actual count of attempted closes, normally 0..5; this
         * recording method does not validate or synthesize that count.
         * @see before_retire
         * @see Outcome
         */
        void retired(std::array<std::uint32_t, 5> const& statuses, std::uint32_t first, std::uint32_t attempted = 5) noexcept
        {
            value_.role_cleanup = statuses;
            value_.cleanup = first;
            value_.cleanup_attempted = attempted;
        }
    };

    /** @brief Couple a once-only journal to an actual complete typed action owner.
     * @details C++20 template, using the matching SDK library/exception profile.
     * Client supplies the real typed Goal/Feedback/Result and action operations;
     * no serializer, transport shim, clock, thread or grant is introduced. The
     * backend table must outlive this noncopyable/nonmoving object. Serialize every
     * call and destruction. Constructor rollback and final per-role errors remain
     * visible; ambiguous submission/cancel never triggers an automatic resend.
     * Closing local ownership does not cancel native work or prove physical stop.
     * @tparam Client Complete generated-family action owner with checked cleanup.
     * @see ActionOwner
     * @see Journal
     * @see close
     */
    template <class Client>
    class Trajectory final
    {
        Journal journal_;
        Client client_;

    public:
        /** @brief Complete selected original goal value type.
         * @details Bounds and units follow Client's exact generated source family;
         * the caller owns goal storage and no byte-shell substitution is used.
         * @see submit
         */
        using Goal = typename Client::Goal;
        /** @brief Complete selected original feedback value type.
         * @details Includes all original fields; a cached value carries no implied
         * freshness, native ownership or actuator authority.
         * @see feedback
         */
        using Feedback = typename Client::Feedback;
        /** @brief Complete selected original terminal-result value type.
         * @details Includes original error_code/error_string and other source fields;
         * application outcome is recorded separately in the journal.
         * @see result
         */
        using Result = typename Client::Result;

        /** @brief Construct the real action owner and retain any constructor rollback.
         * @details Synchronous serialized construction, without implicit permissions.
         * The selected Client controls acquisition and capacity refusal. If its
         * constructor reports are available, their complete statuses are copied
         * into the journal. SDK status failures are observed through error(); C++
         * exception behavior follows the selected Client and SDK library profile.
         * @param[in] context Initialized SDK context; backend table must outlive this object.
         * @param[in] aliases Original distinct role aliases borrowed during Client
         * construction, requiring separate external grants for each requested role.
         * @param[in] capacity Local goal-ID capacity; valid bounds follow Client
         * (1..16 for ActionOwner), with no point/record truncation implied.
         * @see error
         * @see journal
         */
        Trajectory(roswasmc_context const& context, roswasmc_action_aliases const& aliases, std::size_t capacity = 1) :
            journal_{}, client_{context, aliases, capacity}
        {
            journal_.failure(client_.error());
            if constexpr(requires {
                             client_.constructor_report();
                             client_.constructor_results();
                         })
            {
                auto r = client_.constructor_report();
                journal_.retired(client_.constructor_results(), r.cleanup_error, r.attempted);
            }
        }

        /** @brief Forbid copying role ownership and the associated effect journal.
         * @details Deleted operation; no duplicate owner or automatic goal replay exists.
         * @param[in] other Object that cannot be copied; no call is legal.
         * @see Trajectory
         */
        Trajectory(Trajectory const& other) = delete;
        /** @brief Forbid assigning another live action owner/journal.
         * @details Deleted operation preserves unique role and correlation ownership.
         * @param[in] other Object that cannot be assigned; no call is legal.
         * @return No runtime result; calling this overload is ill-formed.
         * @see close
         */
        Trajectory& operator= (Trajectory const& other) = delete;
        /** @brief Forbid moving the Client's stable context/ID storage.
         * @details Deleted operation prevents relocation of self-referential SDK storage.
         * @param[in] other Object that cannot be relocated; no call is legal.
         * @see Trajectory
         */
        Trajectory(Trajectory&& other) = delete;

        /** @brief Borrow the complete local journal for inspection.
         * @details Read-only reference is valid only while this Trajectory lives;
         * serialize access with mutations and copy Outcome for longer retention.
         * @return Borrowed const Journal reference, without host IO or new rights.
         * @see Journal::outcome
         */
        Journal const& journal() const noexcept
        {
            return journal_;
        }

        /** @brief Read the Client's construction/retirement status.
         * @details Serialized cached read follows the selected real Client contract;
         * application/controller outcome is retained separately by journal().
         * @return Unmodified Client status, 0 while successfully open.
         * @see journal
         */
        std::uint32_t error() const noexcept
        {
            return client_.error();
        }

        /** @brief Enter and perform at most one complete typed goal submission.
         * @details Requires an open Client and a fresh journal. Records possible
         * native effect before dispatch; SDK errors stay latched with outcome
         * uncertainty and never authorize replay. The caller schedules all later
         * feedback/result/deadline handling; no executor or timer is created.
         * @param[in] goal Complete valid original goal in selected source units,
         * caller-owned and disjoint from owner/output state; borrowed for this call.
         * @return 0 on accepted nonzero goal ID, 17 if already submitted, otherwise
         * the Client/SDK status or 22 for an invalid returned ID. Not terminal success.
         * @see Journal::before_send
         * @see result
         */
        std::uint32_t submit(Goal const& goal)
        {
            if(auto e = client_.error())
                return e;
            if(auto e = journal_.before_send())
                return e;
            std::uint64_t id{};
            auto r = client_.send_goal(goal, id);
            if(r.error)
            {
                journal_.failure(r.error);
                return r.error;
            }
            auto e = journal_.accepted(id);
            if(e)
                journal_.failure(e);
            return e;
        }

        /** @brief Poll one complete feedback value for the retained goal.
         * @details Serialized nonblocking call in active/post-cancel phases. Idle 11
         * does not latch a failure; other SDK errors do. This method neither closes
         * the Client nor retries a failed receive; explicit close() remains available.
         * @param[out] out Disjoint writable caller-owned complete feedback, borrowed
         * during this call; commit/refusal follows the selected typed SDK decoder.
         * @return 0 on new feedback, 11 if idle, 9 for invalid local phase/ID, or SDK error.
         * @see journal
         * @see close
         */
        std::uint32_t feedback(Feedback& out)
        {
            auto id = journal_.outcome().goal;
            if(auto e = journal_.feedback(id))
                return e;
            auto r = client_.feedback(id, out);
            if(r.error != 11)
                journal_.failure(r.error);
            return r.error;
        }

        /** @brief Poll and commit one complete correlated terminal result.
         * @details Serialized nonblocking operation. Both caller outputs remain
         * unchanged until the real typed SDK decoder and journal ID/kind checks
         * succeed. Terminal failure/cancellation is still a successfully observed
         * result: return 0, then inspect journal().outcome().primary. Original result
         * fields are copied without narrowing. No native-stop inference or cleanup
         * occurs automatically.
         * @param[out] out Disjoint caller-owned complete result value storage.
         * @param[out] kind Disjoint writable uint8 terminal kind: 2, 3 or 4 on success.
         * Both output references are borrowed only for this call.
         * @return 0 for a recorded complete terminal result, 11 if pending, 9 for
         * invalid local lifecycle, 22 for journal validation, or the SDK error.
         * @see Journal::terminal
         * @see close
         */
        std::uint32_t result(Result& out, std::uint8_t& kind)
        {
            auto id = journal_.outcome().goal;
            if(auto e = journal_.feedback(id))
                return e;
            // Both destinations remain private until the actual whole SDK decoder
            // and returned ID/kind validation succeed. Original error_string and
            // every other Result field remain available to the application.
            Result next{};
            std::uint8_t next_kind{};
            auto r = client_.result(id, next_kind, next);
            if(r.error)
            {
                if(r.error != 11)
                    journal_.failure(r.error);
                return r.error;
            }
            if(auto e = journal_.terminal(id, next_kind, next.error_code))
            {
                journal_.failure(e);
                return e;
            }
            out = next;
            kind = next_kind;
            return 0;
        }

        /** @brief Consume one own-goal cancellation attempt and retain its acknowledgement.
         * @details Serialized synchronous call from active phase. An ambiguous
         * SDK failure consumes the attempt and is latched; no automatic replay is
         * allowed. Only canonical SDK 0/1 is committed. Even acknowledged cancellation
         * requires later result polling and proves no physical stop.
         * @param[out] acknowledged Disjoint caller-owned Boolean, borrowed for this
         * call and changed only after a complete valid acknowledgement.
         * @return 0 for a decoded cancellation response (accepted or rejected), 9 for
         * invalid/repeated lifecycle, 22 for noncanonical reply, otherwise SDK error.
         * @see Journal::before_cancel
         * @see result
         */
        std::uint32_t cancel_own(bool& acknowledged)
        {
            auto id = journal_.outcome().goal;
            if(auto e = journal_.before_cancel(id))
                return e;
            int next{};
            auto r = client_.cancel_own(id, next);
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
            if(auto e = journal_.cancelled(id, next != 0))
            {
                journal_.failure(e);
                return e;
            }
            acknowledged = next != 0;
            return 0;
        }

        /** @brief Record externally determined deadline expiry without dispatching work.
         * @details Serialized local status 110 latch. No clock is read, no timer
         * scheduled, and no cancel, close or retry occurs. The caller retains
         * responsibility for explicitly authorized cleanup and genuine terminal facts.
         * @see Journal::timeout
         * @see close
         */
        void timeout() noexcept
        {
            journal_.timeout();
        }

        /** @brief Close acquired roles once and return an owned outcome snapshot.
         * @details Serialized terminal ownership cleanup, independent of native goal
         * cancellation. Records each attempted close in acquisition order and keeps
         * the first primary failure separate. If the Client is already inactive,
         * constructor rollback observations are retained. Repeated calls return the
         * saved journal without replay. Backend storage must still be valid.
         * @return Caller-owned complete Outcome copy, valid after this object dies;
         * unknown native outcome remains unknown until an actual terminal result.
         * @see Journal::before_retire
         * @see ActionOwner::close_checked
         */
        Outcome close()
        {
            if(journal_.before_retire())
                return journal_.outcome();
            std::array<std::uint32_t, 5> statuses{};
            if(!client_.is_open())
                return journal_.outcome();
            auto r = client_.close_checked(journal_.outcome().primary, statuses);
            journal_.retired(statuses, r.cleanup_error, r.attempted);
            return journal_.outcome();
        }
    };
}  // namespace uwvm_industrial
