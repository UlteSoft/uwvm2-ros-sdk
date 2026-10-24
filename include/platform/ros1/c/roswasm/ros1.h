/** @file
 * @brief Explicit ROS 1 backend selection for the C89 and later C/C++ resource layer.
 * Include only this backend if the guest should import only ROS 1; including
 * both permits an explicitly selected dual-backend guest but grants no rights.
 */
#ifndef ROSWASMC_ROS1_H
#define ROSWASMC_ROS1_H
#include <platform/ros1/c/roswasm/abi/ros1.h>
#include <platform/ros/c/roswasm/roswasmc.h>

/**
 * @brief Return immutable ROS 1 ABI dispatch. Merely obtaining it opens no alias.
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
ROSWASM_C_INLINE roswasmc_backend const* roswasmc_ros1_backend(void)
{
    static roswasmc_backend const backend = {
        1,
        uwvm_ros1_abi_version,
        uwvm_ros1_capability_open,
        uwvm_ros1_capability_close,
        uwvm_ros1_capability_revoke,
        uwvm_ros1_topic_publish,
        uwvm_ros1_topic_subscribe,
        uwvm_ros1_event_poll,
        uwvm_ros1_service_advertise,
        0,
        uwvm_ros1_log_write,
        {uwvm_ros1_service_call,
          uwvm_ros1_service_respond, uwvm_ros1_action_send_goal,
          uwvm_ros1_action_cancel_own_goal, uwvm_ros1_action_cancel_any_goal,
          uwvm_ros1_action_receive_feedback, uwvm_ros1_action_receive_result,
          uwvm_ros1_action_advertise, uwvm_ros1_action_respond,
          uwvm_ros1_tf_lookup, uwvm_ros1_tf_broadcast,
          uwvm_ros1_parameter_get, uwvm_ros1_parameter_set,
          uwvm_ros1_parameter_delete, uwvm_ros1_parameter_exists,
          uwvm_ros1_parameter_list, uwvm_ros1_parameter_search,
          0, 0,
          0, uwvm_ros1_graph_inspect_topic,
          uwvm_ros1_graph_inspect_node, uwvm_ros1_graph_inspect_service,
          0, uwvm_ros1_graph_list_topics,
          uwvm_ros1_graph_list_nodes, uwvm_ros1_graph_list_services,
          0, 0,
          uwvm_ros1_time_read_ros, uwvm_ros1_time_read_wall,
          0, 0}
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
ROSWASM_C_INLINE roswasmc_event_backend const* roswasmc_ros1_event_backend(void)
{
    static roswasmc_event_backend const extension = {1, uwvm_ros1_event_watch, uwvm_ros1_event_poll_v1, uwvm_ros1_event_ready, uwvm_ros1_service_submit};
    return &extension;
}
#endif
