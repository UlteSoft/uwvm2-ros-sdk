/**
 * @file action_owner.hpp
 * @brief Complete kuka values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see document/platform/kuka/en_US/README.md
 */

/** Actual generated C Action calls with complete constructor rollback visibility.
 * This owner adds no serializer/backend/authority. Definition delegates directly
 * to the matching complete generated C typed functions. Context/table storage
 * and all potential owner slots exist before the first open. No heap is used.
 */
#pragma once
#include <array>
#include <cstdint>
#include <ros/c/roswasm/action_bundle.h>

namespace uwvm_industrial
{
    /**
     * @brief Own the real generated C action roles without heap allocation.
     * @details Definition supplies complete Goal/Feedback/Result types and delegates
     * send/feedback/result to the exact selected generated family. This C++11-or-newer
     * noncopyable, nonmoving wrapper borrows the backend function table for its whole
     * lifetime and owns its context copy, role handles and at most 16 goal IDs.
     * Serialize construction, every method and destruction; no locks, executor,
     * clock, grant, serializer or native endpoint are created here. Destruction closes
     * live roles once but cannot report close failures and does not cancel native
     * work. Use close_checked() while the owner is alive to retain cleanup results.
     * @tparam Definition Selected complete generated C action forwarding interface.
     * @see roswasmc_action_bundle
     * @see close_checked
     */
    template <class Definition>
    class ActionOwner final
    {
        roswasmc_context context_{};
        std::array<std::uint64_t, 16> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        /** @brief Complete original goal type supplied by Definition.
         * @details A value type following the selected family's bounds and units;
         * it is never a byte-shell substitute or a native pointer.
         * @see send_goal
         */
        using Goal = typename Definition::Goal;
        /** @brief Complete original terminal-result type.
         * @details Includes every original result field under the selected family's
         * bounds. Read controller status independently of the transport status.
         * @see result
         */
        using Result = typename Definition::Result;
        /** @brief Complete original action feedback type.
         * @details Caller-owned decoded value, with the selected original units and
         * capacities. An old observation does not establish native-state freshness.
         * @see feedback
         */
        using Feedback = typename Definition::Feedback;

        /**
         * @brief Acquire the separate action roles with checked constructor rollback.
         * @details Synchronous, serialized construction. All local role/ID storage
         * exists before the first open. Aliases request only externally granted
         * rights; strings are borrowed during construction. The backend table must
         * remain valid through destruction. No exception is thrown for SDK status;
         * inspect error() and both constructor reports. Failed acquisition closes
         * earlier roles in reverse, without retry or alias revocation.
         * @param[in] context Initialized context with a valid, long-lived backend.
         * @param[in] aliases Complete distinct send/cancel-own/feedback/result aliases;
         * the optional fifth role is stronger, explicit cancel-any authority.
         * @param[in] slots Local goal-ID capacity, integer 1..16; other values record 90.
         * @see error
         * @see constructor_report
         * @see constructor_results
         */
        ActionOwner(roswasmc_context const& context, roswasmc_action_aliases const& aliases, std::size_t slots = 1) : context_{context.backend}
        {
            if(!slots || slots > goals_.size())
            {
                bundle_.error = 90;
                bundle_.rollback = roswasmc_cleanup_init(90);
                return;
            }
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        /** @brief Forbid copying an owner and its live role handles.
         * @details Deleted operation; another C++ object must not share this storage
         * identity or claim ownership of the same local goal table.
         * @param[in] other Owner whose handles must never be copied; no call is legal.
         * @see ActionOwner
         */
        ActionOwner(ActionOwner const& other) = delete;
        /** @brief Forbid copy assignment of live ownership state.
         * @details Deleted operation avoids duplicate close/goal ownership.
         * @param[in] other Owner whose state cannot be assigned; no call is legal.
         * @return No runtime result; calling this overload is ill-formed.
         * @see close_checked
         */
        ActionOwner& operator= (ActionOwner const& other) = delete;
        /** @brief Forbid relocating the self-referential context/goal storage.
         * @details Deleted move constructor preserves stable SDK storage identity.
         * @param[in] other Owner whose storage cannot be relocated; no call is legal.
         * @see ActionOwner
         */
        ActionOwner(ActionOwner&& other) = delete;

        /** @brief Close any remaining roles once during serialized destruction.
         * @details Backend storage must still be alive. Close errors are discarded;
         * call close_checked() explicitly to observe them. This neither cancels a
         * native goal nor revokes policy aliases and performs no retry.
         * @see close_checked
         */
        ~ActionOwner()
        {
            if(bundle_.active)
            {
                std::array<uint32_t, 5> statuses{};
                (void)roswasmc_action_bundle_close_checked(&bundle_, 0, statuses.data(), statuses.size());
            }
        }

        /** @brief Read construction/retirement status without host IO.
         * @details Serialized cached read; successful construction returns 0 while
         * active. A failed constructor keeps its original error after rollback.
         * @return Stored error, 0 for active success, or 9 for an inactive clean owner.
         * @see is_open
         */
        uint32_t error() const noexcept
        {
            return bundle_.error ? bundle_.error : bundle_.active ? 0u : 9u;
        }

        /** @brief Test whether the action bundle still owns its active role set.
         * @details Serialized cached state is ownership information, not a native
         * controller heartbeat or a permission grant for another operation.
         * @return True for an active constructed bundle, otherwise false.
         * @see error
         */
        bool is_open() const noexcept
        {
            return bundle_.active;
        }

        /** @brief Copy the complete construction-rollback summary.
         * @details Serialized value read performs no cleanup or host call. The
         * primary open error and independent rollback error remain distinct.
         * @return Owned copy of the SDK's rollback report; no reference is borrowed.
         * @see constructor_results
         */
        roswasmc_cleanup_report constructor_report() const noexcept
        {
            return bundle_.rollback;
        }

        /** @brief Copy every construction-rollback role status.
         * @details Serialized cached read; order is send, cancel-own, feedback,
         * result, cancel-any. Unacquired/clean slots are zero; no close is retried.
         * @return Caller-owned array of five original SDK close statuses.
         * @see constructor_report
         */
        std::array<uint32_t, 5> constructor_results() const noexcept
        {
            std::array<uint32_t, 5> out{};
            for(size_t i = 0; i < 5; ++i)
                out[i] = bundle_.rollback_status[i];
            return out;
        }

        /**
         * @brief Send one complete typed goal through the actual generated API.
         * @details Serialized synchronous call on an active bundle. SDK bounds,
         * capacity, permission and correlation checks remain authoritative. An error
         * can follow native dispatch and never proves that resending is harmless.
         * Inputs/outputs are borrowed only during this call; no allocation occurs.
         * @param[in] value Complete valid goal in original units, disjoint from owner
         * and output storage; caller retains ownership.
         * @param[out] id Writable disjoint opaque ID destination, committed by the
         * selected API only after a valid response. It must not alias value/backend.
         * @return Original SDK envelope, including independent error/length fields.
         * @see roswasmc_action_bundle_send_goal
         */
        roswasmc_result send_goal(Goal const& value, uint64_t& id)
        {
            return Definition::send(&bundle_, &value, &id);
        }

        /** @brief Poll one complete feedback value for a locally owned goal ID.
         * @details Serialized nonblocking call. Idle 11 is not a new observation;
         * caller/executor schedules further polls and deadlines. No retry is hidden.
         * @param[in] id Nonzero goal ID retained by this bundle.
         * @param[out] out Caller-owned disjoint complete value storage, borrowed for
         * this call; the selected typed decoder controls commit/failure behavior.
         * @return Original SDK envelope; status 9 rejects an unknown/stale goal.
         * @see roswasmc_action_bundle_feedback
         */
        roswasmc_result feedback(uint64_t id, Feedback& out)
        {
            return Definition::feedback(&bundle_, id, &out);
        }

        /** @brief Poll the original correlated terminal result without remapping fields.
         * @details Serialized nonblocking call. The generated API checks ID and
         * terminal kind and manages its local goal table. A terminal response does
         * not itself establish physical stop or success of the controller result.
         * @param[in] id Nonzero locally retained goal ID.
         * @param[out] kind Disjoint writable terminal kind: 2 completed, 3 aborted,
         * or 4 canceled on successful complete decoding.
         * @param[out] out Disjoint caller-owned complete original result storage;
         * both output references are borrowed for this call only.
         * @return Unmodified SDK error/length envelope; 11 means pending.
         * @see roswasmc_action_bundle_result
         */
        roswasmc_result result(uint64_t id, uint8_t& kind, Result& out)
        {
            return Definition::result(&bundle_, id, &kind, &out);
        }

        /** @brief Request cancellation using only the separate cancel-own role.
         * @details Serialized synchronous request for a locally tracked goal. A
         * decoded acknowledgement does not remove the ID or prove native stopping;
         * a later genuine terminal result remains necessary. No automatic retry.
         * @param[in] id Nonzero goal ID owned by this bundle.
         * @param[out] accepted Disjoint caller-owned int set to canonical 0/1 on
         * success; borrowed during this call and unchanged by SDK refusal.
         * @return Original SDK envelope; 9 for a stale ID, 11/110 for idle/timeout.
         * @see roswasmc_action_bundle_cancel_own
         * @see result
         */
        roswasmc_result cancel_own(uint64_t id, int& accepted)
        {
            return roswasmc_action_bundle_cancel_own(&bundle_, id, &accepted);
        }

        /** @brief Close all live roles once with independent cleanup observations.
         * @details Serialized terminal cleanup in reverse acquisition order. This
         * retires local ownership, never cancels a native goal or revokes aliases.
         * Backend storage must remain alive; each close is attempted at most once.
         * @param[in] primary Existing application/SDK failure, 0 if none; preserved.
         * @param[out] statuses Caller-owned disjoint five-slot status array, borrowed
         * during this call and indexed in acquisition order.
         * @return Complete SDK cleanup report; repeated closure reports error 9 and
         * never replays a close. Per-role errors do not overwrite primary.
         * @see roswasmc_action_bundle_close_checked
         * @see constructor_results
         */
        roswasmc_cleanup_report close_checked(uint32_t primary, std::array<uint32_t, 5>& statuses)
        {
            return roswasmc_action_bundle_close_checked(&bundle_, primary, statuses.data(), statuses.size());
        }
    };
}  // namespace uwvm_industrial
