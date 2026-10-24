/** @file
 * @brief Explicit ROS 2 backend selection for the C89 and later C/C++ resource layer.
 * Include only this backend if the guest should import only ROS 2; including
 * both permits an explicitly selected dual-backend guest but grants no rights.
 */
#ifndef ROSWASMC_ROS2_H
#define ROSWASMC_ROS2_H
#include <platform/ros2/c/roswasm/abi/ros2.h>
#include <platform/ros/c/roswasm/roswasmc.h>

/**
 * @brief Return immutable ROS 2 ABI dispatch. Merely obtaining it opens no alias.
 *
 * @details Return the explicit immutable dispatch selection. Unsupported entries remain absent,
 * and obtaining this table performs no resource operation.
 *
 * @par C storage and execution contract
 * @return Borrowed immutable process-lifetime dispatch table; never free or mutate it. Missing
 * entries remain unsupported.
 * @par Permissions
 * None; dispatch selection is not a native connection or permission.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_context, roswasmc_open()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE roswasmc_backend const* roswasmc_ros2_backend(void)
{
    static roswasmc_backend const backend = {
        2,
        uwvm_ros2_abi_version,
        uwvm_ros2_capability_open,
        uwvm_ros2_capability_close,
        uwvm_ros2_capability_revoke,
        uwvm_ros2_topic_publish,
        uwvm_ros2_topic_subscribe,
        uwvm_ros2_event_poll,
        uwvm_ros2_service_advertise,
        uwvm_ros2_parameter_subscribe_events,
        uwvm_ros2_log_write,
        {uwvm_ros2_service_call,
          uwvm_ros2_service_respond, uwvm_ros2_action_send_goal,
          uwvm_ros2_action_cancel_own_goal, uwvm_ros2_action_cancel_any_goal,
          uwvm_ros2_action_receive_feedback, uwvm_ros2_action_receive_result,
          uwvm_ros2_action_advertise, uwvm_ros2_action_respond,
          uwvm_ros2_tf_lookup, uwvm_ros2_tf_broadcast,
          uwvm_ros2_parameter_get, uwvm_ros2_parameter_set,
          0, 0,
          uwvm_ros2_parameter_list, 0,
          uwvm_ros2_parameter_describe, uwvm_ros2_parameter_declare,
          uwvm_ros2_parameter_undeclare, uwvm_ros2_graph_inspect_topic,
          uwvm_ros2_graph_inspect_node, uwvm_ros2_graph_inspect_service,
          uwvm_ros2_graph_inspect_action, uwvm_ros2_graph_list_topics,
          uwvm_ros2_graph_list_nodes, uwvm_ros2_graph_list_services,
          uwvm_ros2_lifecycle_get_state, uwvm_ros2_lifecycle_change_state,
          uwvm_ros2_time_read_ros, 0,
          uwvm_ros2_time_read_system, uwvm_ros2_time_read_steady}
    };
    return &backend;
}

/** @brief Explicit additive event dispatch. This selection opens no resource. */
#include <platform/ros/c/roswasm/events.h>

/**
 * @brief Return the explicit immutable dispatch selection.
 *
 * @details Return the explicit immutable dispatch selection. Unsupported entries remain absent,
 * and obtaining this table performs no resource operation.
 *
 * @par C storage and execution contract
 * @return Borrowed immutable process-lifetime dispatch table; never free or mutate it. Missing
 * entries remain unsupported.
 * @par Permissions
 * None; dispatch selection is not a native connection or permission.
 * @par Thread and async rules
 * Caller-driven and synchronous unless the operation explicitly admits a later event. Serialize
 * mutation of the same owner/storage; callbacks and their borrowed state must remain alive through
 * completion. No hidden thread or retry is started.
 * @par Version
 * C89 and later source facade; exact-width scalar constraints apply. Core ROS imports use ABI v1;
 * optional namespaces retain their separately documented version checks.
 * @see roswasmc_context, roswasmc_open()
 * @see @ref roswasmc_c_contracts
 */
ROSWASM_C_INLINE roswasmc_event_backend const* roswasmc_ros2_event_backend(void)
{
    static roswasmc_event_backend const extension = {2, uwvm_ros2_event_watch, uwvm_ros2_event_poll_v1, uwvm_ros2_event_ready, uwvm_ros2_service_submit};
    return &extension;
}
#endif
