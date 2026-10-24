/* SPDX-License-Identifier: Apache-2.0
 * Native-only Kortex API 2.8.0 application owner. Never link into a Guest or
 * the Runtime. Real SDK clients, routers, authentication and cyclic real-time
 * control stay in the separately supervised native service domain.
 */
#ifndef UWVM_KINOVA_KORTEX_NATIVE_HPP
#define UWVM_KINOVA_KORTEX_NATIVE_HPP
#include <BaseClientRpc.h>
#include <BaseCyclicClientRpc.h>
#include <ControlConfigClientRpc.h>
#include <RouterClient.h>
#include <array>
#include <chrono>
#include <cstdint>
#include <exception>
#include <stdexcept>
#include <cmath>
#include <mutex>

namespace uwvm_kinova
{
    /**
     * @brief Select one independently granted original Kortex API 2.8.0 operation.
     * @details Values index KortexNativePolicy::enabled; they are local policy
     * identifiers, not wire function IDs. A zero-initialized policy enables none.
     * The count sentinel is never a callable operation. Adding a grant does not
     * authenticate a client, establish robot readiness, or grant Guest authority.
     * @see KortexNativePolicy KortexNative
     */
    enum class KortexOperation : unsigned
    {
        /** @brief Read the original actuator count; no count or model is inferred.
         * @details Independent local grant index. @see KortexNative::actuator_count */
        actuator_count,
        /** @brief Read one full cyclic sample without starting a control loop.
         * @details Independent local grant index. @see KortexNative::feedback */
        feedback,
        /** @brief Observe the original servoing mode without changing it.
         * @details Independent local grant index. @see KortexNative::servoing_mode */
        servoing_read,
        /** @brief Select the admitted original single-level servoing mode.
         * @details Does not enable low-level control. @see KortexNative::set_servoing_mode */
        servoing_change,
        /** @brief Attempt original fault clearing without implicit resume.
         * @details Separate from readiness or motion grants. @see KortexNative::clear_faults */
        fault_clear,
        /** @brief Attempt original Base Stop, independently of action stop.
         * @details A returned RPC does not prove standstill. @see KortexNative::stop */
        stop,
        /** @brief Submit a complete original gripper command under explicit mode bounds.
         * @details No automatic open/close is performed. @see KortexNative::gripper */
        gripper,
        /** @brief Read a complete original stored action without executing it.
         * @details Native action identity remains original. @see KortexNative::action */
        action_read,
        /** @brief Submit one complete original action under its separate native grant.
         * @details Submission is not action completion. @see KortexNative::execute_action */
        action_execute,
        /** @brief Validate a complete original waypoint list without executing it.
         * @details A validation reply is not a motion grant. @see KortexNative::validate_waypoints */
        waypoint_validate,
        /** @brief Submit a complete original waypoint list once.
         * @details No implicit validation/replay/completion wait. @see KortexNative::execute_waypoints */
        waypoint_execute,
        /** @brief Observe the complete original tool configuration.
         * @details Does not change deployment tool bounds. @see KortexNative::tool_configuration */
        tool_read,
        /** @brief Change the original tool configuration within explicit native-unit bounds.
         * @details Separate from reading or motion. @see KortexNative::set_tool_configuration */
        tool_change,
        /** @brief Read the full original arm-state response.
         * @details An observation grants no state transition. @see KortexNative::arm_state */
        arm_state,
        /** @brief Pause original global action control under exclusive native ownership.
         * @details Separate from local retirement. @see KortexNative::pause_action */
        action_pause,
        /** @brief Resume original global action control under exclusive native ownership.
         * @details No startup or fault-recovery resume. @see KortexNative::resume_action */
        action_resume,
        /** @brief Stop original global action control under exclusive native ownership.
         * @details Separate from Base Stop and capability close. @see KortexNative::stop_action */
        action_stop,
        /** @brief Size/sentinel for the local grant array, never an RPC.
         * @details Refused as an operation selector. @see KortexNativePolicy::enabled */
        count
    };
    /**
     * @brief Describe local admission and knowledge of one native RPC outcome.
     * @details unused is an empty history slot; reserved precedes the RPC boundary;
     * unknown means the original call may have had an effect; returned means a
     * complete reply passed the selected size/deadline checks. returned does not
     * establish action completion or physical robot state. No state permits replay.
     * @see KortexReceipt KortexNative::receipts_native_only
     */
    enum class Delivery
    {
        /** @brief Empty local history slot. @details No call is represented. @see KortexReceipt */
        unused,
        /** @brief Reserved non-reusing correlation before native entry.
         * @details Reservation alone proves no original RPC result. @see KortexReceipt */
        reserved,
        /** @brief Native entry may have had an effect with no accepted complete reply.
         * @details Never authorizes replay or guessed cleanup. @see KortexReceipt */
        unknown,
        /** @brief Original reply passed local size and deadline checks.
         * @details Does not establish physical/action completion. @see KortexReceipt */
        returned
    };

    /**
     * @brief Retain a non-reusing correlation and the knowledge of its RPC outcome.
     * @details correlation is the caller's full nonzero uint64 identifier; operation
     * names its original API role. error preserves the actual exception, including
     * unknown outcomes. Copies own their exception_ptr, contain no client, and
     * confer no permission. Inspect only in the trusted native service domain.
     * @see Delivery KortexNative::receipts_native_only
     */
    struct KortexReceipt
    {
        /** @brief Exact local uint64 correlation,0 only for an unused slot.
         * @details Nonzero values never recycle during the owner's lifetime; this
         * is not an SDK message/action/subscription identifier. @see KortexNative */
        std::uint64_t correlation = 0;
        /** @brief Original operation role associated with this local history entry.
         * @details Defaults to the noncallable count sentinel, conferring no grant.
         * @see KortexOperation KortexNativePolicy::enabled */
        KortexOperation operation = KortexOperation::count;
        /** @brief Independent knowledge of the original RPC boundary/result.
         * @details Inspect together with error; a later local return-copy failure
         * may coexist with a reply already marked returned. @see Delivery */
        Delivery delivery = Delivery::unused;
        /** @brief Retained original exception when an admitted call throws.
         * @details Empty by default. Copies share exception ownership, retain no
         * client and authorize no retry/recovery/physical effect. @see Delivery */
        std::exception_ptr error;
    };

    /**
     * @brief Supply explicit, finite grants from trusted native bootstrap.
     * @details authenticated_owner is compared by pointer identity and must remain
     * alive and unique until this owner is destroyed. enabled selects separate
     * operation roles. maximum_rpc_ms is 0 (deny) or 1..5000 milliseconds;
     * maximum_message_bytes is 0 (deny) or 1..65536 serialized protobuf bytes.
     * expires_at uses std::chrono::steady_clock, independently of robot timestamps.
     * Tool bounds use the original ControlConfig field units without conversion:
     * mass is nonnegative and bounded above; translation and rotation bounds apply
     * to each component's absolute value. Bootstrap must select model-correct units
     * and limits; zero or nonfinite tool bounds refuse tool changes. The exclusive
     * flag is an independently established deployment ownership fact for global
     * PauseAction/ResumeAction/StopAction, not a Guest request. This value is copied
     * on construction and cannot be renewed through an RPC. Default grants are empty.
     * @see valid_tool_configuration KortexNative::KortexNative
     */
    struct KortexNativePolicy
    {
        /** @brief Borrow a trusted native identity token, null denying every call.
         * @details Pointer comparison only: bootstrap must authenticate the owner
         * independently and keep its address live/unique for this object's lifetime.
         * No Guest request field is accepted as identity. @see KortexNative */
        void const* authenticated_owner = nullptr;
        /** @brief Independent original operation grants, all false by default.
         * @details Indexed by KortexOperation before count. Setting a bit authenticates
         * no channel and does not establish readiness or another operation's grant.
         * @see KortexOperation exclusive_native_action_control */
        std::array<bool, static_cast<unsigned>(KortexOperation::count)> enabled{};
        /** @brief Maximum original SDK RPC timeout in milliseconds,0 denying calls.
         * @details Admitted range1..5000; copied at construction. This bounds the
         * selected synchronous RPC wait, not physical motion duration. @see expires_at */
        unsigned maximum_rpc_ms = 0;
        /** @brief Maximum complete serialized original protobuf bytes,0 denying calls.
         * @details Admitted range1..65536 for represented requests/replies. This is
         * not a bound on protobuf allocator/transport overhead. @see KortexNative */
        unsigned maximum_message_bytes = 0;
        /** @brief Absolute local steady-clock expiry for these copied operation grants.
         * @details Default epoch is expired. Each deadline must remain within this
         * lifetime; no robot/ROS/wall clock conversion or renewal occurs. @see maximum_rpc_ms */
        std::chrono::steady_clock::time_point expires_at{};
        /** @brief Positive finite upper bound on original ControlConfig tool_mass.
         * @details Uses that exact original field's native units without conversion.
         * Actual mass must be finite/nonnegative;0 denies changes. Bootstrap selects
         * the model-correct limit. @see valid_tool_configuration */
        double maximum_tool_mass = 0;
        /** @brief Positive finite absolute component limit for original tool translations.
         * @details Applies to transform and mass-center x/y/z in their original API
         * units;0 denies changes. No SI conversion or model maximum is inferred.
         * @see valid_tool_configuration */
        double maximum_tool_translation = 0;
        /** @brief Positive finite absolute component limit for original tool rotations.
         * @details Applies to original theta_x/theta_y/theta_z units;0 denies changes.
         * Bootstrap supplies exact native-unit/model limits. @see valid_tool_configuration */
        double maximum_tool_rotation = 0;
        /** @brief Independently established exclusive global native action-control fact.
         * @details False by default. Pause/resume/action-stop require it in addition
         * to their distinct operation grants; no Guest token can establish this fact.
         * @see KortexOperation::action_pause KortexOperation::action_resume KortexOperation::action_stop */
        bool exclusive_native_action_control = false;
    };

    /**
     * @brief Check a complete original tool configuration against deployment bounds.
     * @details Requires initialized transform and mass-center submessages, finite
     * components and positive finite policy limits. Does not normalize, truncate,
     * configure a tool, check authorization, or contact the robot. Safe for callers
     * with independent immutable input objects; retains no references.
     * @param[in] value Borrowed original API 2.8.0 protobuf; units are unchanged.
     * @param[in] policy Borrowed native component limits; see KortexNativePolicy.
     * @return true only when every represented component passes the selected bounds.
     * @see KortexNative::set_tool_configuration KortexNativePolicy
     */
    inline bool valid_tool_configuration(Kinova::Api::ControlConfig::ToolConfiguration const& value, KortexNativePolicy const& policy)
    {
        if(!value.IsInitialized() || !value.has_tool_transform() || !value.has_tool_mass_center() || !std::isfinite(policy.maximum_tool_mass) ||
           policy.maximum_tool_mass <= 0 || !std::isfinite(policy.maximum_tool_translation) || policy.maximum_tool_translation <= 0 ||
           !std::isfinite(policy.maximum_tool_rotation) || policy.maximum_tool_rotation <= 0 || !std::isfinite(value.tool_mass()) || value.tool_mass() < 0 ||
           value.tool_mass() > policy.maximum_tool_mass)
        {
            return false;
        }
        auto const& transform = value.tool_transform();
        auto const& center = value.tool_mass_center();
        double translation[] = {transform.x(), transform.y(), transform.z(), center.x(), center.y(), center.z()};
        double rotation[] = {transform.theta_x(), transform.theta_y(), transform.theta_z()};
        for(double field: translation)
        {
            if(!std::isfinite(field) || std::fabs(field) > policy.maximum_tool_translation)
            {
                return false;
            }
        }
        for(double field: rotation)
        {
            if(!std::isfinite(field) || std::fabs(field) > policy.maximum_tool_rotation)
            {
                return false;
            }
        }
        return true;
    }

    /**
     * @brief Serialize a finite native Kortex application RPC history.
     * @details Borrows actual SDK 2.8.0 clients; their authenticated channels,
     * routers, transports and sessions must outlive this object and all its calls.
     * This class starts no threads and never activates SDK notification handlers.
     * Concurrent/reentrant calls fail on a nonblocking lock rather than waiting.
     * Each admitted operation consumes one of 64 history entries before entering
     * its RPC; all nonzero correlations remain reserved for this object's lifetime.
     * Exceptions after entry retain unknown delivery and must not trigger replay.
     * Deadlines are absolute steady-clock values within the policy lifetime; RPC
     * timeout bounds do not bound physical action duration. SDK readiness, model
     * constraints, native safety supervision and authority remain deployment duties.
     * @see KortexNativePolicy KortexReceipt retire_local receipts_native_only
     */
    class KortexNative
    {
    public:
        /** @brief Clock for all absolute native deadlines and expiry values.
         * @details Monotonic local time; never interpret ROS or robot time as Clock.
         * @see KortexNativePolicy::expires_at
         */
        using Clock = std::chrono::steady_clock;

        /**
         * @brief Bind borrowed SDK clients to a copied immutable native policy.
         * @details Construction opens no connection and performs no RPC. Default
         * policy denies every call. Native bootstrap owns client/transport shutdown.
         * @param[in,out] base Live original Base client, exclusively serialized here.
         * @param[in,out] cyclic Live original BaseCyclic client; no real-time loop.
         * @param[in] policy Trusted grants and finite original-value limits.
         * @param[in,out] control Optional borrowed ControlConfig client; null refuses
         * tool read/change even when those operation grants are enabled.
         * @throws std::invalid_argument RPC or message limit exceeds the hard ceiling.
         * @see KortexNativePolicy retire_local
         */
        KortexNative(Kinova::Api::Base::BaseClient& base,
                     Kinova::Api::BaseCyclic::BaseCyclicClient& cyclic,
                     KortexNativePolicy const& policy = KortexNativePolicy(),
                     Kinova::Api::ControlConfig::ControlConfigClient* control = nullptr) : base_(base), cyclic_(cyclic), control_(control), policy_(policy)
        {
            if(policy.maximum_rpc_ms > 5000 || policy.maximum_message_bytes > 65536)
            {
                throw std::invalid_argument("finite Kortex native policy limits required");
            }
        }

        /** @brief Prohibit copying an owner and its non-reusing RPC history.
         * @details Clients and correlations cannot acquire a second dispatch owner.
         * @param[in] other Existing owner; copying is a compile-time error.
         * @see KortexNative
         */
        KortexNative(KortexNative const& other) = delete;
        /** @brief Prohibit replacing an owner's clients, policy, or RPC history.
         * @details Assignment is a compile-time error and has no runtime effect.
         * @param[in] other Existing owner that cannot be assigned.
         * @see KortexNative
         */
        KortexNative& operator= (KortexNative const& other) = delete;

        /* Every value is the complete ORIGINAL Kortex protobuf class. Units and
         * enum values remain those of API 2.8.0: Kortex joint angles use degrees,
         * unlike standard ROS trajectories in radians. No implicit unit or mode
         * conversion, startup fault clearing, retry, home or resume is performed.
         * All calls are serialized by the native owner; this class starts no thread.
         */
        /**
         * @brief Read the complete original actuator-count response once.
         * @details Requires the actuator_count native grant; no count is inferred
         * from model names and no cyclic or actuator-level control is started.
         * @param[in] owner Trusted identity equal to the copied authenticated_owner.
         * @param[in] id Nonzero, never-used uint64 correlation; one history slot.
         * @param[in] deadline Absolute Clock deadline within expiry and RPC budget.
         * @return Owned original ActuatorInformation; no fields are projected away.
         * @throws std::exception Local validation/admission or actual SDK RPC failure;
         * inspect receipts_native_only() before deciding how to recover.
         * @see KortexOperation::actuator_count receipts_native_only
         */
        Kinova::Api::Base::ActuatorInformation actuator_count(void const* owner, std::uint64_t id, Clock::time_point deadline)
        {
            return invoke(owner, id, KortexOperation::actuator_count, deadline, [&](Options const& options) { return base_.GetActuatorCount(0, options); });
        }

        /**
         * @brief Read one complete original cyclic feedback message.
         * @details Requires the feedback grant; this synchronous sample does not
         * establish a real-time loop or replace ActionNotification events.
         * @param[in] owner Trusted native identity; retained only by copied policy.
         * @param[in] id Nonzero correlation unique for this object's lifetime.
         * @param[in] deadline Absolute Clock deadline within the finite grant.
         * @return Owned BaseCyclic::Feedback with original units and every field.
         * @throws std::exception Local admission/value checks or original SDK error.
         * @see KortexOperation::feedback arm_state receipts_native_only
         */
        Kinova::Api::BaseCyclic::Feedback feedback(void const* owner, std::uint64_t id, Clock::time_point deadline)
        {
            return invoke(owner, id, KortexOperation::feedback, deadline, [&](Options const& options) { return cyclic_.RefreshFeedback(0, options); });
        }

        /**
         * @brief Read the original servoing-mode response without changing mode.
         * @details Requires servoing_read; a reply is an observation, not ownership
         * of low-level cyclic control or permission to change mode.
         * @param[in] owner Trusted native identity matching policy.
         * @param[in] id Nonzero lifetime-unique correlation.
         * @param[in] deadline Absolute Clock deadline within grant and expiry.
         * @return Complete original ServoingModeInformation, owned by the caller.
         * @throws std::exception Local refusal or actual SDK failure; no retry.
         * @see set_servoing_mode KortexOperation::servoing_read
         */
        Kinova::Api::Base::ServoingModeInformation servoing_mode(void const* owner, std::uint64_t id, Clock::time_point deadline)
        {
            return invoke(owner, id, KortexOperation::servoing_read, deadline, [&](Options const& options) { return base_.GetServoingMode(0, options); });
        }

        /**
         * @brief Request original single-level servoing through a separate grant.
         * @details Requires servoing_change. Only SINGLE_LEVEL_SERVOING is admitted;
         * real-time/low-level mode is outside this application owner. No startup
         * mode change, fault clearing, or follow-up motion is performed.
         * @param[in] owner Trusted native identity matching policy.
         * @param[in] id Nonzero lifetime-unique correlation; never replay on timeout.
         * @param[in] deadline Absolute Clock deadline within grant and expiry.
         * @param[in] value Borrowed complete original mode value, kept unchanged.
         * @throws std::exception Invalid/oversized mode, absent grant, or SDK error;
         * an RPC error may leave the mode change's outcome unknown.
         * @see servoing_mode KortexOperation::servoing_change receipts_native_only
         */
        void set_servoing_mode(void const* owner, std::uint64_t id, Clock::time_point deadline, Kinova::Api::Base::ServoingModeInformation const& value)
        {
            check_value(value);
            if(value.servoing_mode() != Kinova::Api::Base::SINGLE_LEVEL_SERVOING)
            {
                throw std::invalid_argument("low-level real-time ownership is outside this application owner");
            }
            invoke(owner,
                   id,
                   KortexOperation::servoing_change,
                   deadline,
                   [&](Options const& options)
                   {
                       base_.SetServoingMode(value, 0, options);
                       return true;
                   });
        }

        /**
         * @brief Invoke original ClearFaults once with its independent native grant.
         * @details Does not resume an action, retry failed commands or establish
         * readiness. Caller must independently review actual fault and robot state.
         * @param[in] owner Trusted native identity matching policy.
         * @param[in] id Nonzero lifetime-unique correlation.
         * @param[in] deadline Absolute Clock deadline within grant and expiry.
         * @throws std::exception Admission or SDK failure; unknown effects persist.
         * @see KortexOperation::fault_clear resume_action receipts_native_only
         */
        void clear_faults(void const* owner, std::uint64_t id, Clock::time_point deadline)
        {
            invoke(owner,
                   id,
                   KortexOperation::fault_clear,
                   deadline,
                   [&](Options const& options)
                   {
                       base_.ClearFaults(0, options);
                       return true;
                   });
        }

        /**
         * @brief Invoke original Base::Stop with an explicit native stop grant.
         * @details This is distinct from StopAction, cancelling an RPC, and retiring
         * local dispatch. A successful reply does not prove the robot is stationary.
         * @param[in] owner Trusted native identity matching policy.
         * @param[in] id Nonzero lifetime-unique correlation.
         * @param[in] deadline Absolute Clock deadline within grant and expiry.
         * @throws std::exception Local refusal or SDK error; no automatic retry.
         * @see stop_action retire_local KortexOperation::stop
         */
        void stop(void const* owner, std::uint64_t id, Clock::time_point deadline)
        {
            invoke(owner,
                   id,
                   KortexOperation::stop,
                   deadline,
                   [&](Options const& options)
                   {
                       base_.Stop(0, options);
                       return true;
                   });
        }

        /**
         * @brief Read complete original arm state through the arm_state grant.
         * @details Polling is synchronous and does not reproduce the event ordering
         * or callback semantics of an original notification subscription.
         * @param[in] owner Trusted native identity matching policy.
         * @param[in] id Nonzero lifetime-unique correlation.
         * @param[in] deadline Absolute Clock deadline within grant and expiry.
         * @return Owned original ArmStateInformation; no state enum is remapped.
         * @throws std::exception Admission, message/deadline validation, or SDK error.
         * @see feedback KortexOperation::arm_state
         */
        Kinova::Api::Base::ArmStateInformation arm_state(void const* owner, std::uint64_t id, Clock::time_point deadline)
        {
            return invoke(owner, id, KortexOperation::arm_state, deadline, [&](Options const& options) { return base_.GetArmState(0, options); });
        }

        /* Pause, StopAction, ResumeAction and base Stop are different original
         * operations. No timeout/fault-clear path implicitly resumes an action. */
        /**
         * @brief Request global PauseAction under exclusive native action ownership.
         * @details Requires both action_pause and exclusive_native_action_control.
         * Kortex supplies no per-Guest action identifier for this global operation.
         * @param[in] owner Trusted native identity matching policy.
         * @param[in] id Nonzero lifetime-unique correlation.
         * @param[in] deadline Absolute Clock deadline within grant and expiry.
         * @throws std::exception Missing exclusivity/grant or original SDK failure;
         * no automatic resume follows, including after uncertain delivery.
         * @see resume_action stop_action KortexNativePolicy::exclusive_native_action_control
         */
        void pause_action(void const* owner, std::uint64_t id, Clock::time_point deadline)
        {
            if(!policy_.exclusive_native_action_control)
            {
                throw std::logic_error("global action control needs independently exclusive native ownership");
            }
            invoke(owner,
                   id,
                   KortexOperation::action_pause,
                   deadline,
                   [&](Options const& options)
                   {
                       base_.PauseAction(0, options);
                       return true;
                   });
        }

        /**
         * @brief Explicitly resume the native globally owned action once.
         * @details Requires action_resume and exclusive_native_action_control.
         * Never invoked as recovery from a timeout, pause failure, or fault clearing.
         * @param[in] owner Trusted native identity matching policy.
         * @param[in] id Nonzero lifetime-unique correlation.
         * @param[in] deadline Absolute Clock deadline within grant and expiry.
         * @throws std::exception Missing ownership/grant or SDK failure; a timeout
         * may mean the physical action resumed, so replay is prohibited.
         * @see pause_action clear_faults receipts_native_only
         */
        void resume_action(void const* owner, std::uint64_t id, Clock::time_point deadline)
        {
            if(!policy_.exclusive_native_action_control)
            {
                throw std::logic_error("global action control needs independently exclusive native ownership");
            }
            invoke(owner,
                   id,
                   KortexOperation::action_resume,
                   deadline,
                   [&](Options const& options)
                   {
                       base_.ResumeAction(0, options);
                       return true;
                   });
        }

        /**
         * @brief Request global StopAction with independently exclusive ownership.
         * @details Requires action_stop and exclusive_native_action_control. This
         * is the original action-control RPC, not Base::Stop or local retirement.
         * @param[in] owner Trusted native identity matching policy.
         * @param[in] id Nonzero lifetime-unique correlation.
         * @param[in] deadline Absolute Clock deadline within grant and expiry.
         * @throws std::exception Missing ownership/grant or actual SDK failure;
         * successful return alone is not evidence of physical completion.
         * @see stop pause_action receipts_native_only
         */
        void stop_action(void const* owner, std::uint64_t id, Clock::time_point deadline)
        {
            if(!policy_.exclusive_native_action_control)
            {
                throw std::logic_error("global action control needs independently exclusive native ownership");
            }
            invoke(owner,
                   id,
                   KortexOperation::action_stop,
                   deadline,
                   [&](Options const& options)
                   {
                       base_.StopAction(0, options);
                       return true;
                   });
        }

        /**
         * @brief Read complete original tool transform, mass and mass center.
         * @details Requires tool_read and a prepared real ControlConfig client.
         * Original ControlConfig field units and protobuf identity are preserved.
         * @param[in] owner Trusted native identity matching policy.
         * @param[in] id Nonzero lifetime-unique correlation.
         * @param[in] deadline Absolute Clock deadline within grant and expiry.
         * @return Owned original ToolConfiguration with no convenience projection.
         * @throws std::exception Missing client/grant, oversized reply or SDK error.
         * @see set_tool_configuration valid_tool_configuration
         */
        Kinova::Api::ControlConfig::ToolConfiguration tool_configuration(void const* owner, std::uint64_t id, Clock::time_point deadline)
        {
            if(!control_)
            {
                throw std::logic_error("real native ControlConfig client was not prepared");
            }
            return invoke(owner, id, KortexOperation::tool_read, deadline, [&](Options const& options) { return control_->GetToolConfiguration(0, options); });
        }

        /**
         * @brief Set a complete original tool configuration after finite checks.
         * @details Requires tool_change, a ControlConfig client, and explicitly
         * positive component limits. No field or unit is converted; native robot
         * readiness and model-specific admissibility remain deployment duties.
         * @param[in] owner Trusted native identity matching policy.
         * @param[in] id Nonzero lifetime-unique correlation.
         * @param[in] deadline Absolute Clock deadline within grant and expiry.
         * @param[in] value Borrowed original transform, mass and mass-center value.
         * @throws std::exception Validation/admission or SDK error; uncertain writes
         * are retained in the ledger and cannot be replayed with this correlation.
         * @see valid_tool_configuration tool_configuration KortexNativePolicy
         */
        void set_tool_configuration(void const* owner, std::uint64_t id, Clock::time_point deadline, Kinova::Api::ControlConfig::ToolConfiguration const& value)
        {
            if(!control_)
            {
                throw std::logic_error("real native ControlConfig client was not prepared");
            }
            check_value(value);
            if(!valid_tool_configuration(value, policy_))
            {
                throw std::invalid_argument("complete tool configuration exceeds explicit " "native deployment limits");
            }
            invoke(owner,
                   id,
                   KortexOperation::tool_change,
                   deadline,
                   [&](Options const& options)
                   {
                       control_->SetToolConfiguration(value, 0, options);
                       return true;
                   });
        }

        /* API 2.8.0 NotificationHandler.h starts std::thread(...).detach() for
         * EVERY received callback. This owner therefore does not activate original
         * OnNotification* subscriptions. A finite queue after that boundary would
         * not bound or join those SDK threads. Poll full arm/cyclic state instead;
         * this does not claim equivalent ActionNotification/event delivery. */
        /**
         * @brief Send one original single-finger normalized position command.
         * @details Requires gripper. Admits only GRIPPER_POSITION, exactly one
         * finger with identifier 1 and a finite normalized value in [0,1]. It does
         * not infer travel in metres, force, contact, or command completion.
         * @param[in] owner Trusted native identity matching policy.
         * @param[in] id Nonzero lifetime-unique correlation.
         * @param[in] deadline Absolute Clock deadline within grant and expiry.
         * @param[in] value Borrowed complete original GripperCommand, unmodified.
         * @throws std::exception Invalid value/grant or original SDK failure;
         * movement may have occurred when the outcome remains unknown.
         * @see KortexOperation::gripper receipts_native_only
         */
        void gripper(void const* owner, std::uint64_t id, Clock::time_point deadline, Kinova::Api::Base::GripperCommand const& value)
        {
            check_value(value);
            if(value.mode() != Kinova::Api::Base::GRIPPER_POSITION || value.gripper().finger_size() != 1 ||
               value.gripper().finger(0).finger_identifier() != 1 || !std::isfinite(value.gripper().finger(0).value()) ||
               value.gripper().finger(0).value() < 0 || value.gripper().finger(0).value() > 1)
            {
                throw std::invalid_argument("selected single-finger normalized gripper position required");
            }
            invoke(owner,
                   id,
                   KortexOperation::gripper,
                   deadline,
                   [&](Options const& options)
                   {
                       base_.SendGripperCommand(value, 0, options);
                       return true;
                   });
        }

        /* API 2.8.0 TwistCommand has no duration field. No twist transport method
         * is offered here: an RPC timeout cannot supply motion expiration. A
         * separately authorized native motion supervisor/Stop owner is required
         * before admitting that original API. The full original type stays in the
         * vendor headers and exported native descriptor set, without projection. */
        /**
         * @brief Read the complete original action selected by its native handle.
         * @details Requires action_read. The returned Action retains its full
         * original oneof and metadata; reading never authorizes execution.
         * @param[in] owner Trusted native identity matching policy.
         * @param[in] id Nonzero lifetime-unique correlation.
         * @param[in] deadline Absolute Clock deadline within grant and expiry.
         * @param[in] handle Borrowed original ActionHandle, not a Guest capability.
         * @return Owned complete original Action value.
         * @throws std::exception Invalid handle/limits, absent grant, or SDK error.
         * @see execute_action KortexOperation::action_read
         */
        Kinova::Api::Base::Action action(void const* owner, std::uint64_t id, Clock::time_point deadline, Kinova::Api::Base::ActionHandle const& handle)
        {
            check_value(handle);
            return invoke(owner, id, KortexOperation::action_read, deadline, [&](Options const& options) { return base_.ReadAction(handle, 0, options); });
        }

        /**
         * @brief Submit one complete original Action through action_execute.
         * @details No action fields or units are projected. The caller must apply
         * independent native model/workspace/safety checks to the selected action.
         * RPC completion is acceptance only; notifications remain unsupported here.
         * @param[in] owner Trusted native identity matching policy.
         * @param[in] id Nonzero lifetime-unique correlation; unknown calls never replay.
         * @param[in] deadline Absolute RPC Clock deadline, not motion duration.
         * @param[in] value Borrowed complete initialized original Action.
         * @throws std::exception Value/admission failure or actual SDK exception.
         * @see action arm_state receipts_native_only
         */
        void execute_action(void const* owner, std::uint64_t id, Clock::time_point deadline, Kinova::Api::Base::Action const& value)
        {
            check_value(value);
            invoke(owner,
                   id,
                   KortexOperation::action_execute,
                   deadline,
                   [&](Options const& options)
                   {
                       base_.ExecuteAction(value, 0, options);
                       return true;
                   });
        }

        /**
         * @brief Obtain the original validation report for a complete waypoint list.
         * @details Requires waypoint_validate. Preserves all report errors and
         * original waypoint fields; validation does not authorize execution.
         * @param[in] owner Trusted native identity matching policy.
         * @param[in] id Nonzero lifetime-unique correlation.
         * @param[in] deadline Absolute Clock deadline within grant and expiry.
         * @param[in] value Borrowed initialized original list, in original API units.
         * @return Owned complete WaypointValidationReport without error suppression.
         * @throws std::exception Value/admission failure or original SDK exception.
         * @see execute_waypoints KortexOperation::waypoint_validate
         */
        Kinova::Api::Base::WaypointValidationReport
            validate_waypoints(void const* owner, std::uint64_t id, Clock::time_point deadline, Kinova::Api::Base::WaypointList const& value)
        {
            check_value(value);
            return invoke(owner,
                          id,
                          KortexOperation::waypoint_validate,
                          deadline,
                          [&](Options const& options) { return base_.ValidateWaypointList(value, 0, options); });
        }

        /**
         * @brief Submit the complete original waypoint trajectory once.
         * @details Requires waypoint_execute, independently of validation. Preserves
         * original joint-angle units, timing and list fields. Native model limits,
         * supervision and evidence of completion must be prepared separately.
         * @param[in] owner Trusted native identity matching policy.
         * @param[in] id Nonzero lifetime-unique correlation; never replay uncertainty.
         * @param[in] deadline Absolute RPC Clock deadline, not trajectory duration.
         * @param[in] value Borrowed complete original WaypointList, unmodified.
         * @throws std::exception Value/admission failure or original SDK exception.
         * @see validate_waypoints stop_action receipts_native_only
         */
        void execute_waypoints(void const* owner, std::uint64_t id, Clock::time_point deadline, Kinova::Api::Base::WaypointList const& value)
        {
            check_value(value);
            invoke(owner,
                   id,
                   KortexOperation::waypoint_execute,
                   deadline,
                   [&](Options const& options)
                   {
                       base_.ExecuteWaypointTrajectory(value, 0, options);
                       return true;
                   });
        }

        /**
         * @brief Permanently refuse future dispatch through this local owner.
         * @details Performs no Stop, action cancellation, unsubscribe, logout or
         * client shutdown. Retains every uncertain RPC outcome. Caller owns native
         * recovery and must keep borrowed clients alive until in-flight calls end.
         * @throws std::logic_error Another operation currently owns the lock.
         * @see stop stop_action receipts_native_only
         */
        void retire_local()
        {
            std::unique_lock<std::mutex> lock(mutex_, std::try_to_lock);
            if(!lock.owns_lock())
            {
                throw std::logic_error("native Kortex operation still in progress");
            }
            retired_ = true;
        }

        /**
         * @brief Copy the complete fixed native outcome ledger without dispatch.
         * @details Returns all 64 entries, including unused slots. exception_ptr
         * keeps actual failure information alive; treat returned data as trusted
         * native diagnostics and never expose it as Guest authority or proof of
         * action completion. No references to internal ledger storage escape.
         * @return Owned snapshot in admission order; unused rows retain zero IDs.
         * @throws std::logic_error A concurrent operation currently owns the lock.
         * @see KortexReceipt Delivery retire_local
         */
        std::array<KortexReceipt, 64> receipts_native_only() const
        {
            std::unique_lock<std::mutex> lock(mutex_, std::try_to_lock);
            if(!lock.owns_lock())
            {
                throw std::logic_error("native Kortex ledger is busy");
            }
            return history_;
        }

    private:
        using Options = Kinova::Api::RouterClientSendOptions;

        void check_return(bool) const
        {
        }

        template <class Message>
        void check_return(Message const& value) const
        {
            check_value(value);
        }

        template <class Message>
        void check_value(Message const& value) const
        {
            if(!policy_.maximum_message_bytes || !value.IsInitialized() || value.ByteSizeLong() > policy_.maximum_message_bytes)
            {
                throw std::invalid_argument("complete Kortex value exceeds selected native bound");
            }
        }

        template <class Function>
        auto invoke(void const* owner, std::uint64_t id, KortexOperation operation, Clock::time_point deadline, Function call) -> decltype(call(Options{}))
        {
            std::unique_lock<std::mutex> lock(mutex_, std::try_to_lock);
            if(!lock.owns_lock())
            {
                throw std::logic_error("native Kortex owner is busy");
            }
            if(!owner || owner != policy_.authenticated_owner || !policy_.enabled[static_cast<unsigned>(operation)] || !policy_.maximum_rpc_ms ||
               !policy_.maximum_message_bytes || Clock::now() >= policy_.expires_at || deadline > policy_.expires_at)
            {
                throw std::runtime_error("native Kortex operation has no authenticated-owner grant");
            }
            if(retired_ || busy_ || !id || used_ == history_.size())
            {
                throw std::logic_error("retired, busy, invalid correlation or exhausted native owner");
            }
            for(unsigned i = 0; i < used_; ++i)
            {
                if(history_[i].correlation == id)
                {
                    throw std::logic_error("Kortex correlation is never replayed");
                }
            }
            auto remaining = std::chrono::duration_cast<std::chrono::milliseconds>(deadline - Clock::now()).count();
            if(remaining <= 0 || remaining > policy_.maximum_rpc_ms)
            {
                throw std::invalid_argument("absolute native Kortex deadline is expired or exceeds grant");
            }
            KortexReceipt& row = history_[used_++];
            row.correlation = id;
            row.operation = operation;
            row.delivery = Delivery::reserved;
            busy_ = true;
            try
            {
                /* Options disable fire-and-forget and add no delay. Finite native
                 * RPC timeout is independent of action completion and cancellation. */
                Options options{false, 0, static_cast<std::uint32_t>(remaining)};
                row.delivery = Delivery::unknown;
                auto result = call(options);
                check_return(result);
                if(Clock::now() > deadline)
                {
                    throw std::runtime_error("native Kortex reply exceeded deadline");
                }
                row.delivery = Delivery::returned;
                busy_ = false;
                return result;
            }
            catch(...)
            {
                row.error = std::current_exception();
                busy_ = false;
                throw;
            }
        }

        Kinova::Api::Base::BaseClient& base_;
        Kinova::Api::BaseCyclic::BaseCyclicClient& cyclic_;
        Kinova::Api::ControlConfig::ControlConfigClient* const control_;
        KortexNativePolicy const policy_;
        std::array<KortexReceipt, 64> history_{};
        mutable std::mutex mutex_;
        unsigned used_ = 0;
        bool busy_ = false, retired_ = false;
    };
}  // namespace uwvm_kinova
#endif
