/* SPDX-License-Identifier: Apache-2.0 */
#ifndef UWVM_STRETCH_APPLICATION_HPP
#define UWVM_STRETCH_APPLICATION_HPP
#include <platform/ros/cpp/roswasm/cpp_profile.hpp>
#include <platform/hello_robot/c/application.h>
#if !defined(ROSWASM_CPP_FREESTANDING)
# include "bounded_interfaces.hpp"
#else
# include "bounded_interfaces.h"
#endif

namespace uwvm_stretch
{
    /** @brief Exact copied deployment fields with borrowed actual joint-name storage.
     * @details All nested strings/arrays outlive their validation call. This value
     * is an observation, not native authority or an atomic multi-topic snapshot.
     * @see uwvm_stretch_validate_deployment ActionClient::send
     */
    typedef uwvm_stretch_deployment Deployment;
    /** @brief Complete original selected ROS2 FollowJointTrajectory Goal.
     * @details All scalar/MultiDOF/tolerance fields and selected bounds remain intact.
     * The published one-point family cannot encode a two-point trajectory; this
     * header neither replaces that family nor fabricates a second point.
     * @see ActionClient::send uwvm_stretch_validate_goal
     */
    typedef roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal Goal;
    /** @brief Complete original selected action feedback, with every bounded field.
     * @details Owned C storage, not a view into transport scratch. @see ActionClient::feedback
     */
    typedef roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback Feedback;
    /** @brief Complete original selected action result, separate from terminal kind.
     * @details Error code/text are preserved without interpreting physical success.
     * @see ActionClient::result
     */
    typedef roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result Result;

    /** @brief Borrow the real four-role ROS2 typed action owner without acquiring it.
     * @details One cpp source selects98/3/11/14/17/20/23/26 through the common macro.
     * Bundle/context/backend/goal storage stay live and stationary through all calls
     * and checked cleanup. Copies borrow the same bundle and need serialization.
     * Construction/destruction never opens/closes, switches mode, homes, releases
     * runstop, cancels or performs native I/O. Opaque u64 IDs confer no authority.
     * @see send feedback result cancel_own roswasmc_action_bundle_close_checked
     */
    class ActionClient
    {
        roswasmc_action_bundle* bundle_;

        /** @brief Check the borrowed live owner and exact ROS2 backend locally.
         * @details No import occurs; numeric bundle errors are preserved.
         * @return 0 for a live ROS2 bundle, original bundle error, or95 for another backend.
         * @see roswasmc_action_bundle_check
         */
        uint32_t check() const ROSWASM_CPP_NOEXCEPT
        {
            uint32_t code = roswasmc_action_bundle_check(bundle_);
            if(code)
                return code;
            if(!bundle_->cap[0].context || !bundle_->cap[0].context->backend || bundle_->cap[0].context->backend->version != 2)
                return 95;
            return 0;
        }

    public:
        /** @brief Retain an explicitly initialized genuine owner at a stable address.
         * @details Borrows only; performs no validation/import or ownership transfer.
         * @param[in,out] bundle Live four-role original action owner and goal table.
         * @see send roswasmc_action_bundle_init
         */
        explicit ActionClient(roswasmc_action_bundle& bundle) ROSWASM_CPP_NOEXCEPT : bundle_(&bundle)
        {
        }

        /** @brief Validate the entire original goal/deployment and send at most once.
         * @details Pure complete-value, freshness, tool, homing/runstop/mode and
         * trajectory checks precede the genuine typed send. Unsupported tolerances
         * and channels are refused, never erased. Unknown delivery is not replayed.
         * @param[in] deployment Actual immutable selected deployment observation.
         * @param[in] now_ns Trusted matching monotonic time in nanoseconds for freshness.
         * @param[in] goal Complete immutable original Goal with its selected bounds.
         * @param[out] id Complete nonzero u64 ID only on success; disjoint from every
         * input/owner range, unchanged on refusal. Native correlation remains Host policy.
         * @return Original local/codec/import result, including length-validity metadata.
         * @thread Serialize the borrowed bundle, observations and capability retirement.
         * @see uwvm_stretch_validate_goal roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_send
         */
        roswasmc_result send(Deployment const& deployment, uint64_t now_ns, Goal const& goal, uint64_t& id) ROSWASM_CPP_NOEXCEPT
        {
            if(uwvm_bounded_overlap(&id, sizeof id, &deployment, sizeof deployment) || uwvm_bounded_overlap(&id, sizeof id, &goal, sizeof goal))
                return roswasmc_action_bundle_failure(22);
            uint32_t code = uwvm_stretch_validate_goal(&deployment, now_ns, &goal);
            if(!code)
                code = check();
            if(code)
                return roswasmc_action_bundle_failure(code);
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_send(bundle_, &goal, &id);
        }

        /** @brief Receive one complete feedback value for an owned exact goal ID.
         * @details Uses the separate feedback role, preserving every original field.
         * Idle11/size90/timeout110 never resize or replay a consumed native event.
         * @param[in] id Full locally tracked u64 selector, not a native UUID or grant.
         * @param[out] value Complete disjoint feedback storage, unchanged on refusal.
         * @return Original genuine typed receive result and length-validity distinction.
         * @thread Serialize bundle/owner/value mutation through synchronous return.
         * @see roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_feedback
         */
        roswasmc_result feedback(uint64_t id, Feedback& value) const ROSWASM_CPP_NOEXCEPT
        {
            uint32_t code = check();
            if(code)
                return roswasmc_action_bundle_failure(code);
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_feedback(bundle_, id, &value);
        }

        /** @brief Receive one whole result and retire its exact local goal only on success.
         * @details Terminal kind and complete original error fields remain independent.
         * A result does not switch mode or prove physical standstill.
         * @param[in] id Exact owned full u64 selector, unchanged by this call.
         * @param[out] kind Terminal2 succeeded,3 canceled or4 aborted, committed after validation.
         * @param[out] value Complete original result, disjoint from kind and owner state.
         * @return Original typed result; failure preserves outputs and goal ownership.
         * @thread Serialize bundle/owner/output mutation and every competing consumer.
         * @see roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_result
         */
        roswasmc_result result(uint64_t id, uint8_t& kind, Result& value) ROSWASM_CPP_NOEXCEPT
        {
            uint32_t code = check();
            if(code)
                return roswasmc_action_bundle_failure(code);
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_result(bundle_, id, &kind, &value);
        }

        /** @brief Request cancellation only through the separately admitted own-goal role.
         * @details No cancel-any/all is exposed. Acknowledgement retains the local goal
         * until a complete terminal result; it is not a physical stop confirmation.
         * @param[in] id Full nonzero locally owned u64 selector.
         * @param[out] accepted Canonical0/1 only on success; disjoint from owner state.
         * @return Exact genuine cancellation result; failures never permit replay.
         * @thread Serialize the borrowed bundle and capability retirement externally.
         * @see roswasmc_action_bundle_cancel_own result
         */
        roswasmc_result cancel_own(uint64_t id, int& accepted) const ROSWASM_CPP_NOEXCEPT
        {
            uint32_t code = check();
            if(code)
                return roswasmc_action_bundle_failure(code);
            return roswasmc_action_bundle_cancel_own(bundle_, id, &accepted);
        }
    };
}  // namespace uwvm_stretch
#endif
