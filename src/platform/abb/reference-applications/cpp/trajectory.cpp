/**
 * @file trajectory.cpp
 * @brief Bind the retained ABB trajectory reactor to its complete typed action family.
 * @details The shared industrial reactor owns the action lifecycle. This adapter forwards the full
 * goal, feedback and result without changing their fields. Sending requires an explicitly authorized
 * alias; cancellation applies only to the owned goal. The shared reactor implementation is a required
 * build dependency and is not duplicated in this vendor.
 */
/** Complete typed original family. No grant, native pointer or fake Action transport. */
#include <abb/cpp/binding_ros2.hpp>
#include <abb/c/ros2/abb-ros2-complete/bounded_interfaces.h>
#include <abb/cpp/adapter/robots/industrial/include/action_owner.hpp>

namespace
{
    struct Definition
    {
        using Goal = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal;
        using Result = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result;
        using Feedback = roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback;

        static roswasmc_result send(roswasmc_action_bundle* b, Goal const* q, uint64_t* id)
        {
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_send(b, q, id);
        }

        static roswasmc_result feedback(roswasmc_action_bundle const* b, uint64_t id, Feedback* v)
        {
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_feedback(b, id, v);
        }

        static roswasmc_result result(roswasmc_action_bundle* b, uint64_t id, uint8_t* k, Result* v)
        {
            return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_result(b, id, k, v);
        }
    };
}  // namespace

#define INDUSTRIAL_BINDING_NAMESPACE ::uwvm_industrial::abb_ros2
#define INDUSTRIAL_ACTION_OWNER ::uwvm_industrial::ActionOwner<Definition>
#include <ros/cpp/industrial/trajectory_reactor.inc>
