/** @file records.c
 * @brief Implement the external C FFI using the full checked canonical codecs.
 * @details No weak stub, projected field, implicit allocation or native ROS call.
 */
#include <nvidia-isaac-sim/c_ffi_bridge/ros2/records.h>

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_sim_ffi_builtin_interfaces_msg_Time_valid. */
int nvidia_isaac_sim_ffi_builtin_interfaces_msg_Time_valid(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_valid(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_sim_ffi_builtin_interfaces_msg_Time_wire_size. */
size_t nvidia_isaac_sim_ffi_builtin_interfaces_msg_Time_wire_size(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_wire_size(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_sim_ffi_builtin_interfaces_msg_Time_encode. */
uint32_t nvidia_isaac_sim_ffi_builtin_interfaces_msg_Time_encode(roswasmc_bounded_2_builtin_interfaces_msg_Time const* value,
                                                                 void* output,
                                                                 size_t capacity,
                                                                 size_t* length)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(value, output, capacity, length);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_sim_ffi_builtin_interfaces_msg_Time_decode. */
uint32_t nvidia_isaac_sim_ffi_builtin_interfaces_msg_Time_decode(void const* input, size_t length, roswasmc_bounded_2_builtin_interfaces_msg_Time* value)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(input, length, value);
}

/** @brief See the public complete ownership and error contract for nvidia_isaac_sim_ffi_std_msgs_msg_Header_valid. */
int nvidia_isaac_sim_ffi_std_msgs_msg_Header_valid(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_valid(value);
}

/** @brief See the public complete ownership and error contract for nvidia_isaac_sim_ffi_std_msgs_msg_Header_wire_size.
 */
size_t nvidia_isaac_sim_ffi_std_msgs_msg_Header_wire_size(roswasmc_bounded_2_std_msgs_msg_Header const* value)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_wire_size(value);
}

/** @brief See the public complete ownership and error contract for nvidia_isaac_sim_ffi_std_msgs_msg_Header_encode. */
uint32_t nvidia_isaac_sim_ffi_std_msgs_msg_Header_encode(roswasmc_bounded_2_std_msgs_msg_Header const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_encode(value, output, capacity, length);
}

/** @brief See the public complete ownership and error contract for nvidia_isaac_sim_ffi_std_msgs_msg_Header_decode. */
uint32_t nvidia_isaac_sim_ffi_std_msgs_msg_Header_decode(void const* input, size_t length, roswasmc_bounded_2_std_msgs_msg_Header* value)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_decode(input, length, value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_sim_ffi_sensor_msgs_msg_JointState_valid. */
int nvidia_isaac_sim_ffi_sensor_msgs_msg_JointState_valid(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value)
{
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_valid(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_sim_ffi_sensor_msgs_msg_JointState_wire_size. */
size_t nvidia_isaac_sim_ffi_sensor_msgs_msg_JointState_wire_size(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value)
{
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_wire_size(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_sim_ffi_sensor_msgs_msg_JointState_encode. */
uint32_t nvidia_isaac_sim_ffi_sensor_msgs_msg_JointState_encode(roswasmc_bounded_2_sensor_msgs_msg_JointState const* value,
                                                                void* output,
                                                                size_t capacity,
                                                                size_t* length)
{
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_encode(value, output, capacity, length);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_sim_ffi_sensor_msgs_msg_JointState_decode. */
uint32_t nvidia_isaac_sim_ffi_sensor_msgs_msg_JointState_decode(void const* input, size_t length, roswasmc_bounded_2_sensor_msgs_msg_JointState* value)
{
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(input, length, value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_msg_ClockEvent_valid. */
int nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_msg_ClockEvent_valid(roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent const* value)
{
    return roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_valid(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_msg_ClockEvent_wire_size. */
size_t nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_msg_ClockEvent_wire_size(roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent const* value)
{
    return roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_wire_size(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_msg_ClockEvent_encode. */
uint32_t nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_msg_ClockEvent_encode(roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    return roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_encode(value, output, capacity, length);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_msg_ClockEvent_decode. */
uint32_t nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_msg_ClockEvent_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent* value)
{
    return roswasmc_bounded_2_uwvm_isaac_sim_bridge_msg_ClockEvent_decode(input, length, value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Request_valid. */
int nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Request_valid(roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request const* value)
{
    return roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_valid(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Request_wire_size. */
size_t nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Request_wire_size(
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request const* value)
{
    return roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_wire_size(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Request_encode. */
uint32_t
    nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Request_encode(roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_encode(value, output, capacity, length);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Request_decode. */
uint32_t nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Request_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request* value)
{
    return roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Request_decode(input, length, value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Response_valid. */
int nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Response_valid(roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response const* value)
{
    return roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_valid(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Response_wire_size. */
size_t nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Response_wire_size(
    roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response const* value)
{
    return roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_wire_size(value);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Response_encode. */
uint32_t
    nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Response_encode(roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    return roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_encode(value, output, capacity, length);
}

/** @brief See the public complete ownership and error contract for
 * nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Response_decode. */
uint32_t nvidia_isaac_sim_ffi_uwvm_isaac_sim_bridge_srv_ClockControl_Response_decode(void const* input,
                                                                                     size_t length,
                                                                                     roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response* value)
{
    return roswasmc_bounded_2_uwvm_isaac_sim_bridge_srv_ClockControl_Response_decode(input, length, value);
}
