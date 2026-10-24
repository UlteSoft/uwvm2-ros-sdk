/**
 * @file abi_dispatch.h
 * @brief Dispatch every canonical ROS ABI v1 operation for real language VMs.
 * @details Generated only from share/abi/abi-v1.json; public C headers
 * supply the actual import prototypes. No permission, retry or codec is
 * implemented here. Language adapters root all storage before entry.
 * Canonical SHA256: 0a13f6c49100173c156eb76acfd35ebe103a40b2a90c752d3d1302c31f875ec0
 */
#ifndef UWVM_INTERPRETER_ABI_DISPATCH_H
#define UWVM_INTERPRETER_ABI_DISPATCH_H
#include <stdint.h>
#include <stddef.h>
#include <string.h>
#ifndef ROSWASM_BACKEND
#define ROSWASM_BACKEND 2
#endif
#if ROSWASM_BACKEND == 1
#include <platform/ros1/c/roswasm/detail/ros1/abi.h>
#elif ROSWASM_BACKEND == 2
#include <platform/ros2/c/roswasm/detail/ros2/abi.h>
#else
#error "Select exactly one ROSWASM_BACKEND, 1 or 2"
#endif
#define UWVM_ROS_MAX_INPUT 4193786u
#define UWVM_ROS_MAX_OUTPUT 4194304u

/**
 * @brief Borrow rooted input/output storage for one synchronous import.
 * @details Offsets are unsigned i64, zero-extended from uintptr_t on
 * memory32. Scalar IDs never pass through floating-point conversion.
 * kind: 0 no output, 1 length slot, 2 handle/ID, 3 fixed ready32,
 * 4 ABI version. A returned ID is not a capability owner.
 */
struct uwvm_ros_frame
{
    uint64_t handle, other, correlation, slot;
    unsigned char const* input;
    unsigned char* output;
    uint64_t input_size, capacity;
    uint32_t code;
    unsigned kind, opens_owner, protocol, entered;
};

/**
 * @brief Validate unused arguments and bounded storage before an effect.
 * @param frame Caller-rooted complete arguments and mutable outcome.
 * @param form Canonical form selected from the immutable operation name.
 * @return One on valid arguments; zero without issuing any ROS import.
 */
static inline int uwvm_ros_arguments(struct uwvm_ros_frame const* frame, unsigned form)
{
    if (frame->input_size > UWVM_ROS_MAX_INPUT || frame->capacity > UWVM_ROS_MAX_OUTPUT ||
        (frame->input_size != 0 && frame->input == NULL) || (frame->capacity != 0 && frame->output == NULL))
    {
        return 0;
    }
    if (form != 6 && frame->correlation != 0)
    {
        return 0;
    }
    if (form != 6 && form != 8 && frame->other != 0)
    {
        return 0;
    }
    if (form == 1)
    {
        return frame->handle == 0 && frame->input_size == 0 && frame->capacity == 0;
    }
    if (form == 2)
    {
        return frame->handle == 0 && frame->input_size > 0 && frame->input_size <= 255 && frame->capacity == 0;
    }
    if (form == 3 || form == 6)
    {
        return frame->input_size == 0 && frame->capacity == 0;
    }
    if (form == 4 || form == 8)
    {
        return frame->capacity == 0;
    }
    if (form == 5)
    {
        return frame->input_size == 0;
    }
    if (form == 7)
    {
        return frame->input_size == 0 && frame->capacity == 32;
    }
    return form == 9;
}

/**
 * @brief Enter exactly one original import; no automatic retry occurs.
 * @param frame Rooted input/output and exact owner/other/correlation words.
 * @param name Checked NUL-terminated canonical operation name.
 * @return Original errno, or local 22 on invalid arguments/protocol.
 * @details Error90 length is meaningful only after UINT64_MAX changes.
 * Fixed event_ready data is exactly32 bytes and has no length slot.
 * Native effects can persist after timeout/disconnect; never replay here.
 */
static inline uint32_t uwvm_ros_dispatch(struct uwvm_ros_frame* frame, char const* name)
{
    frame->code = 22;
    frame->kind = 0;
    frame->opens_owner = 0;
    frame->protocol = 0;
    frame->entered = 0;
    frame->slot = UINT64_MAX;
#if ROSWASM_BACKEND == 1
    if (strcmp(name, "abi_version") == 0)
    {
        frame->kind = 4;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 1))
        {
            return 22;
        }
        frame->slot = 0;
        frame->entered = 1;
        frame->slot = uwvm_ros1_abi_version();
        frame->code = 0;
    }
    else if (strcmp(name, "capability_open") == 0)
    {
        frame->kind = 2;
        frame->opens_owner = 1;
        if (!uwvm_ros_arguments(frame, 2))
        {
            return 22;
        }
        frame->slot = 0;
        frame->entered = 1;
        frame->code = uwvm_ros1_capability_open(
            0, uwvm_ros_address(frame->input), frame->input_size, uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "capability_close") == 0)
    {
        frame->kind = 0;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 3))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_capability_close(frame->handle);
    }
    else if (strcmp(name, "capability_revoke") == 0)
    {
        frame->kind = 0;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 3))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_capability_revoke(frame->handle);
    }
    else if (strcmp(name, "topic_publish") == 0)
    {
        frame->kind = 0;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 4))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_topic_publish(frame->handle, 0, uwvm_ros_address(frame->input), frame->input_size);
    }
    else if (strcmp(name, "topic_subscribe") == 0)
    {
        frame->kind = 0;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 3))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_topic_subscribe(frame->handle);
    }
    else if (strcmp(name, "event_poll") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 5))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_event_poll(
            frame->handle, 0, uwvm_ros_address(frame->output), frame->capacity, uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "event_watch") == 0)
    {
        frame->kind = 0;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 6))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_event_watch(frame->handle, frame->other, frame->correlation);
    }
    else if (strcmp(name, "event_poll_v1") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 5))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_event_poll_v1(
            frame->handle, 0, uwvm_ros_address(frame->output), frame->capacity, uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "event_ready") == 0)
    {
        frame->kind = 3;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 7))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_event_ready(frame->handle, 0, uwvm_ros_address(frame->output));
    }
    else if (strcmp(name, "service_submit") == 0)
    {
        frame->kind = 2;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 8))
        {
            return 22;
        }
        frame->slot = 0;
        frame->entered = 1;
        frame->code = uwvm_ros1_service_submit(frame->handle,
                                               frame->other,
                                               0,
                                               uwvm_ros_address(frame->input),
                                               frame->input_size,
                                               uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "service_call") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_service_call(frame->handle,
                                             0,
                                             uwvm_ros_address(frame->input),
                                             frame->input_size,
                                             uwvm_ros_address(frame->output),
                                             frame->capacity,
                                             uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "service_advertise") == 0)
    {
        frame->kind = 0;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 3))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_service_advertise(frame->handle);
    }
    else if (strcmp(name, "service_respond") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_service_respond(frame->handle,
                                                0,
                                                uwvm_ros_address(frame->input),
                                                frame->input_size,
                                                uwvm_ros_address(frame->output),
                                                frame->capacity,
                                                uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "action_send_goal") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_action_send_goal(frame->handle,
                                                 0,
                                                 uwvm_ros_address(frame->input),
                                                 frame->input_size,
                                                 uwvm_ros_address(frame->output),
                                                 frame->capacity,
                                                 uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "action_cancel_own_goal") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_action_cancel_own_goal(frame->handle,
                                                       0,
                                                       uwvm_ros_address(frame->input),
                                                       frame->input_size,
                                                       uwvm_ros_address(frame->output),
                                                       frame->capacity,
                                                       uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "action_cancel_any_goal") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_action_cancel_any_goal(frame->handle,
                                                       0,
                                                       uwvm_ros_address(frame->input),
                                                       frame->input_size,
                                                       uwvm_ros_address(frame->output),
                                                       frame->capacity,
                                                       uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "action_receive_feedback") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_action_receive_feedback(frame->handle,
                                                        0,
                                                        uwvm_ros_address(frame->input),
                                                        frame->input_size,
                                                        uwvm_ros_address(frame->output),
                                                        frame->capacity,
                                                        uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "action_receive_result") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_action_receive_result(frame->handle,
                                                      0,
                                                      uwvm_ros_address(frame->input),
                                                      frame->input_size,
                                                      uwvm_ros_address(frame->output),
                                                      frame->capacity,
                                                      uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "action_advertise") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_action_advertise(frame->handle,
                                                 0,
                                                 uwvm_ros_address(frame->input),
                                                 frame->input_size,
                                                 uwvm_ros_address(frame->output),
                                                 frame->capacity,
                                                 uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "action_respond") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_action_respond(frame->handle,
                                               0,
                                               uwvm_ros_address(frame->input),
                                               frame->input_size,
                                               uwvm_ros_address(frame->output),
                                               frame->capacity,
                                               uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "tf_lookup") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_tf_lookup(frame->handle,
                                          0,
                                          uwvm_ros_address(frame->input),
                                          frame->input_size,
                                          uwvm_ros_address(frame->output),
                                          frame->capacity,
                                          uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "tf_broadcast") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_tf_broadcast(frame->handle,
                                             0,
                                             uwvm_ros_address(frame->input),
                                             frame->input_size,
                                             uwvm_ros_address(frame->output),
                                             frame->capacity,
                                             uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "parameter_get") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_parameter_get(frame->handle,
                                              0,
                                              uwvm_ros_address(frame->input),
                                              frame->input_size,
                                              uwvm_ros_address(frame->output),
                                              frame->capacity,
                                              uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "parameter_set") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_parameter_set(frame->handle,
                                              0,
                                              uwvm_ros_address(frame->input),
                                              frame->input_size,
                                              uwvm_ros_address(frame->output),
                                              frame->capacity,
                                              uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "parameter_delete") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_parameter_delete(frame->handle,
                                                 0,
                                                 uwvm_ros_address(frame->input),
                                                 frame->input_size,
                                                 uwvm_ros_address(frame->output),
                                                 frame->capacity,
                                                 uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "parameter_exists") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_parameter_exists(frame->handle,
                                                 0,
                                                 uwvm_ros_address(frame->input),
                                                 frame->input_size,
                                                 uwvm_ros_address(frame->output),
                                                 frame->capacity,
                                                 uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "parameter_list") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_parameter_list(frame->handle,
                                               0,
                                               uwvm_ros_address(frame->input),
                                               frame->input_size,
                                               uwvm_ros_address(frame->output),
                                               frame->capacity,
                                               uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "parameter_search") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_parameter_search(frame->handle,
                                                 0,
                                                 uwvm_ros_address(frame->input),
                                                 frame->input_size,
                                                 uwvm_ros_address(frame->output),
                                                 frame->capacity,
                                                 uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "graph_inspect_topic") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_graph_inspect_topic(frame->handle,
                                                    0,
                                                    uwvm_ros_address(frame->input),
                                                    frame->input_size,
                                                    uwvm_ros_address(frame->output),
                                                    frame->capacity,
                                                    uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "graph_inspect_node") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_graph_inspect_node(frame->handle,
                                                   0,
                                                   uwvm_ros_address(frame->input),
                                                   frame->input_size,
                                                   uwvm_ros_address(frame->output),
                                                   frame->capacity,
                                                   uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "graph_inspect_service") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_graph_inspect_service(frame->handle,
                                                      0,
                                                      uwvm_ros_address(frame->input),
                                                      frame->input_size,
                                                      uwvm_ros_address(frame->output),
                                                      frame->capacity,
                                                      uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "graph_list_topics") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_graph_list_topics(frame->handle,
                                                  0,
                                                  uwvm_ros_address(frame->input),
                                                  frame->input_size,
                                                  uwvm_ros_address(frame->output),
                                                  frame->capacity,
                                                  uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "graph_list_nodes") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_graph_list_nodes(frame->handle,
                                                 0,
                                                 uwvm_ros_address(frame->input),
                                                 frame->input_size,
                                                 uwvm_ros_address(frame->output),
                                                 frame->capacity,
                                                 uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "graph_list_services") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_graph_list_services(frame->handle,
                                                    0,
                                                    uwvm_ros_address(frame->input),
                                                    frame->input_size,
                                                    uwvm_ros_address(frame->output),
                                                    frame->capacity,
                                                    uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "time_read_ros") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_time_read_ros(frame->handle,
                                              0,
                                              uwvm_ros_address(frame->input),
                                              frame->input_size,
                                              uwvm_ros_address(frame->output),
                                              frame->capacity,
                                              uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "time_read_wall") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_time_read_wall(frame->handle,
                                               0,
                                               uwvm_ros_address(frame->input),
                                               frame->input_size,
                                               uwvm_ros_address(frame->output),
                                               frame->capacity,
                                               uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "log_write") == 0)
    {
        frame->kind = 0;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 4))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros1_log_write(frame->handle, 0, uwvm_ros_address(frame->input), frame->input_size);
    }
#elif ROSWASM_BACKEND == 2
    if (strcmp(name, "abi_version") == 0)
    {
        frame->kind = 4;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 1))
        {
            return 22;
        }
        frame->slot = 0;
        frame->entered = 1;
        frame->slot = uwvm_ros2_abi_version();
        frame->code = 0;
    }
    else if (strcmp(name, "capability_open") == 0)
    {
        frame->kind = 2;
        frame->opens_owner = 1;
        if (!uwvm_ros_arguments(frame, 2))
        {
            return 22;
        }
        frame->slot = 0;
        frame->entered = 1;
        frame->code = uwvm_ros2_capability_open(
            0, uwvm_ros_address(frame->input), frame->input_size, uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "capability_close") == 0)
    {
        frame->kind = 0;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 3))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_capability_close(frame->handle);
    }
    else if (strcmp(name, "capability_revoke") == 0)
    {
        frame->kind = 0;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 3))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_capability_revoke(frame->handle);
    }
    else if (strcmp(name, "topic_publish") == 0)
    {
        frame->kind = 0;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 4))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_topic_publish(frame->handle, 0, uwvm_ros_address(frame->input), frame->input_size);
    }
    else if (strcmp(name, "topic_subscribe") == 0)
    {
        frame->kind = 0;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 3))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_topic_subscribe(frame->handle);
    }
    else if (strcmp(name, "event_poll") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 5))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_event_poll(
            frame->handle, 0, uwvm_ros_address(frame->output), frame->capacity, uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "event_watch") == 0)
    {
        frame->kind = 0;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 6))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_event_watch(frame->handle, frame->other, frame->correlation);
    }
    else if (strcmp(name, "event_poll_v1") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 5))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_event_poll_v1(
            frame->handle, 0, uwvm_ros_address(frame->output), frame->capacity, uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "event_ready") == 0)
    {
        frame->kind = 3;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 7))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_event_ready(frame->handle, 0, uwvm_ros_address(frame->output));
    }
    else if (strcmp(name, "service_submit") == 0)
    {
        frame->kind = 2;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 8))
        {
            return 22;
        }
        frame->slot = 0;
        frame->entered = 1;
        frame->code = uwvm_ros2_service_submit(frame->handle,
                                               frame->other,
                                               0,
                                               uwvm_ros_address(frame->input),
                                               frame->input_size,
                                               uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "service_call") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_service_call(frame->handle,
                                             0,
                                             uwvm_ros_address(frame->input),
                                             frame->input_size,
                                             uwvm_ros_address(frame->output),
                                             frame->capacity,
                                             uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "service_advertise") == 0)
    {
        frame->kind = 0;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 3))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_service_advertise(frame->handle);
    }
    else if (strcmp(name, "service_respond") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_service_respond(frame->handle,
                                                0,
                                                uwvm_ros_address(frame->input),
                                                frame->input_size,
                                                uwvm_ros_address(frame->output),
                                                frame->capacity,
                                                uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "action_send_goal") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_action_send_goal(frame->handle,
                                                 0,
                                                 uwvm_ros_address(frame->input),
                                                 frame->input_size,
                                                 uwvm_ros_address(frame->output),
                                                 frame->capacity,
                                                 uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "action_cancel_own_goal") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_action_cancel_own_goal(frame->handle,
                                                       0,
                                                       uwvm_ros_address(frame->input),
                                                       frame->input_size,
                                                       uwvm_ros_address(frame->output),
                                                       frame->capacity,
                                                       uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "action_cancel_any_goal") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_action_cancel_any_goal(frame->handle,
                                                       0,
                                                       uwvm_ros_address(frame->input),
                                                       frame->input_size,
                                                       uwvm_ros_address(frame->output),
                                                       frame->capacity,
                                                       uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "action_receive_feedback") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_action_receive_feedback(frame->handle,
                                                        0,
                                                        uwvm_ros_address(frame->input),
                                                        frame->input_size,
                                                        uwvm_ros_address(frame->output),
                                                        frame->capacity,
                                                        uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "action_receive_result") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_action_receive_result(frame->handle,
                                                      0,
                                                      uwvm_ros_address(frame->input),
                                                      frame->input_size,
                                                      uwvm_ros_address(frame->output),
                                                      frame->capacity,
                                                      uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "action_advertise") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_action_advertise(frame->handle,
                                                 0,
                                                 uwvm_ros_address(frame->input),
                                                 frame->input_size,
                                                 uwvm_ros_address(frame->output),
                                                 frame->capacity,
                                                 uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "action_respond") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_action_respond(frame->handle,
                                               0,
                                               uwvm_ros_address(frame->input),
                                               frame->input_size,
                                               uwvm_ros_address(frame->output),
                                               frame->capacity,
                                               uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "tf_lookup") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_tf_lookup(frame->handle,
                                          0,
                                          uwvm_ros_address(frame->input),
                                          frame->input_size,
                                          uwvm_ros_address(frame->output),
                                          frame->capacity,
                                          uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "tf_broadcast") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_tf_broadcast(frame->handle,
                                             0,
                                             uwvm_ros_address(frame->input),
                                             frame->input_size,
                                             uwvm_ros_address(frame->output),
                                             frame->capacity,
                                             uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "parameter_get") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_parameter_get(frame->handle,
                                              0,
                                              uwvm_ros_address(frame->input),
                                              frame->input_size,
                                              uwvm_ros_address(frame->output),
                                              frame->capacity,
                                              uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "parameter_set") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_parameter_set(frame->handle,
                                              0,
                                              uwvm_ros_address(frame->input),
                                              frame->input_size,
                                              uwvm_ros_address(frame->output),
                                              frame->capacity,
                                              uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "parameter_list") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_parameter_list(frame->handle,
                                               0,
                                               uwvm_ros_address(frame->input),
                                               frame->input_size,
                                               uwvm_ros_address(frame->output),
                                               frame->capacity,
                                               uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "parameter_describe") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_parameter_describe(frame->handle,
                                                   0,
                                                   uwvm_ros_address(frame->input),
                                                   frame->input_size,
                                                   uwvm_ros_address(frame->output),
                                                   frame->capacity,
                                                   uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "parameter_declare") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_parameter_declare(frame->handle,
                                                  0,
                                                  uwvm_ros_address(frame->input),
                                                  frame->input_size,
                                                  uwvm_ros_address(frame->output),
                                                  frame->capacity,
                                                  uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "parameter_undeclare") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_parameter_undeclare(frame->handle,
                                                    0,
                                                    uwvm_ros_address(frame->input),
                                                    frame->input_size,
                                                    uwvm_ros_address(frame->output),
                                                    frame->capacity,
                                                    uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "graph_inspect_topic") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_graph_inspect_topic(frame->handle,
                                                    0,
                                                    uwvm_ros_address(frame->input),
                                                    frame->input_size,
                                                    uwvm_ros_address(frame->output),
                                                    frame->capacity,
                                                    uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "graph_inspect_node") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_graph_inspect_node(frame->handle,
                                                   0,
                                                   uwvm_ros_address(frame->input),
                                                   frame->input_size,
                                                   uwvm_ros_address(frame->output),
                                                   frame->capacity,
                                                   uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "graph_inspect_service") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_graph_inspect_service(frame->handle,
                                                      0,
                                                      uwvm_ros_address(frame->input),
                                                      frame->input_size,
                                                      uwvm_ros_address(frame->output),
                                                      frame->capacity,
                                                      uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "graph_inspect_action") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_graph_inspect_action(frame->handle,
                                                     0,
                                                     uwvm_ros_address(frame->input),
                                                     frame->input_size,
                                                     uwvm_ros_address(frame->output),
                                                     frame->capacity,
                                                     uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "parameter_subscribe_events") == 0)
    {
        frame->kind = 0;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 3))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_parameter_subscribe_events(frame->handle);
    }
    else if (strcmp(name, "graph_list_topics") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_graph_list_topics(frame->handle,
                                                  0,
                                                  uwvm_ros_address(frame->input),
                                                  frame->input_size,
                                                  uwvm_ros_address(frame->output),
                                                  frame->capacity,
                                                  uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "graph_list_nodes") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_graph_list_nodes(frame->handle,
                                                 0,
                                                 uwvm_ros_address(frame->input),
                                                 frame->input_size,
                                                 uwvm_ros_address(frame->output),
                                                 frame->capacity,
                                                 uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "graph_list_services") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_graph_list_services(frame->handle,
                                                    0,
                                                    uwvm_ros_address(frame->input),
                                                    frame->input_size,
                                                    uwvm_ros_address(frame->output),
                                                    frame->capacity,
                                                    uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "lifecycle_get_state") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_lifecycle_get_state(frame->handle,
                                                    0,
                                                    uwvm_ros_address(frame->input),
                                                    frame->input_size,
                                                    uwvm_ros_address(frame->output),
                                                    frame->capacity,
                                                    uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "lifecycle_change_state") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_lifecycle_change_state(frame->handle,
                                                       0,
                                                       uwvm_ros_address(frame->input),
                                                       frame->input_size,
                                                       uwvm_ros_address(frame->output),
                                                       frame->capacity,
                                                       uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "time_read_ros") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_time_read_ros(frame->handle,
                                              0,
                                              uwvm_ros_address(frame->input),
                                              frame->input_size,
                                              uwvm_ros_address(frame->output),
                                              frame->capacity,
                                              uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "time_read_system") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_time_read_system(frame->handle,
                                                 0,
                                                 uwvm_ros_address(frame->input),
                                                 frame->input_size,
                                                 uwvm_ros_address(frame->output),
                                                 frame->capacity,
                                                 uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "time_read_steady") == 0)
    {
        frame->kind = 1;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 9))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_time_read_steady(frame->handle,
                                                 0,
                                                 uwvm_ros_address(frame->input),
                                                 frame->input_size,
                                                 uwvm_ros_address(frame->output),
                                                 frame->capacity,
                                                 uwvm_ros_address(&frame->slot));
    }
    else if (strcmp(name, "log_write") == 0)
    {
        frame->kind = 0;
        frame->opens_owner = 0;
        if (!uwvm_ros_arguments(frame, 4))
        {
            return 22;
        }
        frame->entered = 1;
        frame->code = uwvm_ros2_log_write(frame->handle, 0, uwvm_ros_address(frame->input), frame->input_size);
    }
#endif
    if (frame->code == 0 && ((frame->kind == 1 && (frame->slot == UINT64_MAX || frame->slot > frame->capacity)) ||
                             (frame->kind == 2 && frame->slot == 0)))
    {
        frame->protocol = 1;
        return 22;
    }
    return frame->code;
}

/** @brief Return only a complete initialized success prefix. */
static inline size_t uwvm_ros_data_size(struct uwvm_ros_frame const* frame)
{
    if (frame->code != 0 || frame->protocol)
    {
        return 0;
    }
    return frame->kind == 1 ? (size_t)frame->slot : frame->kind == 3 ? 32u : 0u;
}

/** @brief Distinguish an observed length slot from an untouched sentinel. */
static inline int uwvm_ros_has_length(struct uwvm_ros_frame const* frame)
{
    return frame->kind == 1 && frame->slot != UINT64_MAX && !frame->protocol && (frame->code == 0 || frame->code == 90);
}

/** @brief Identify an exact successful handle/ID/version word. */
static inline int uwvm_ros_has_value(struct uwvm_ros_frame const* frame)
{
    return frame->code == 0 && !frame->protocol && (frame->kind == 2 || frame->kind == 4);
}
#endif
