/**
 * @file trajectory.cpp
 * @brief Retained kuka native ROS application flow over the public typed SDK.
 * @details Select the exact original source profile and manually configured deployment before use. Observe the
 * operation and cleanup statuses separately. Source retention does not establish native communication, current
 * robot state, or controller compatibility.
 * @see document/platform/kuka/en_US/README.md
 */

/** Complete typed original family. No grant, native pointer or fake Action transport. */
#include <kuka/cpp/binding_ros2.hpp>
#include UWVM_VENDOR_INTERFACES_HEADER
#include <kuka/cpp/adapter/robots/industrial/include/action_owner.hpp>

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

#define INDUSTRIAL_BINDING_NAMESPACE ::uwvm_industrial::kuka_ros2
#define INDUSTRIAL_ACTION_OWNER ::uwvm_industrial::ActionOwner<Definition>
#include <kuka/flows/cpp/support/robots/industrial/examples/trajectory_reactor.inc>
