/* SPDX-License-Identifier: Apache-2.0 */
#ifndef UWVM_KINOVA_GEN3_GOAL_HPP
#define UWVM_KINOVA_GEN3_GOAL_HPP
#include <platform/ros/cpp/roswasm/cpp_profile.hpp>
/** @brief Import complete C declarations with their intentional aggregate zero initialization. */
#if defined(__clang__)
# pragma clang diagnostic push
# pragma clang diagnostic ignored "-Wmissing-braces"
# pragma clang diagnostic ignored "-Wmissing-field-initializers"
#endif
#include <platform/kinova/c/gen3_goal.h>
#if defined(__clang__)
# pragma clang diagnostic pop
#endif
#if !defined(ROSWASM_CPP_FREESTANDING)
# include "bounded_interfaces.hpp"
#else
# include "bounded_interfaces.h"
#endif

namespace uwvm_gen3
{
    /** @brief Explicit original-model ROS joint bounds in radians and SI derivatives.
     * @details Six/seven Gen3 joints only; Gen3 Lite is not inferred from dimensions.
     * These values do not authenticate a robot, tool, firmware or native controller.
     * @see uwvm_gen3_validate_goal ActionClient::send
     */
    typedef uwvm_gen3_joint_limits JointLimits;
    /** @brief Whole selected original ROS2 FollowJointTrajectory Goal.
     * @details ROS radians are distinct from native Kortex protobuf degree fields.
     * Every original selected field/bound stays present; unsupported routes refuse.
     * @see ActionClient::send
     */
    typedef roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal Goal;
    /** @brief Entire original selected feedback value with all bounded fields.
     * @details Owns C storage without borrowing a transport frame. @see ActionClient::feedback
     */
    typedef roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback Feedback;
    /** @brief Entire original selected result, separate from terminal kind.
     * @details Original controller error fields remain unchanged. @see ActionClient::result
     */
    typedef roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result Result;

    /** @brief Borrow genuine four-role ROS2 action ownership without acquiring it.
     * @details One cpp source uses the shared98/3/11/14/17/20/23/26 profile macro.
     * All bundle/context/backend/goal-table storage stays live and stationary. Copies
     * borrow the same owner and require serialization. Construction/destruction does
     * no RPC, mode change, fault clear, home, stop, cancel or capability cleanup.
     * Native Kortex SDK2.8 remains a separate C++11/native-only dependency.
     * @see send feedback result cancel_own roswasmc_action_bundle_close_checked
     */
    class ActionClient
    {
        roswasmc_action_bundle* bundle_;

        /** @brief Check the real borrowed bundle and its exact ROS2 backend locally.
         * @details Does no import and preserves the original bundle error.
         * @return 0 for a live ROS2 owner, original bundle status or95 for another backend.
         * @see roswasmc_action_bundle_check
         */
        uint32_t check() const ROSWASM_CPP_NOEXCEPT
        {
            uint32_t code = roswasmc_action_bundle_check(bundle_);
            if(code)
            {
                return code;
            }
            if(!bundle_->cap[0].context || !bundle_->cap[0].context->backend || bundle_->cap[0].context->backend->version != 2)
            {
                return 95;
            }
            return 0;
        }

    public:
        /** @brief Retain an explicitly initialized original action bundle address.
         * @details No validation, grant, owner transfer or native request occurs.
         * @param[in,out] bundle Live send/cancel-own/feedback/result owner and goal table.
         * @see send roswasmc_action_bundle_init
         */
        explicit ActionClient(roswasmc_action_bundle& bundle) ROSWASM_CPP_NOEXCEPT : bundle_(&bundle)
        {
        }

        /** @brief Validate every original model-bound Goal field before one typed send.
         * @details Uses the real complete C validator and controlled SDK. No field is
         * converted to native protobuf degrees, clamped, dropped or silently replayed.
         * @param[in] limits Explicit correct six/seven-joint limits and finite duration.
         * @param[in] goal Complete immutable original ROS2 Goal, with all selected bounds.
         * @param[out] id Full nonzero opaque u64 ID on success only; disjoint from input
         * and owner ranges. An ID is not native authority or a16-byte original UUID.
         * @return Exact validation/codec/import result with length-validity preserved.
         * @thread Serialize the live bundle, inputs and every owner/goal-table mutation.
         * @see uwvm_gen3_validate_goal roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_send
         */
        roswasmc_result send(JointLimits const& limits, Goal const& goal, uint64_t& id) ROSWASM_CPP_NOEXCEPT
        {
            if(uwvm_bounded_overlap(&id, sizeof id, &limits, sizeof limits) || uwvm_bounded_overlap(&id, sizeof id, &goal, sizeof goal))
            {
                return roswasmc_action_bundle_failure(22);
            }
            uint32_t code = uwvm_gen3_validate_goal(&limits, &goal);
            if(!code)
            {
                code = check();
            }
            if(code)
            {
                return roswasmc_action_bundle_failure(code);
            }
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_send(bundle_, &goal, &id);
        }

        /** @brief Poll one complete original feedback value for an exactly owned ID.
         * @details The genuine separate feedback role validates complete correlation
         * and decoding. Idle/size/timeout errors never imply a replay or resize.
         * @param[in] id Full locally tracked u64 selector in this Runtime Instance.
         * @param[out] value Complete disjoint feedback, unchanged on refusal.
         * @return Original typed receive result and written/unwritten length metadata.
         * @thread Serialize owner/goal-table/value access until synchronous return.
         * @see roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_feedback
         */
        roswasmc_result feedback(uint64_t id, Feedback& value) const ROSWASM_CPP_NOEXCEPT
        {
            uint32_t code = check();
            if(code)
            {
                return roswasmc_action_bundle_failure(code);
            }
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_feedback(bundle_, id, &value);
        }

        /** @brief Receive the full result/kind and retire only its validated local goal.
         * @details Controller error fields are independent of terminal kind; physical
         * pose, stop and firmware acceptance require separate native observations.
         * @param[in] id Complete exactly owned u64 selector, not transferable authority.
         * @param[out] kind Terminal2 succeeded,3 canceled or4 aborted after complete validation.
         * @param[out] value Whole disjoint original result, with no discarded fields.
         * @return Exact typed result; errors preserve both outputs and local ownership.
         * @thread Serialize the bundle, context lifetime and all competing receives.
         * @see roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_result
         */
        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value) ROSWASM_CPP_NOEXCEPT
        {
            uint32_t code = check();
            if(code)
            {
                return roswasmc_action_bundle_failure(code);
            }
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_result(bundle_, id, &kind, &value);
        }

        /** @brief Request only explicit own-goal cancellation without changing mode.
         * @details Uses the independent own-cancel role; exposes no cancel-any/all.
         * Acknowledgement retains ownership until a whole terminal result arrives.
         * @param[in] id Full nonzero locally tracked original selector.
         * @param[out] accepted Canonical0/1 after success; disjoint from owner state.
         * @return Original cancellation result; unknown/error never grants replay.
         * @thread Serialize the borrowed bundle, goal table and native owner retirement.
         * @see roswasmc_action_bundle_cancel_own result
         */
        roswasmc_result cancel_own(uint64_t id, int& accepted) const ROSWASM_CPP_NOEXCEPT
        {
            uint32_t code = check();
            if(code)
            {
                return roswasmc_action_bundle_failure(code);
            }
            return roswasmc_action_bundle_cancel_own(bundle_, id, &accepted);
        }
    };
}  // namespace uwvm_gen3
#endif
