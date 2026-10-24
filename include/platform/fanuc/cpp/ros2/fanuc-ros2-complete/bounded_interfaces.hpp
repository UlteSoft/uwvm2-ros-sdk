/**
 * @file bounded_interfaces.hpp
 * @brief Own the complete source-paired FANUC ROS2 typed RPC roles.
 * @details Each nonmoving owner keeps stable context and goal storage. The caller retains the immutable
 * backend and serializes operations. Explicit close/revoke reports must be observed before destruction;
 * destructors discard best-effort cleanup status. Original fields, finite bounds, ticket roles and native
 * result kinds remain intact. No grant, thread, retry or physical-stop guarantee is created.
 */
#pragma once
#include <fanuc/c/ros2/fanuc-ros2-complete/bounded_interfaces.h>
#include <fanuc/cpp/ros2/fanuc-ros2-complete/bounded_records.hpp>
#include <array>
#include <memory>
#include <functional>
#include <string_view>
#include <utility>

namespace uwvm_custom
{

    /**
     * @brief Borrow the exact alias byte span without allocating or granting authority.
     * @details The returned view owns no storage and performs no alias validation. Keep text readable
     * through its synchronous consumer; endpoint construction performs role-specific validation.
     * @param text Caller-owned alias bytes, borrowed through the consuming call.
     * @return A borrowed data/size view.
     */
    inline roswasmc_string alias(std::string_view text)
    {
        return {text.data(), text.size()};
    }

    /**
     * @brief Own the typed endpoint lifecycle for ServerOwners.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class ServerOwners
    {
    protected:
        roswasmc_context context_;
        roswasmc_capability advertise_{}, respond_{};
        uint32_t error_{};
        bool busy_{};
        roswasmc_cleanup_report rollback_{};
        std::array<uint32_t, 2> rollback_statuses_{};

        struct Pass
        {
            bool& busy;

            explicit Pass(bool& value) : busy{value}
            {
                busy = true;
            }

            ~Pass()
            {
                busy = false;
            }
        };

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         * @param action Select action roles when true, otherwise service roles.
         */
        ServerOwners(roswasmc_context const& context, std::string_view advertise, std::string_view respond, bool action) : context_{context.backend}
        {
            roswasmc_capability_init(&advertise_, &context_);
            roswasmc_capability_init(&respond_, &context_);
            error_ = roswasmc_check_operation(&context_, action ? ROSWASMC_ACTION_RESPOND : ROSWASMC_SERVICE_RESPOND);
            if(!error_ && (!roswasmc_action_bundle_alias(alias(advertise)) || !roswasmc_action_bundle_alias(alias(respond)) || advertise == respond))
                error_ = 22;
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_)
                error_ = action ? roswasmc_check_operation(&context_, ROSWASMC_ACTION_ADVERTISE) : (context_.backend->advertise_service ? 0 : 95);
            if(!error_)
                error_ = roswasmc_open(&advertise_, advertise.data(), advertise.size());
            if(!error_)
                error_ = roswasmc_open(&respond_, respond.data(), respond.size());
            if(!error_ && advertise_.handle == respond_.handle)
            {
                respond_.handle = 0;
                error_ = 17;
            }
            if(!error_)
            {
                if(action)
                {
                    auto r = roswasmc_action_advertise(&advertise_, nullptr, 0, nullptr, 0);
                    error_ = r.error;
                    if(!error_ && (!r.has_length || r.length))
                        error_ = 22;
                }
                else
                    error_ = roswasmc_service_advertise(&advertise_);
            }
            if(error_)
            {
                rollback_ = is_open() ? cleanup(error_, rollback_statuses_, false) : roswasmc_cleanup_init(error_);
            }
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * The report keeps primary/first cleanup errors and attempt/failure counts separate. Server callback
         * retirement is refused with 17 before imports. No automatic reopen, stronger cancellation, effect
         * replay or physical-stop claim occurs.
         * @param primary Earlier operation error, retained independently from cleanup.
         * @param statuses Caller-owned per-role results in the declared role order.
         * @param revoke Use explicit revocation when true, ordinary close otherwise.
         * @return Saved primary and independent cleanup report.
         */
        roswasmc_cleanup_report cleanup(uint32_t primary, std::array<uint32_t, 2>& statuses, bool revoke)
        {
            auto r = roswasmc_cleanup_init(primary);
            if(busy_)
            {
                r.cleanup_error = 17;
                return r;
            }
            if(!is_open())
            {
                r.cleanup_error = 9;
                return r;
            }
            roswasmc_capability* caps[] = {&advertise_, &respond_};
            for(size_t i = 2; i > 0; --i)
            {
                uint32_t code = 0;
                if(roswasmc_is_open(caps[i - 1]))
                {
                    code = revoke ? roswasmc_revoke(caps[i - 1]) : roswasmc_close(caps[i - 1]);
                    ++r.attempted;
                    if(code)
                    {
                        ++r.failed;
                        if(!r.cleanup_error)
                            r.cleanup_error = code;
                    }
                }
                statuses[i - 1] = code;
            }
            return r;
        }

    public:
        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        ServerOwners(ServerOwners const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        ServerOwners& operator= (ServerOwners const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        ServerOwners(ServerOwners&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close_checked or revoke_checked
         * explicitly and retain its status before destruction. The immutable backend must remain alive.
         * Destruction never adds revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~ServerOwners()
        {
            if(is_open())
            {
                std::array<uint32_t, 2> statuses{};
                cleanup(0, statuses, false);
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&advertise_) || roswasmc_is_open(&respond_);
        }

        /**
         * @brief Inspect saved construction rollback without retiring another role.
         * @details The returned report preserves the original setup error and independent cleanup summary.
         * The statuses overload copies every saved role result; unopened roles retain zero. Service-server
         * order is advertise/respond; action order is send/own-cancel/feedback/result/any-cancel.
         * @return The saved rollback report; no import or retry is performed.
         */
        roswasmc_cleanup_report construction_cleanup() const
        {
            return rollback_;
        }

        /**
         * @brief Inspect saved construction rollback without retiring another role.
         * @details The returned report preserves the original setup error and independent cleanup summary.
         * The statuses overload copies every saved role result; unopened roles retain zero. Service-server
         * order is advertise/respond; action order is send/own-cancel/feedback/result/any-cancel.
         * @param statuses Caller-owned fixed-size output array for all role statuses.
         * @return The saved rollback report; no import or retry is performed.
         */
        roswasmc_cleanup_report construction_cleanup(std::array<uint32_t, 2>& statuses) const
        {
            statuses = rollback_statuses_;
            return rollback_;
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * The report keeps primary/first cleanup errors and attempt/failure counts separate. Server callback
         * retirement is refused with 17 before imports. No automatic reopen, stronger cancellation, effect
         * replay or physical-stop claim occurs.
         * @param primary Earlier operation error, retained independently from cleanup.
         * @param statuses Caller-owned per-role results in the declared role order.
         * @return Saved primary and independent cleanup report.
         */
        roswasmc_cleanup_report close_checked(uint32_t primary, std::array<uint32_t, 2>& statuses)
        {
            return cleanup(primary, statuses, false);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * The report keeps primary/first cleanup errors and attempt/failure counts separate. Server callback
         * retirement is refused with 17 before imports. No automatic reopen, stronger cancellation, effect
         * replay or physical-stop claim occurs.
         * @param primary Earlier operation error, retained independently from cleanup.
         * @param statuses Caller-owned per-role results in the declared role order.
         * @return Saved primary and independent cleanup report.
         */
        roswasmc_cleanup_report revoke_checked(uint32_t primary, std::array<uint32_t, 2>& statuses)
        {
            return cleanup(primary, statuses, true);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Control_msgsActionFollowJointTrajectoryClient.
     * @details This object owns the action client capabilities and borrows only the immutable backend. It
     * cannot be copied or moved; context/goal storage stays stable through every call. The caller serializes
     * access and observes explicit cleanup reports before destruction. Callbacks borrow values only during
     * invocation; no hidden thread or retry is created. Four required roles and optional any-cancel remain
     * distinct; goal quota is 1..1024.
     */
    class Ros2Control_msgsActionFollowJointTrajectoryClient
    {
        roswasmc_context context_;
        std::array<uint64_t, 1024> goals_{};
        roswasmc_action_bundle bundle_{};

    public:
        using Goal = Ros2Control_msgsActionFollowJointTrajectory_Goal;
        using Result = Ros2Control_msgsActionFollowJointTrajectory_Result;
        using Feedback = Ros2Control_msgsActionFollowJointTrajectory_Feedback;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param aliases Four required role aliases and optional independent any-cancel alias.
         * @param slots Active goal quota in 1..1024 entries; no allocation or truncation.
         */
        Ros2Control_msgsActionFollowJointTrajectoryClient(roswasmc_context const& context, roswasmc_action_aliases const& aliases, size_t slots = 8) :
            context_{context.backend}
        {
            roswasmc_action_bundle_init(&context_, &bundle_, &aliases, goals_.data(), slots);
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Control_msgsActionFollowJointTrajectoryClient(Ros2Control_msgsActionFollowJointTrajectoryClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Control_msgsActionFollowJointTrajectoryClient& operator= (Ros2Control_msgsActionFollowJointTrajectoryClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Control_msgsActionFollowJointTrajectoryClient(Ros2Control_msgsActionFollowJointTrajectoryClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close_checked or revoke_checked
         * explicitly and retain its status before destruction. The immutable backend must remain alive.
         * Destruction never adds revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Control_msgsActionFollowJointTrajectoryClient()
        {
            if(bundle_.active)
            {
                std::array<uint32_t, 5> statuses{};
                roswasmc_action_bundle_close_checked(&bundle_, 0, statuses.data(), statuses.size());
            }
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return bundle_.error ? bundle_.error : bundle_.active ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return bundle_.active;
        }

        /**
         * @brief Check membership of a nonzero goal ID in this owner's finite table.
         * @details The table is local bookkeeping, not host authorization. The caller serializes access and
         * keeps this nonmoving owner alive until result consumption or explicit retirement.
         * @param id Candidate native goal ID; zero is never an owned goal.
         * @return True for a tracked local goal.
         */
        bool owns(uint64_t id) const
        {
            return roswasmc_action_bundle_owns(&bundle_, id);
        }

        /**
         * @brief Send one complete goal and retain its returned ID in this owner.
         * @details The goal is borrowed only for this call and must satisfy its complete codec bounds. The
         * finite goal quota is never resized or truncated. Preserve uncertain outcomes rather than
         * resubmitting effects; keep the owner alive for feedback, terminal consumption and cleanup.
         * @param value Complete original goal in native declared units and frame.
         * @param id Caller-owned goal-ID output, inspected only after success.
         * @return Original send/codec result.
         */
        roswasmc_result send_goal(Goal const& value, uint64_t& id)
        {
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_send(&bundle_, &value, &id);
        }

        /**
         * @brief Poll one complete feedback value for a locally owned goal.
         * @details No executor or retry is started. Idle 11 is returned unchanged and does not consume the
         * goal. Field units, finite bounds and host goal ownership remain the original contract.
         * @param id Nonzero ID tracked by this owner.
         * @param value Caller-owned whole feedback output.
         * @return Original poll/codec result; inspect the output only on success.
         */
        roswasmc_result feedback(uint64_t id, Feedback& value)
        {
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_feedback(&bundle_, id, &value);
        }

        /**
         * @brief Consume one validated terminal result for this owner's goal.
         * @details A valid terminal kind is 2..4. Successful terminal consumption retires that local goal
         * once; idle or uncertain transport is not an invitation to resend the goal. Native result fields
         * remain independent from transport errors and do not assert physical stopping.
         * @param id Nonzero tracked goal ID.
         * @param kind Caller-owned terminal-kind output.
         * @param value Caller-owned complete terminal result.
         * @return Original terminal poll/codec result.
         */
        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value)
        {
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_result(&bundle_, id, &kind, &value);
        }

        /**
         * @brief Request cancellation once for a goal tracked by this owner.
         * @details Zero and foreign IDs are refused. Acceptance is not terminal completion or a physical-
         * stop guarantee; retain the goal until terminal consumption or explicit checked retirement.
         * @param id Nonzero locally owned goal ID.
         * @param accepted Cancellation acceptance output on success.
         * @return Original owned-cancellation result; no stronger role is substituted.
         */
        roswasmc_result cancel_own(uint64_t id, int& accepted)
        {
            return roswasmc_action_bundle_cancel_own(&bundle_, id, &accepted);
        }

        /**
         * @brief Use the separately granted any-goal cancellation role once.
         * @details This role is distinct from own cancellation. A zero selector has the ABI's all-goals
         * meaning only under this independently granted authority. No timeout recovery escalates into it.
         * @param id Explicit native selector for this separately granted operation.
         * @param accepted Acceptance output on success, not proof of terminal completion.
         * @return Original cancellation result.
         */
        roswasmc_result cancel_any(uint64_t id, int& accepted)
        {
            return roswasmc_action_bundle_cancel_any(&bundle_, id, &accepted);
        }

        /**
         * @brief Explicitly request all-goal cancellation through the any-cancel role.
         * @details The zero selector never broadens an own-cancel capability. The caller must independently
         * authorize this operation; ordinary close, rollback and destruction never invoke it.
         * @param accepted Acceptance output on success; physical stopping is not implied.
         * @return Original cancellation result.
         */
        roswasmc_result cancel_all(int& accepted)
        {
            return roswasmc_action_bundle_cancel_all(&bundle_, &accepted);
        }

        /**
         * @brief Inspect saved construction rollback without retiring another role.
         * @details The returned report preserves the original setup error and independent cleanup summary.
         * The statuses overload copies every saved role result; unopened roles retain zero. Service-server
         * order is advertise/respond; action order is send/own-cancel/feedback/result/any-cancel.
         * @param statuses Caller-owned fixed-size output array for all role statuses.
         * @return The saved rollback report; no import or retry is performed.
         */
        roswasmc_cleanup_report construction_cleanup(std::array<uint32_t, 5>& statuses) const
        {
            for(size_t i = 0; i < statuses.size(); ++i)
                statuses[i] = bundle_.rollback_status[i];
            return bundle_.rollback;
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * The report keeps primary/first cleanup errors and attempt/failure counts separate. No automatic
         * reopen, stronger cancellation, effect replay or physical-stop claim occurs.
         * @param primary Earlier operation error, retained independently from cleanup.
         * @param statuses Caller-owned per-role results in the declared role order.
         * @return Saved primary and independent cleanup report.
         */
        roswasmc_cleanup_report close_checked(uint32_t primary, std::array<uint32_t, 5>& statuses)
        {
            return roswasmc_action_bundle_close_checked(&bundle_, primary, statuses.data(), statuses.size());
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * The report keeps primary/first cleanup errors and attempt/failure counts separate. No automatic
         * reopen, stronger cancellation, effect replay or physical-stop claim occurs.
         * @param primary Earlier operation error, retained independently from cleanup.
         * @param statuses Caller-owned per-role results in the declared role order.
         * @return Saved primary and independent cleanup report.
         */
        roswasmc_cleanup_report revoke_checked(uint32_t primary, std::array<uint32_t, 5>& statuses)
        {
            return roswasmc_action_bundle_revoke_checked(&bundle_, primary, statuses.data(), statuses.size());
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Control_msgsActionFollowJointTrajectoryServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Control_msgsActionFollowJointTrajectoryServer : public ServerOwners
    {
    public:
        using Goal = Ros2Control_msgsActionFollowJointTrajectory_Goal;
        using Result = Ros2Control_msgsActionFollowJointTrajectory_Result;
        using Feedback = Ros2Control_msgsActionFollowJointTrajectory_Feedback;

        /**
         * @brief Own the complete selected feedback and terminal reply values.
         * @details The callback returns this value by ownership. Each flag explicitly selects its effect;
         * terminal kind is 2..4 only when send_result is true. A completed feedback effect is not replayed
         * if the later terminal send fails. Original message units and frames are preserved.
         */
        struct Replies
        {
            Feedback feedback{};
            Result result{};
            uint8_t kind{2};
            bool send_feedback{true}, send_result{true};
        };

    private:
        using Handler = std::function<Replies(uint64_t, Goal const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Control_msgsActionFollowJointTrajectoryServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, true}
        {
        }

        /**
         * @brief Replace the owned action callback for the next executor pass.
         * @details The current functor survives its pass. Goal references are borrowed until callback
         * return; copy complete values before retaining them. Replies choose feedback/result effects
         * explicitly. Callback exceptions are not translated into fabricated native terminal results.
         * @param handler Owned goal callable, or empty to disable dispatch.
         */
        void on_goal(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param id Nonzero native goal-ID output on success.
         * @param goal Complete caller-owned goal output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& id, Goal& goal)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_poll(&advertise_, &id, &goal);
        }

        /**
         * @brief Send one complete feedback component for a pending native goal.
         * @details The server borrows the value through this call; canonical bounds and every field are
         * validated before the effect. Native goal and response-role authority remain host checks.
         * @param id Nonzero pending native goal ID.
         * @param value Complete original feedback value.
         * @return Original feedback result.
         */
        roswasmc_result respond_feedback(uint64_t id, Feedback const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_feedback(&respond_, id, &value);
        }

        /**
         * @brief Send one explicit terminal component for a pending native goal.
         * @details Terminal kind 2..4 and the whole result are validated. A terminal effect is consumed
         * once; an uncertain return never triggers automatic response replay or another cancellation role.
         * @param id Nonzero pending goal ID.
         * @param kind Explicit ABI terminal kind in 2..4.
         * @param value Complete original terminal result.
         * @return Original terminal response/codec result.
         */
        roswasmc_result respond_result(uint64_t id, uint8_t kind, Result const& value)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_result(&respond_, id, kind, &value);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t id{};
            Goal goal{};
            auto r = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_poll(&advertise_, &id, &goal);
            if(r.error)
                return r.error;
            auto replies = (*handler)(id, goal);
            if(replies.send_result &&
               (replies.kind < 2 || replies.kind > 4 || !roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_valid(&replies.result)))
                return 22;
            if(replies.send_feedback && !roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_valid(&replies.feedback))
                return 22;
            if(replies.send_feedback)
            {
                r = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_feedback(&respond_, id, &replies.feedback);
                if(r.error)
                    return r.error;
            }
            return replies.send_result
                       ? roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_result(&respond_, id, replies.kind, &replies.result).error
                       : 0;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvCfgForceSensorClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvCfgForceSensorClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvCfgForceSensor_Request;
        using Response = Ros2Fanuc_msgsSrvCfgForceSensor_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvCfgForceSensorClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvCfgForceSensorClient(Ros2Fanuc_msgsSrvCfgForceSensorClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvCfgForceSensorClient& operator= (Ros2Fanuc_msgsSrvCfgForceSensorClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvCfgForceSensorClient(Ros2Fanuc_msgsSrvCfgForceSensorClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvCfgForceSensorClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_CfgForceSensor_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvCfgForceSensorServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvCfgForceSensorServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvCfgForceSensor_Response(Ros2Fanuc_msgsSrvCfgForceSensor_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvCfgForceSensor_Request;
        using Response = Ros2Fanuc_msgsSrvCfgForceSensor_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvCfgForceSensorServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_CfgForceSensor_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_CfgForceSensor_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_CfgForceSensor_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_CfgForceSensor_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetAnalogIOClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetAnalogIOClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvGetAnalogIO_Request;
        using Response = Ros2Fanuc_msgsSrvGetAnalogIO_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvGetAnalogIOClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetAnalogIOClient(Ros2Fanuc_msgsSrvGetAnalogIOClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetAnalogIOClient& operator= (Ros2Fanuc_msgsSrvGetAnalogIOClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetAnalogIOClient(Ros2Fanuc_msgsSrvGetAnalogIOClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvGetAnalogIOClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetAnalogIO_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetAnalogIOServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetAnalogIOServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvGetAnalogIO_Response(Ros2Fanuc_msgsSrvGetAnalogIO_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvGetAnalogIO_Request;
        using Response = Ros2Fanuc_msgsSrvGetAnalogIO_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvGetAnalogIOServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_GetAnalogIO_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetAnalogIO_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_GetAnalogIO_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_GetAnalogIO_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetBoolIOClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetBoolIOClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvGetBoolIO_Request;
        using Response = Ros2Fanuc_msgsSrvGetBoolIO_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvGetBoolIOClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetBoolIOClient(Ros2Fanuc_msgsSrvGetBoolIOClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetBoolIOClient& operator= (Ros2Fanuc_msgsSrvGetBoolIOClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetBoolIOClient(Ros2Fanuc_msgsSrvGetBoolIOClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvGetBoolIOClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetBoolIO_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetBoolIOServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetBoolIOServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvGetBoolIO_Response(Ros2Fanuc_msgsSrvGetBoolIO_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvGetBoolIO_Request;
        using Response = Ros2Fanuc_msgsSrvGetBoolIO_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvGetBoolIOServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_GetBoolIO_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetBoolIO_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_GetBoolIO_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_GetBoolIO_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetCartesianPositionClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetCartesianPositionClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvGetCartesianPosition_Request;
        using Response = Ros2Fanuc_msgsSrvGetCartesianPosition_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvGetCartesianPositionClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetCartesianPositionClient(Ros2Fanuc_msgsSrvGetCartesianPositionClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetCartesianPositionClient& operator= (Ros2Fanuc_msgsSrvGetCartesianPositionClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetCartesianPositionClient(Ros2Fanuc_msgsSrvGetCartesianPositionClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvGetCartesianPositionClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetCartesianPosition_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetCartesianPositionServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetCartesianPositionServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvGetCartesianPosition_Response(Ros2Fanuc_msgsSrvGetCartesianPosition_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvGetCartesianPosition_Request;
        using Response = Ros2Fanuc_msgsSrvGetCartesianPosition_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvGetCartesianPositionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_GetCartesianPosition_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetCartesianPosition_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_GetCartesianPosition_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_GetCartesianPosition_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetGroupIOClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetGroupIOClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvGetGroupIO_Request;
        using Response = Ros2Fanuc_msgsSrvGetGroupIO_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvGetGroupIOClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetGroupIOClient(Ros2Fanuc_msgsSrvGetGroupIOClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetGroupIOClient& operator= (Ros2Fanuc_msgsSrvGetGroupIOClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetGroupIOClient(Ros2Fanuc_msgsSrvGetGroupIOClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvGetGroupIOClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetGroupIO_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetGroupIOServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetGroupIOServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvGetGroupIO_Response(Ros2Fanuc_msgsSrvGetGroupIO_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvGetGroupIO_Request;
        using Response = Ros2Fanuc_msgsSrvGetGroupIO_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvGetGroupIOServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_GetGroupIO_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetGroupIO_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_GetGroupIO_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_GetGroupIO_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetNumRegClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetNumRegClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvGetNumReg_Request;
        using Response = Ros2Fanuc_msgsSrvGetNumReg_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvGetNumRegClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetNumRegClient(Ros2Fanuc_msgsSrvGetNumRegClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetNumRegClient& operator= (Ros2Fanuc_msgsSrvGetNumRegClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetNumRegClient(Ros2Fanuc_msgsSrvGetNumRegClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvGetNumRegClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetNumReg_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetNumRegServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetNumRegServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvGetNumReg_Response(Ros2Fanuc_msgsSrvGetNumReg_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvGetNumReg_Request;
        using Response = Ros2Fanuc_msgsSrvGetNumReg_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvGetNumRegServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_GetNumReg_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetNumReg_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_GetNumReg_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_GetNumReg_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetPayloadCompClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetPayloadCompClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvGetPayloadComp_Request;
        using Response = Ros2Fanuc_msgsSrvGetPayloadComp_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvGetPayloadCompClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetPayloadCompClient(Ros2Fanuc_msgsSrvGetPayloadCompClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetPayloadCompClient& operator= (Ros2Fanuc_msgsSrvGetPayloadCompClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetPayloadCompClient(Ros2Fanuc_msgsSrvGetPayloadCompClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvGetPayloadCompClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetPayloadComp_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetPayloadCompServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetPayloadCompServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvGetPayloadComp_Response(Ros2Fanuc_msgsSrvGetPayloadComp_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvGetPayloadComp_Request;
        using Response = Ros2Fanuc_msgsSrvGetPayloadComp_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvGetPayloadCompServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_GetPayloadComp_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetPayloadComp_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_GetPayloadComp_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_GetPayloadComp_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetPayloadIDClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetPayloadIDClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvGetPayloadID_Request;
        using Response = Ros2Fanuc_msgsSrvGetPayloadID_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvGetPayloadIDClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetPayloadIDClient(Ros2Fanuc_msgsSrvGetPayloadIDClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetPayloadIDClient& operator= (Ros2Fanuc_msgsSrvGetPayloadIDClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetPayloadIDClient(Ros2Fanuc_msgsSrvGetPayloadIDClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvGetPayloadIDClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetPayloadID_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetPayloadIDServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetPayloadIDServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvGetPayloadID_Response(Ros2Fanuc_msgsSrvGetPayloadID_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvGetPayloadID_Request;
        using Response = Ros2Fanuc_msgsSrvGetPayloadID_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvGetPayloadIDServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_GetPayloadID_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetPayloadID_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_GetPayloadID_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_GetPayloadID_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetPayloadValueClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetPayloadValueClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvGetPayloadValue_Request;
        using Response = Ros2Fanuc_msgsSrvGetPayloadValue_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvGetPayloadValueClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetPayloadValueClient(Ros2Fanuc_msgsSrvGetPayloadValueClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetPayloadValueClient& operator= (Ros2Fanuc_msgsSrvGetPayloadValueClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetPayloadValueClient(Ros2Fanuc_msgsSrvGetPayloadValueClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvGetPayloadValueClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetPayloadValue_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetPayloadValueServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetPayloadValueServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvGetPayloadValue_Response(Ros2Fanuc_msgsSrvGetPayloadValue_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvGetPayloadValue_Request;
        using Response = Ros2Fanuc_msgsSrvGetPayloadValue_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvGetPayloadValueServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_GetPayloadValue_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetPayloadValue_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_GetPayloadValue_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_GetPayloadValue_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetPosRegClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetPosRegClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvGetPosReg_Request;
        using Response = Ros2Fanuc_msgsSrvGetPosReg_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvGetPosRegClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetPosRegClient(Ros2Fanuc_msgsSrvGetPosRegClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetPosRegClient& operator= (Ros2Fanuc_msgsSrvGetPosRegClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetPosRegClient(Ros2Fanuc_msgsSrvGetPosRegClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvGetPosRegClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetPosReg_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetPosRegServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetPosRegServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvGetPosReg_Response(Ros2Fanuc_msgsSrvGetPosReg_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvGetPosReg_Request;
        using Response = Ros2Fanuc_msgsSrvGetPosReg_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvGetPosRegServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_GetPosReg_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetPosReg_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_GetPosReg_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_GetPosReg_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetTCPSpeedClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetTCPSpeedClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvGetTCPSpeed_Request;
        using Response = Ros2Fanuc_msgsSrvGetTCPSpeed_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvGetTCPSpeedClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetTCPSpeedClient(Ros2Fanuc_msgsSrvGetTCPSpeedClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetTCPSpeedClient& operator= (Ros2Fanuc_msgsSrvGetTCPSpeedClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetTCPSpeedClient(Ros2Fanuc_msgsSrvGetTCPSpeedClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvGetTCPSpeedClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetTCPSpeed_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetTCPSpeedServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetTCPSpeedServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvGetTCPSpeed_Response(Ros2Fanuc_msgsSrvGetTCPSpeed_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvGetTCPSpeed_Request;
        using Response = Ros2Fanuc_msgsSrvGetTCPSpeed_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvGetTCPSpeedServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_GetTCPSpeed_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetTCPSpeed_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_GetTCPSpeed_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_GetTCPSpeed_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetUFrameDataClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetUFrameDataClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvGetUFrameData_Request;
        using Response = Ros2Fanuc_msgsSrvGetUFrameData_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvGetUFrameDataClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetUFrameDataClient(Ros2Fanuc_msgsSrvGetUFrameDataClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetUFrameDataClient& operator= (Ros2Fanuc_msgsSrvGetUFrameDataClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetUFrameDataClient(Ros2Fanuc_msgsSrvGetUFrameDataClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvGetUFrameDataClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetUFrameData_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetUFrameDataServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetUFrameDataServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvGetUFrameData_Response(Ros2Fanuc_msgsSrvGetUFrameData_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvGetUFrameData_Request;
        using Response = Ros2Fanuc_msgsSrvGetUFrameData_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvGetUFrameDataServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_GetUFrameData_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetUFrameData_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_GetUFrameData_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_GetUFrameData_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetUFrameUToolClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetUFrameUToolClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvGetUFrameUTool_Request;
        using Response = Ros2Fanuc_msgsSrvGetUFrameUTool_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvGetUFrameUToolClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetUFrameUToolClient(Ros2Fanuc_msgsSrvGetUFrameUToolClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetUFrameUToolClient& operator= (Ros2Fanuc_msgsSrvGetUFrameUToolClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetUFrameUToolClient(Ros2Fanuc_msgsSrvGetUFrameUToolClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvGetUFrameUToolClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetUFrameUTool_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetUFrameUToolServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetUFrameUToolServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvGetUFrameUTool_Response(Ros2Fanuc_msgsSrvGetUFrameUTool_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvGetUFrameUTool_Request;
        using Response = Ros2Fanuc_msgsSrvGetUFrameUTool_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvGetUFrameUToolServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_GetUFrameUTool_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetUFrameUTool_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_GetUFrameUTool_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_GetUFrameUTool_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetUToolDataClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetUToolDataClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvGetUToolData_Request;
        using Response = Ros2Fanuc_msgsSrvGetUToolData_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvGetUToolDataClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetUToolDataClient(Ros2Fanuc_msgsSrvGetUToolDataClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetUToolDataClient& operator= (Ros2Fanuc_msgsSrvGetUToolDataClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvGetUToolDataClient(Ros2Fanuc_msgsSrvGetUToolDataClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvGetUToolDataClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetUToolData_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvGetUToolDataServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvGetUToolDataServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvGetUToolData_Response(Ros2Fanuc_msgsSrvGetUToolData_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvGetUToolData_Request;
        using Response = Ros2Fanuc_msgsSrvGetUToolData_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvGetUToolDataServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_GetUToolData_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_GetUToolData_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_GetUToolData_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_GetUToolData_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvReadErrorClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvReadErrorClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvReadError_Request;
        using Response = Ros2Fanuc_msgsSrvReadError_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvReadErrorClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvReadErrorClient(Ros2Fanuc_msgsSrvReadErrorClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvReadErrorClient& operator= (Ros2Fanuc_msgsSrvReadErrorClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvReadErrorClient(Ros2Fanuc_msgsSrvReadErrorClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvReadErrorClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_ReadError_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvReadErrorServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvReadErrorServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvReadError_Response(Ros2Fanuc_msgsSrvReadError_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvReadError_Request;
        using Response = Ros2Fanuc_msgsSrvReadError_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvReadErrorServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_ReadError_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_ReadError_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_ReadError_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_ReadError_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvResetClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvResetClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvReset_Request;
        using Response = Ros2Fanuc_msgsSrvReset_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvResetClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvResetClient(Ros2Fanuc_msgsSrvResetClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvResetClient& operator= (Ros2Fanuc_msgsSrvResetClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvResetClient(Ros2Fanuc_msgsSrvResetClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvResetClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_Reset_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvResetServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvResetServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvReset_Response(Ros2Fanuc_msgsSrvReset_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvReset_Request;
        using Response = Ros2Fanuc_msgsSrvReset_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvResetServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_Reset_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_Reset_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_Reset_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_Reset_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetAnalogIOClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetAnalogIOClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvSetAnalogIO_Request;
        using Response = Ros2Fanuc_msgsSrvSetAnalogIO_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvSetAnalogIOClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetAnalogIOClient(Ros2Fanuc_msgsSrvSetAnalogIOClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetAnalogIOClient& operator= (Ros2Fanuc_msgsSrvSetAnalogIOClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetAnalogIOClient(Ros2Fanuc_msgsSrvSetAnalogIOClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvSetAnalogIOClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetAnalogIO_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetAnalogIOServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetAnalogIOServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvSetAnalogIO_Response(Ros2Fanuc_msgsSrvSetAnalogIO_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvSetAnalogIO_Request;
        using Response = Ros2Fanuc_msgsSrvSetAnalogIO_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvSetAnalogIOServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_SetAnalogIO_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetAnalogIO_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_SetAnalogIO_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_SetAnalogIO_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetBoolIOClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetBoolIOClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvSetBoolIO_Request;
        using Response = Ros2Fanuc_msgsSrvSetBoolIO_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvSetBoolIOClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetBoolIOClient(Ros2Fanuc_msgsSrvSetBoolIOClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetBoolIOClient& operator= (Ros2Fanuc_msgsSrvSetBoolIOClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetBoolIOClient(Ros2Fanuc_msgsSrvSetBoolIOClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvSetBoolIOClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetBoolIO_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetBoolIOServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetBoolIOServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvSetBoolIO_Response(Ros2Fanuc_msgsSrvSetBoolIO_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvSetBoolIO_Request;
        using Response = Ros2Fanuc_msgsSrvSetBoolIO_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvSetBoolIOServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_SetBoolIO_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetBoolIO_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_SetBoolIO_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_SetBoolIO_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetGenOverrideClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetGenOverrideClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvSetGenOverride_Request;
        using Response = Ros2Fanuc_msgsSrvSetGenOverride_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvSetGenOverrideClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetGenOverrideClient(Ros2Fanuc_msgsSrvSetGenOverrideClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetGenOverrideClient& operator= (Ros2Fanuc_msgsSrvSetGenOverrideClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetGenOverrideClient(Ros2Fanuc_msgsSrvSetGenOverrideClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvSetGenOverrideClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetGenOverride_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetGenOverrideServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetGenOverrideServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvSetGenOverride_Response(Ros2Fanuc_msgsSrvSetGenOverride_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvSetGenOverride_Request;
        using Response = Ros2Fanuc_msgsSrvSetGenOverride_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvSetGenOverrideServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_SetGenOverride_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetGenOverride_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_SetGenOverride_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_SetGenOverride_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetGroupIOClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetGroupIOClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvSetGroupIO_Request;
        using Response = Ros2Fanuc_msgsSrvSetGroupIO_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvSetGroupIOClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetGroupIOClient(Ros2Fanuc_msgsSrvSetGroupIOClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetGroupIOClient& operator= (Ros2Fanuc_msgsSrvSetGroupIOClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetGroupIOClient(Ros2Fanuc_msgsSrvSetGroupIOClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvSetGroupIOClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetGroupIO_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetGroupIOServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetGroupIOServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvSetGroupIO_Response(Ros2Fanuc_msgsSrvSetGroupIO_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvSetGroupIO_Request;
        using Response = Ros2Fanuc_msgsSrvSetGroupIO_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvSetGroupIOServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_SetGroupIO_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetGroupIO_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_SetGroupIO_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_SetGroupIO_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetNumRegClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetNumRegClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvSetNumReg_Request;
        using Response = Ros2Fanuc_msgsSrvSetNumReg_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvSetNumRegClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetNumRegClient(Ros2Fanuc_msgsSrvSetNumRegClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetNumRegClient& operator= (Ros2Fanuc_msgsSrvSetNumRegClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetNumRegClient(Ros2Fanuc_msgsSrvSetNumRegClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvSetNumRegClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetNumReg_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetNumRegServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetNumRegServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvSetNumReg_Response(Ros2Fanuc_msgsSrvSetNumReg_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvSetNumReg_Request;
        using Response = Ros2Fanuc_msgsSrvSetNumReg_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvSetNumRegServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_SetNumReg_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetNumReg_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_SetNumReg_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_SetNumReg_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetPayloadCompClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetPayloadCompClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvSetPayloadComp_Request;
        using Response = Ros2Fanuc_msgsSrvSetPayloadComp_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvSetPayloadCompClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetPayloadCompClient(Ros2Fanuc_msgsSrvSetPayloadCompClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetPayloadCompClient& operator= (Ros2Fanuc_msgsSrvSetPayloadCompClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetPayloadCompClient(Ros2Fanuc_msgsSrvSetPayloadCompClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvSetPayloadCompClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetPayloadComp_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetPayloadCompServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetPayloadCompServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvSetPayloadComp_Response(Ros2Fanuc_msgsSrvSetPayloadComp_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvSetPayloadComp_Request;
        using Response = Ros2Fanuc_msgsSrvSetPayloadComp_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvSetPayloadCompServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_SetPayloadComp_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetPayloadComp_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_SetPayloadComp_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_SetPayloadComp_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetPayloadIDClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetPayloadIDClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvSetPayloadID_Request;
        using Response = Ros2Fanuc_msgsSrvSetPayloadID_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvSetPayloadIDClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetPayloadIDClient(Ros2Fanuc_msgsSrvSetPayloadIDClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetPayloadIDClient& operator= (Ros2Fanuc_msgsSrvSetPayloadIDClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetPayloadIDClient(Ros2Fanuc_msgsSrvSetPayloadIDClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvSetPayloadIDClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetPayloadID_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetPayloadIDServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetPayloadIDServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvSetPayloadID_Response(Ros2Fanuc_msgsSrvSetPayloadID_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvSetPayloadID_Request;
        using Response = Ros2Fanuc_msgsSrvSetPayloadID_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvSetPayloadIDServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_SetPayloadID_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetPayloadID_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_SetPayloadID_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_SetPayloadID_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetPayloadValueClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetPayloadValueClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvSetPayloadValue_Request;
        using Response = Ros2Fanuc_msgsSrvSetPayloadValue_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvSetPayloadValueClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetPayloadValueClient(Ros2Fanuc_msgsSrvSetPayloadValueClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetPayloadValueClient& operator= (Ros2Fanuc_msgsSrvSetPayloadValueClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetPayloadValueClient(Ros2Fanuc_msgsSrvSetPayloadValueClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvSetPayloadValueClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetPayloadValue_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetPayloadValueServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetPayloadValueServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvSetPayloadValue_Response(Ros2Fanuc_msgsSrvSetPayloadValue_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvSetPayloadValue_Request;
        using Response = Ros2Fanuc_msgsSrvSetPayloadValue_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvSetPayloadValueServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_SetPayloadValue_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetPayloadValue_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_SetPayloadValue_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_SetPayloadValue_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetPosRegClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetPosRegClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvSetPosReg_Request;
        using Response = Ros2Fanuc_msgsSrvSetPosReg_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvSetPosRegClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetPosRegClient(Ros2Fanuc_msgsSrvSetPosRegClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetPosRegClient& operator= (Ros2Fanuc_msgsSrvSetPosRegClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetPosRegClient(Ros2Fanuc_msgsSrvSetPosRegClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvSetPosRegClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetPosReg_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetPosRegServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetPosRegServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvSetPosReg_Response(Ros2Fanuc_msgsSrvSetPosReg_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvSetPosReg_Request;
        using Response = Ros2Fanuc_msgsSrvSetPosReg_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvSetPosRegServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_SetPosReg_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetPosReg_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_SetPosReg_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_SetPosReg_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetUFrameDataClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetUFrameDataClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvSetUFrameData_Request;
        using Response = Ros2Fanuc_msgsSrvSetUFrameData_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvSetUFrameDataClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetUFrameDataClient(Ros2Fanuc_msgsSrvSetUFrameDataClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetUFrameDataClient& operator= (Ros2Fanuc_msgsSrvSetUFrameDataClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetUFrameDataClient(Ros2Fanuc_msgsSrvSetUFrameDataClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvSetUFrameDataClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetUFrameData_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetUFrameDataServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetUFrameDataServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvSetUFrameData_Response(Ros2Fanuc_msgsSrvSetUFrameData_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvSetUFrameData_Request;
        using Response = Ros2Fanuc_msgsSrvSetUFrameData_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvSetUFrameDataServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_SetUFrameData_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetUFrameData_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_SetUFrameData_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_SetUFrameData_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetUFrameUToolClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetUFrameUToolClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvSetUFrameUTool_Request;
        using Response = Ros2Fanuc_msgsSrvSetUFrameUTool_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvSetUFrameUToolClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetUFrameUToolClient(Ros2Fanuc_msgsSrvSetUFrameUToolClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetUFrameUToolClient& operator= (Ros2Fanuc_msgsSrvSetUFrameUToolClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetUFrameUToolClient(Ros2Fanuc_msgsSrvSetUFrameUToolClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvSetUFrameUToolClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetUFrameUTool_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetUFrameUToolServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetUFrameUToolServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvSetUFrameUTool_Response(Ros2Fanuc_msgsSrvSetUFrameUTool_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvSetUFrameUTool_Request;
        using Response = Ros2Fanuc_msgsSrvSetUFrameUTool_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvSetUFrameUToolServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_SetUFrameUTool_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetUFrameUTool_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_SetUFrameUTool_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_SetUFrameUTool_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetUToolDataClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetUToolDataClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvSetUToolData_Request;
        using Response = Ros2Fanuc_msgsSrvSetUToolData_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvSetUToolDataClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetUToolDataClient(Ros2Fanuc_msgsSrvSetUToolDataClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetUToolDataClient& operator= (Ros2Fanuc_msgsSrvSetUToolDataClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSetUToolDataClient(Ros2Fanuc_msgsSrvSetUToolDataClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvSetUToolDataClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetUToolData_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSetUToolDataServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSetUToolDataServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvSetUToolData_Response(Ros2Fanuc_msgsSrvSetUToolData_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvSetUToolData_Request;
        using Response = Ros2Fanuc_msgsSrvSetUToolData_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvSetUToolDataServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_SetUToolData_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SetUToolData_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_SetUToolData_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_SetUToolData_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSwitchControlStateClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSwitchControlStateClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Fanuc_msgsSrvSwitchControlState_Request;
        using Response = Ros2Fanuc_msgsSrvSwitchControlState_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Fanuc_msgsSrvSwitchControlStateClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSwitchControlStateClient(Ros2Fanuc_msgsSrvSwitchControlStateClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSwitchControlStateClient& operator= (Ros2Fanuc_msgsSrvSwitchControlStateClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Fanuc_msgsSrvSwitchControlStateClient(Ros2Fanuc_msgsSrvSwitchControlStateClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Fanuc_msgsSrvSwitchControlStateClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SwitchControlState_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Fanuc_msgsSrvSwitchControlStateServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Fanuc_msgsSrvSwitchControlStateServer : public ServerOwners
    {
        using Handler = std::function<Ros2Fanuc_msgsSrvSwitchControlState_Response(Ros2Fanuc_msgsSrvSwitchControlState_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Fanuc_msgsSrvSwitchControlState_Request;
        using Response = Ros2Fanuc_msgsSrvSwitchControlState_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Fanuc_msgsSrvSwitchControlStateServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_fanuc_msgs_srv_SwitchControlState_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_fanuc_msgs_srv_SwitchControlState_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_fanuc_msgs_srv_SwitchControlState_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_fanuc_msgs_srv_SwitchControlState_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Rmi_msgsSrvAddCallClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Rmi_msgsSrvAddCallClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Rmi_msgsSrvAddCall_Request;
        using Response = Ros2Rmi_msgsSrvAddCall_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Rmi_msgsSrvAddCallClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvAddCallClient(Ros2Rmi_msgsSrvAddCallClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvAddCallClient& operator= (Ros2Rmi_msgsSrvAddCallClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvAddCallClient(Ros2Rmi_msgsSrvAddCallClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Rmi_msgsSrvAddCallClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_rmi_msgs_srv_AddCall_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Rmi_msgsSrvAddCallServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Rmi_msgsSrvAddCallServer : public ServerOwners
    {
        using Handler = std::function<Ros2Rmi_msgsSrvAddCall_Response(Ros2Rmi_msgsSrvAddCall_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Rmi_msgsSrvAddCall_Request;
        using Response = Ros2Rmi_msgsSrvAddCall_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Rmi_msgsSrvAddCallServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_rmi_msgs_srv_AddCall_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_rmi_msgs_srv_AddCall_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_rmi_msgs_srv_AddCall_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_rmi_msgs_srv_AddCall_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Rmi_msgsSrvAddMotionInstructionClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Rmi_msgsSrvAddMotionInstructionClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Rmi_msgsSrvAddMotionInstruction_Request;
        using Response = Ros2Rmi_msgsSrvAddMotionInstruction_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Rmi_msgsSrvAddMotionInstructionClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvAddMotionInstructionClient(Ros2Rmi_msgsSrvAddMotionInstructionClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvAddMotionInstructionClient& operator= (Ros2Rmi_msgsSrvAddMotionInstructionClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvAddMotionInstructionClient(Ros2Rmi_msgsSrvAddMotionInstructionClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Rmi_msgsSrvAddMotionInstructionClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_rmi_msgs_srv_AddMotionInstruction_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Rmi_msgsSrvAddMotionInstructionServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Rmi_msgsSrvAddMotionInstructionServer : public ServerOwners
    {
        using Handler = std::function<Ros2Rmi_msgsSrvAddMotionInstruction_Response(Ros2Rmi_msgsSrvAddMotionInstruction_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Rmi_msgsSrvAddMotionInstruction_Request;
        using Response = Ros2Rmi_msgsSrvAddMotionInstruction_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Rmi_msgsSrvAddMotionInstructionServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_rmi_msgs_srv_AddMotionInstruction_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_rmi_msgs_srv_AddMotionInstruction_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_rmi_msgs_srv_AddMotionInstruction_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_rmi_msgs_srv_AddMotionInstruction_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Rmi_msgsSrvAddSetPayloadClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Rmi_msgsSrvAddSetPayloadClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Rmi_msgsSrvAddSetPayload_Request;
        using Response = Ros2Rmi_msgsSrvAddSetPayload_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Rmi_msgsSrvAddSetPayloadClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvAddSetPayloadClient(Ros2Rmi_msgsSrvAddSetPayloadClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvAddSetPayloadClient& operator= (Ros2Rmi_msgsSrvAddSetPayloadClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvAddSetPayloadClient(Ros2Rmi_msgsSrvAddSetPayloadClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Rmi_msgsSrvAddSetPayloadClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_rmi_msgs_srv_AddSetPayload_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Rmi_msgsSrvAddSetPayloadServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Rmi_msgsSrvAddSetPayloadServer : public ServerOwners
    {
        using Handler = std::function<Ros2Rmi_msgsSrvAddSetPayload_Response(Ros2Rmi_msgsSrvAddSetPayload_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Rmi_msgsSrvAddSetPayload_Request;
        using Response = Ros2Rmi_msgsSrvAddSetPayload_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Rmi_msgsSrvAddSetPayloadServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_rmi_msgs_srv_AddSetPayload_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_rmi_msgs_srv_AddSetPayload_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_rmi_msgs_srv_AddSetPayload_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_rmi_msgs_srv_AddSetPayload_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Rmi_msgsSrvAddSetUFrameClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Rmi_msgsSrvAddSetUFrameClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Rmi_msgsSrvAddSetUFrame_Request;
        using Response = Ros2Rmi_msgsSrvAddSetUFrame_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Rmi_msgsSrvAddSetUFrameClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvAddSetUFrameClient(Ros2Rmi_msgsSrvAddSetUFrameClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvAddSetUFrameClient& operator= (Ros2Rmi_msgsSrvAddSetUFrameClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvAddSetUFrameClient(Ros2Rmi_msgsSrvAddSetUFrameClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Rmi_msgsSrvAddSetUFrameClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_rmi_msgs_srv_AddSetUFrame_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Rmi_msgsSrvAddSetUFrameServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Rmi_msgsSrvAddSetUFrameServer : public ServerOwners
    {
        using Handler = std::function<Ros2Rmi_msgsSrvAddSetUFrame_Response(Ros2Rmi_msgsSrvAddSetUFrame_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Rmi_msgsSrvAddSetUFrame_Request;
        using Response = Ros2Rmi_msgsSrvAddSetUFrame_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Rmi_msgsSrvAddSetUFrameServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_rmi_msgs_srv_AddSetUFrame_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_rmi_msgs_srv_AddSetUFrame_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_rmi_msgs_srv_AddSetUFrame_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_rmi_msgs_srv_AddSetUFrame_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Rmi_msgsSrvAddSetUToolClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Rmi_msgsSrvAddSetUToolClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Rmi_msgsSrvAddSetUTool_Request;
        using Response = Ros2Rmi_msgsSrvAddSetUTool_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Rmi_msgsSrvAddSetUToolClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvAddSetUToolClient(Ros2Rmi_msgsSrvAddSetUToolClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvAddSetUToolClient& operator= (Ros2Rmi_msgsSrvAddSetUToolClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvAddSetUToolClient(Ros2Rmi_msgsSrvAddSetUToolClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Rmi_msgsSrvAddSetUToolClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_rmi_msgs_srv_AddSetUTool_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Rmi_msgsSrvAddSetUToolServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Rmi_msgsSrvAddSetUToolServer : public ServerOwners
    {
        using Handler = std::function<Ros2Rmi_msgsSrvAddSetUTool_Response(Ros2Rmi_msgsSrvAddSetUTool_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Rmi_msgsSrvAddSetUTool_Request;
        using Response = Ros2Rmi_msgsSrvAddSetUTool_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Rmi_msgsSrvAddSetUToolServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_rmi_msgs_srv_AddSetUTool_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_rmi_msgs_srv_AddSetUTool_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_rmi_msgs_srv_AddSetUTool_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_rmi_msgs_srv_AddSetUTool_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Rmi_msgsSrvAddWaitDINClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Rmi_msgsSrvAddWaitDINClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Rmi_msgsSrvAddWaitDIN_Request;
        using Response = Ros2Rmi_msgsSrvAddWaitDIN_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Rmi_msgsSrvAddWaitDINClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvAddWaitDINClient(Ros2Rmi_msgsSrvAddWaitDINClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvAddWaitDINClient& operator= (Ros2Rmi_msgsSrvAddWaitDINClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvAddWaitDINClient(Ros2Rmi_msgsSrvAddWaitDINClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Rmi_msgsSrvAddWaitDINClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_rmi_msgs_srv_AddWaitDIN_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Rmi_msgsSrvAddWaitDINServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Rmi_msgsSrvAddWaitDINServer : public ServerOwners
    {
        using Handler = std::function<Ros2Rmi_msgsSrvAddWaitDIN_Response(Ros2Rmi_msgsSrvAddWaitDIN_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Rmi_msgsSrvAddWaitDIN_Request;
        using Response = Ros2Rmi_msgsSrvAddWaitDIN_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Rmi_msgsSrvAddWaitDINServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_rmi_msgs_srv_AddWaitDIN_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_rmi_msgs_srv_AddWaitDIN_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_rmi_msgs_srv_AddWaitDIN_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_rmi_msgs_srv_AddWaitDIN_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Rmi_msgsSrvAddWaitTimeClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Rmi_msgsSrvAddWaitTimeClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Rmi_msgsSrvAddWaitTime_Request;
        using Response = Ros2Rmi_msgsSrvAddWaitTime_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Rmi_msgsSrvAddWaitTimeClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvAddWaitTimeClient(Ros2Rmi_msgsSrvAddWaitTimeClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvAddWaitTimeClient& operator= (Ros2Rmi_msgsSrvAddWaitTimeClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvAddWaitTimeClient(Ros2Rmi_msgsSrvAddWaitTimeClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Rmi_msgsSrvAddWaitTimeClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_rmi_msgs_srv_AddWaitTime_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Rmi_msgsSrvAddWaitTimeServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Rmi_msgsSrvAddWaitTimeServer : public ServerOwners
    {
        using Handler = std::function<Ros2Rmi_msgsSrvAddWaitTime_Response(Ros2Rmi_msgsSrvAddWaitTime_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Rmi_msgsSrvAddWaitTime_Request;
        using Response = Ros2Rmi_msgsSrvAddWaitTime_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Rmi_msgsSrvAddWaitTimeServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_rmi_msgs_srv_AddWaitTime_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_rmi_msgs_srv_AddWaitTime_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_rmi_msgs_srv_AddWaitTime_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_rmi_msgs_srv_AddWaitTime_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Rmi_msgsSrvCallCommandClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Rmi_msgsSrvCallCommandClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Rmi_msgsSrvCallCommand_Request;
        using Response = Ros2Rmi_msgsSrvCallCommand_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Rmi_msgsSrvCallCommandClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvCallCommandClient(Ros2Rmi_msgsSrvCallCommandClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvCallCommandClient& operator= (Ros2Rmi_msgsSrvCallCommandClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Rmi_msgsSrvCallCommandClient(Ros2Rmi_msgsSrvCallCommandClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Rmi_msgsSrvCallCommandClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_rmi_msgs_srv_CallCommand_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Rmi_msgsSrvCallCommandServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Rmi_msgsSrvCallCommandServer : public ServerOwners
    {
        using Handler = std::function<Ros2Rmi_msgsSrvCallCommand_Response(Ros2Rmi_msgsSrvCallCommand_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Rmi_msgsSrvCallCommand_Request;
        using Response = Ros2Rmi_msgsSrvCallCommand_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Rmi_msgsSrvCallCommandServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_rmi_msgs_srv_CallCommand_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_rmi_msgs_srv_CallCommand_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_rmi_msgs_srv_CallCommand_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_rmi_msgs_srv_CallCommand_respond(&respond_, ticket, &response).error;
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Std_srvsSrvTriggerClient.
     * @details This object owns the single service-call capabilities and borrows only the immutable backend.
     * It cannot be copied or moved; context/goal storage stays stable through every call. The caller
     * serializes access and observes explicit cleanup reports before destruction. Callbacks borrow values
     * only during invocation; no hidden thread or retry is created.
     */
    class Ros2Std_srvsSrvTriggerClient
    {
        roswasmc_context context_;
        roswasmc_capability cap_{};
        uint32_t error_{};

    public:
        using Request = Ros2Std_srvsSrvTrigger_Request;
        using Response = Ros2Std_srvsSrvTrigger_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param selected Exact operator-granted alias bytes, borrowed through this synchronous open.
         */
        Ros2Std_srvsSrvTriggerClient(roswasmc_context const& context, std::string_view selected) : context_{context.backend}
        {
            roswasmc_capability_init(&cap_, &context_);
            error_ = roswasmc_check_operation(&context_, ROSWASMC_SERVICE_CALL);
            if(!error_ && (!context_.backend->abi_version || context_.backend->abi_version() != 1))
                error_ = 95;
            if(!error_ && !roswasmc_action_bundle_alias(alias(selected)))
                error_ = UWVM_ROS_INVALID;
            if(!error_)
                error_ = roswasmc_open(&cap_, selected.data(), selected.size());
        }

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Std_srvsSrvTriggerClient(Ros2Std_srvsSrvTriggerClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Std_srvsSrvTriggerClient& operator= (Ros2Std_srvsSrvTriggerClient const&) = delete;

        /**
         * @brief Refuse copying or moving an owning endpoint.
         * @details Opaque capabilities and stable context/goal storage have one logical owner. Duplicating
         * handles or relocating their backing object is a compile-time error.
         */
        Ros2Std_srvsSrvTriggerClient(Ros2Std_srvsSrvTriggerClient&&) = delete;

        /**
         * @brief Attempt ordinary retirement of remaining owned roles on destruction.
         * @details The destructor cannot report cleanup errors. Call close or revoke explicitly and retain
         * its status before destruction. The immutable backend must remain alive. Destruction never adds
         * revocation, stronger cancellation, retries or a physical-stop guarantee.
         */
        ~Ros2Std_srvsSrvTriggerClient()
        {
            if(roswasmc_is_open(&cap_))
                roswasmc_close(&cap_);
        }

        /**
         * @brief Read initialization or retired-owner status without an import.
         * @details This is local owner state rather than native connection health or controller admission. A
         * closed object is not reopened. Preserve later operation and cleanup errors independently.
         * @return The first initialization error, zero while locally open, or 9 after retirement.
         */
        uint32_t error() const noexcept
        {
            return error_ ? error_ : is_open() ? 0 : 9;
        }

        /**
         * @brief Inspect whether this object still owns a local role.
         * @details No import, permission lookup or controller health check occurs. A true result does not
         * prove a goal completed or a physical controller is connected.
         * @return Local ownership state.
         */
        bool is_open() const noexcept
        {
            return roswasmc_is_open(&cap_);
        }

        /**
         * @brief Perform one whole typed service request and decode its complete response.
         * @details Request and response storage are borrowed through this synchronous call. Paired canonical
         * bounds and all original fields remain intact. On transport success inspect native response fields
         * for controller refusal. An uncertain timeout or disconnect is not replayed.
         * @param request Complete initialized request borrowed until return.
         * @param response Caller-owned complete response; inspect after a successful result.
         * @return Original transport/codec status and length facts, without replacing controller fields.
         */
        roswasmc_result call(Request const& request, Response& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_std_srvs_srv_Trigger_call(&cap_, &request, &response);
        }

        /**
         * @brief Retire owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t close()
        {
            return roswasmc_close(&cap_);
        }

        /**
         * @brief Revoke owned resources once and preserve cleanup status.
         * @details The immutable backend and owner storage must remain alive through synchronous cleanup.
         * Store this status separately from an earlier operation error. No automatic reopen, stronger
         * cancellation, effect replay or physical-stop claim occurs.
         * @return Original retirement status.
         */
        uint32_t revoke()
        {
            return roswasmc_revoke(&cap_);
        }
    };

    /**
     * @brief Own the typed endpoint lifecycle for Ros2Std_srvsSrvTriggerServer.
     * @details This object owns the separate advertisement/response capabilities and borrows only the
     * immutable backend. It cannot be copied or moved; context/goal storage stays stable through every call.
     * The caller serializes access and observes explicit cleanup reports before destruction. Callbacks
     * borrow values only during invocation; no hidden thread or retry is created.
     */
    class Ros2Std_srvsSrvTriggerServer : public ServerOwners
    {
        using Handler = std::function<Ros2Std_srvsSrvTrigger_Response(Ros2Std_srvsSrvTrigger_Request const&)>;
        std::shared_ptr<Handler> handler_;

    public:
        using Request = Ros2Std_srvsSrvTrigger_Request;
        using Response = Ros2Std_srvsSrvTrigger_Response;

        /**
         * @brief Acquire the explicitly selected typed endpoint roles once.
         * @details The object owns its capabilities and copies only the backend pointer into stable context
         * storage. Alias views are not retained after synchronous acquisition. Inspect error() before use
         * and construction_cleanup overloads where exposed for rollback evidence. All operations on this
         * owner must be serialized by the caller; construction creates no thread, deadline or implicit
         * grant.
         * @param context Borrowed for construction; its immutable backend must outlive this owner.
         * @param advertise Distinct advertisement alias bytes, borrowed through construction.
         * @param respond Distinct response alias bytes, borrowed through construction.
         */
        Ros2Std_srvsSrvTriggerServer(roswasmc_context const& context, std::string_view advertise, std::string_view respond) :
            ServerOwners{context, advertise, respond, false}
        {
        }

        /**
         * @brief Replace the owned service callback for the next executor pass.
         * @details The current shared functor remains alive through its pass, including mutable state.
         * Request references are borrowed only during invocation. Allocation and callback exceptions
         * propagate; the pass guard restores reentrancy state. Registration performs no native request.
         * @param handler Owned callable moved into shared callback storage; empty disables dispatch.
         */
        void on_request(Handler handler)
        {
            handler_ = handler ? std::make_shared<Handler>(std::move(handler)) : nullptr;
        }

        /**
         * @brief Poll one whole native request/goal.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @param ticket Native service ticket output on success.
         * @param request Complete caller-owned request output.
         * @return Original poll/codec result.
         */
        roswasmc_result poll_once(uint64_t& ticket, Request& request)
        {
            if(busy_)
                return roswasmc_action_bundle_failure(17);
            if(error())
                return roswasmc_action_bundle_failure(error());
            Pass guard{busy_};
            return roswasmc_bounded_2_std_srvs_srv_Trigger_poll(&advertise_, &ticket, &request);
        }

        /**
         * @brief Respond once to the exact native service ticket.
         * @details The complete response is borrowed through encoding and the synchronous import. The host
         * validates ticket/type/role ownership. Do not repeat an uncertain response or respond again to a
         * request already completed by process_once().
         * @param ticket Nonzero pending native service ticket.
         * @param response Complete initialized response.
         * @return Original response/codec result.
         */
        roswasmc_result respond(uint64_t ticket, Response const& response)
        {
            if(error())
                return roswasmc_action_bundle_failure(error());
            return roswasmc_bounded_2_std_srvs_srv_Trigger_respond(&respond_, ticket, &response);
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t poll_once()
        {
            return process_once();
        }

        /**
         * @brief Perform one bounded poll/decode/callback/respond pass.
         * @details The caller serializes this owner and keeps the backend alive. Idle 11 is returned
         * unchanged. Nested polling or retirement during a guarded callback is refused with 17. No retry,
         * timer or background executor is started. Callback arguments are borrowed until return; an
         * exception restores the guard and propagates. Earlier effects are never replayed after a later
         * failure.
         * @return First original operation/codec status, or zero after the selected effects.
         */
        uint32_t process_once()
        {
            if(busy_)
                return 17;
            if(error())
                return error();
            auto handler = handler_;
            if(!handler)
                return 22;
            Pass guard{busy_};
            uint64_t ticket{};
            Request request{};
            auto r = roswasmc_bounded_2_std_srvs_srv_Trigger_poll(&advertise_, &ticket, &request);
            if(r.error)
                return r.error;
            Response response = (*handler)(request);
            return roswasmc_bounded_2_std_srvs_srv_Trigger_respond(&respond_, ticket, &response).error;
        }
    };
}  // namespace uwvm_custom
