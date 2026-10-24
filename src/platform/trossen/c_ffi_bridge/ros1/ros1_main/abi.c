/**
 * @file abi.c
 * @brief Delegate the complete trossen/ros1_main foreign ABI to the canonical C codecs.
 * @details No field, bound, default, malformed-wire rule or outcome is synthesized.
 * Link this source into the same application as the foreign-language caller.
 */
#include <trossen/c_ffi_bridge/ros1/ros1_main/abi.h>

size_t uwvm_trossen_ros1_main_Ros1Interbotix_slate_msgsSetStringRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_slate_msgs_SetStringRequest);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_slate_msgsSetStringRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_slate_msgs_SetStringRequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_slate_msgsSetStringRequest_validate(roswasmc_bounded_1_interbotix_slate_msgs_SetStringRequest const* value)
{
    return roswasmc_bounded_1_interbotix_slate_msgs_SetStringRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_slate_msgsSetStringRequest_wire_size(roswasmc_bounded_1_interbotix_slate_msgs_SetStringRequest const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_slate_msgs_SetStringRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_slate_msgs_SetStringRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_slate_msgsSetStringRequest_encode(roswasmc_bounded_1_interbotix_slate_msgs_SetStringRequest const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_1_interbotix_slate_msgs_SetStringRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_slate_msgsSetStringRequest_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_interbotix_slate_msgs_SetStringRequest* value)
{
    return roswasmc_bounded_1_interbotix_slate_msgs_SetStringRequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_slate_msgsSetStringResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_slate_msgs_SetStringResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_slate_msgsSetStringResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_slate_msgs_SetStringResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_slate_msgsSetStringResponse_validate(roswasmc_bounded_1_interbotix_slate_msgs_SetStringResponse const* value)
{
    return roswasmc_bounded_1_interbotix_slate_msgs_SetStringResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_slate_msgsSetStringResponse_wire_size(roswasmc_bounded_1_interbotix_slate_msgs_SetStringResponse const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_slate_msgs_SetStringResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_slate_msgs_SetStringResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_slate_msgsSetStringResponse_encode(roswasmc_bounded_1_interbotix_slate_msgs_SetStringResponse const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_1_interbotix_slate_msgs_SetStringResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_slate_msgsSetStringResponse_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_interbotix_slate_msgs_SetStringResponse* value)
{
    return roswasmc_bounded_1_interbotix_slate_msgs_SetStringResponse_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsArmJoy_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsArmJoy_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsArmJoy_validate(roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy const* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsArmJoy_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsArmJoy_encode(roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsArmJoy_decode(void const* input, size_t length, roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_ArmJoy_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsHexJoy_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_xs_msgs_HexJoy);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsHexJoy_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_xs_msgs_HexJoy);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsHexJoy_validate(roswasmc_bounded_1_interbotix_xs_msgs_HexJoy const* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_HexJoy_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsHexJoy_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_HexJoy const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_HexJoy_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_xs_msgs_HexJoy_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsHexJoy_encode(roswasmc_bounded_1_interbotix_xs_msgs_HexJoy const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_HexJoy_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsHexJoy_decode(void const* input, size_t length, roswasmc_bounded_1_interbotix_xs_msgs_HexJoy* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_HexJoy_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointGroupCommand_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointGroupCommand_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointGroupCommand_validate(roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand const* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointGroupCommand_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointGroupCommand_encode(roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointGroupCommand_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_JointGroupCommand_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointSingleCommand_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointSingleCommand_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointSingleCommand_validate(roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand const* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointSingleCommand_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand const* value,
                                                                                   size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointSingleCommand_encode(roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointSingleCommand_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_JointSingleCommand_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointTemps_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_xs_msgs_JointTemps);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointTemps_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_xs_msgs_JointTemps);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointTemps_validate(roswasmc_bounded_1_interbotix_xs_msgs_JointTemps const* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointTemps_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_JointTemps const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointTemps_encode(roswasmc_bounded_1_interbotix_xs_msgs_JointTemps const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_encode(value, output, capacity, length);
}

uint32_t
    uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointTemps_decode(void const* input, size_t length, roswasmc_bounded_1_interbotix_xs_msgs_JointTemps* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_JointTemps_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Time_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_time);
}

size_t uwvm_trossen_ros1_main_Ros1Time_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_time);
}

uint32_t uwvm_trossen_ros1_main_Ros1Time_validate(roswasmc_bounded_1_time const* value)
{
    return roswasmc_bounded_1_time_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Time_wire_size(roswasmc_bounded_1_time const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_time_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_time_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Time_encode(roswasmc_bounded_1_time const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_time_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Time_decode(void const* input, size_t length, roswasmc_bounded_1_time* value)
{
    return roswasmc_bounded_1_time_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Std_msgsHeader_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_std_msgs_Header);
}

size_t uwvm_trossen_ros1_main_Ros1Std_msgsHeader_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_std_msgs_Header);
}

uint32_t uwvm_trossen_ros1_main_Ros1Std_msgsHeader_validate(roswasmc_bounded_1_std_msgs_Header const* value)
{
    return roswasmc_bounded_1_std_msgs_Header_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Std_msgsHeader_wire_size(roswasmc_bounded_1_std_msgs_Header const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_std_msgs_Header_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_std_msgs_Header_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Std_msgsHeader_encode(roswasmc_bounded_1_std_msgs_Header const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_std_msgs_Header_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Std_msgsHeader_decode(void const* input, size_t length, roswasmc_bounded_1_std_msgs_Header* value)
{
    return roswasmc_bounded_1_std_msgs_Header_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Duration_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_duration);
}

size_t uwvm_trossen_ros1_main_Ros1Duration_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_duration);
}

uint32_t uwvm_trossen_ros1_main_Ros1Duration_validate(roswasmc_bounded_1_duration const* value)
{
    return roswasmc_bounded_1_duration_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Duration_wire_size(roswasmc_bounded_1_duration const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_duration_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_duration_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Duration_encode(roswasmc_bounded_1_duration const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_duration_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Duration_decode(void const* input, size_t length, roswasmc_bounded_1_duration* value)
{
    return roswasmc_bounded_1_duration_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Trajectory_msgsJointTrajectoryPoint_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint);
}

size_t uwvm_trossen_ros1_main_Ros1Trajectory_msgsJointTrajectoryPoint_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint);
}

uint32_t uwvm_trossen_ros1_main_Ros1Trajectory_msgsJointTrajectoryPoint_validate(roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint const* value)
{
    return roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Trajectory_msgsJointTrajectoryPoint_wire_size(roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Trajectory_msgsJointTrajectoryPoint_encode(roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Trajectory_msgsJointTrajectoryPoint_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint* value)
{
    return roswasmc_bounded_1_trajectory_msgs_JointTrajectoryPoint_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Trajectory_msgsJointTrajectory_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_trajectory_msgs_JointTrajectory);
}

size_t uwvm_trossen_ros1_main_Ros1Trajectory_msgsJointTrajectory_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_trajectory_msgs_JointTrajectory);
}

uint32_t uwvm_trossen_ros1_main_Ros1Trajectory_msgsJointTrajectory_validate(roswasmc_bounded_1_trajectory_msgs_JointTrajectory const* value)
{
    return roswasmc_bounded_1_trajectory_msgs_JointTrajectory_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Trajectory_msgsJointTrajectory_wire_size(roswasmc_bounded_1_trajectory_msgs_JointTrajectory const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_trajectory_msgs_JointTrajectory_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_trajectory_msgs_JointTrajectory_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Trajectory_msgsJointTrajectory_encode(roswasmc_bounded_1_trajectory_msgs_JointTrajectory const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    return roswasmc_bounded_1_trajectory_msgs_JointTrajectory_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Trajectory_msgsJointTrajectory_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_1_trajectory_msgs_JointTrajectory* value)
{
    return roswasmc_bounded_1_trajectory_msgs_JointTrajectory_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointTrajectoryCommand_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointTrajectoryCommand_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointTrajectoryCommand_validate(roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand const* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointTrajectoryCommand_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointTrajectoryCommand_encode(roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsJointTrajectoryCommand_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_JointTrajectoryCommand_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsLocobotJoy_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsLocobotJoy_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsLocobotJoy_validate(roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy const* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsLocobotJoy_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsLocobotJoy_encode(roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy_encode(value, output, capacity, length);
}

uint32_t
    uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsLocobotJoy_decode(void const* input, size_t length, roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_LocobotJoy_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsMotorGainsRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsMotorGainsRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsMotorGainsRequest_validate(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest const* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsMotorGainsRequest_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsMotorGainsRequest_encode(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsMotorGainsRequest_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsRequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsMotorGainsResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsMotorGainsResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsMotorGainsResponse_validate(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse const* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsMotorGainsResponse_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse const* value,
                                                                                   size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsMotorGainsResponse_encode(roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse const* value,
                                                                                void* output,
                                                                                size_t capacity,
                                                                                size_t* length)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsMotorGainsResponse_decode(void const* input,
                                                                                size_t length,
                                                                                roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_MotorGainsResponse_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsOperatingModesRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsOperatingModesRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsOperatingModesRequest_validate(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest const* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsOperatingModesRequest_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsOperatingModesRequest_encode(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsOperatingModesRequest_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesRequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsOperatingModesResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsOperatingModesResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsOperatingModesResponse_validate(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse const* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsOperatingModesResponse_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsOperatingModesResponse_encode(roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsOperatingModesResponse_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_OperatingModesResponse_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRebootRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRebootRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRebootRequest_validate(roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest const* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRebootRequest_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRebootRequest_encode(roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest const* value,
                                                                           void* output,
                                                                           size_t capacity,
                                                                           size_t* length)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRebootRequest_decode(void const* input,
                                                                           size_t length,
                                                                           roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_RebootRequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRebootResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRebootResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRebootResponse_validate(roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse const* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRebootResponse_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse const* value,
                                                                               size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRebootResponse_encode(roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRebootResponse_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_RebootResponse_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRegisterValuesRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRegisterValuesRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRegisterValuesRequest_validate(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest const* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRegisterValuesRequest_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRegisterValuesRequest_encode(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRegisterValuesRequest_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesRequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRegisterValuesResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRegisterValuesResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRegisterValuesResponse_validate(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse const* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t
    uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRegisterValuesResponse_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRegisterValuesResponse_encode(roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse const* value,
                                                                                    void* output,
                                                                                    size_t capacity,
                                                                                    size_t* length)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRegisterValuesResponse_decode(void const* input,
                                                                                    size_t length,
                                                                                    roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_RegisterValuesResponse_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRobotInfoRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRobotInfoRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRobotInfoRequest_validate(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest const* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRobotInfoRequest_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest const* value,
                                                                                 size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRobotInfoRequest_encode(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest const* value,
                                                                              void* output,
                                                                              size_t capacity,
                                                                              size_t* length)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRobotInfoRequest_decode(void const* input,
                                                                              size_t length,
                                                                              roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoRequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRobotInfoResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRobotInfoResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRobotInfoResponse_validate(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse const* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRobotInfoResponse_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse const* value,
                                                                                  size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRobotInfoResponse_encode(roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse const* value,
                                                                               void* output,
                                                                               size_t capacity,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsRobotInfoResponse_decode(void const* input,
                                                                               size_t length,
                                                                               roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_RobotInfoResponse_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsTorqueEnableRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsTorqueEnableRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsTorqueEnableRequest_validate(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest const* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsTorqueEnableRequest_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest const* value,
                                                                                    size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsTorqueEnableRequest_encode(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest const* value,
                                                                                 void* output,
                                                                                 size_t capacity,
                                                                                 size_t* length)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsTorqueEnableRequest_decode(void const* input,
                                                                                 size_t length,
                                                                                 roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableRequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsTorqueEnableResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsTorqueEnableResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsTorqueEnableResponse_validate(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse const* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsTorqueEnableResponse_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsTorqueEnableResponse_encode(roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsTorqueEnableResponse_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_TorqueEnableResponse_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsTurretJoy_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy);
}

size_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsTurretJoy_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsTurretJoy_validate(roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy const* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsTurretJoy_wire_size(roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsTurretJoy_encode(roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Interbotix_xs_msgsTurretJoy_decode(void const* input, size_t length, roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy* value)
{
    return roswasmc_bounded_1_interbotix_xs_msgs_TurretJoy_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsClearErrRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_ClearErrRequest);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsClearErrRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_ClearErrRequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsClearErrRequest_validate(roswasmc_bounded_1_xarm_msgs_ClearErrRequest const* value)
{
    return roswasmc_bounded_1_xarm_msgs_ClearErrRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsClearErrRequest_wire_size(roswasmc_bounded_1_xarm_msgs_ClearErrRequest const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_ClearErrRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_ClearErrRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsClearErrRequest_encode(roswasmc_bounded_1_xarm_msgs_ClearErrRequest const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_ClearErrRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsClearErrRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_ClearErrRequest* value)
{
    return roswasmc_bounded_1_xarm_msgs_ClearErrRequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsClearErrResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_ClearErrResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsClearErrResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_ClearErrResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsClearErrResponse_validate(roswasmc_bounded_1_xarm_msgs_ClearErrResponse const* value)
{
    return roswasmc_bounded_1_xarm_msgs_ClearErrResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsClearErrResponse_wire_size(roswasmc_bounded_1_xarm_msgs_ClearErrResponse const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_ClearErrResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_ClearErrResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsClearErrResponse_encode(roswasmc_bounded_1_xarm_msgs_ClearErrResponse const* value,
                                                                     void* output,
                                                                     size_t capacity,
                                                                     size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_ClearErrResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsClearErrResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_ClearErrResponse* value)
{
    return roswasmc_bounded_1_xarm_msgs_ClearErrResponse_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsConfigToolModbusRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsConfigToolModbusRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsConfigToolModbusRequest_validate(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest const* value)
{
    return roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsConfigToolModbusRequest_wire_size(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest const* value,
                                                                               size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsConfigToolModbusRequest_encode(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest const* value,
                                                                            void* output,
                                                                            size_t capacity,
                                                                            size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsConfigToolModbusRequest_decode(void const* input,
                                                                            size_t length,
                                                                            roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest* value)
{
    return roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsConfigToolModbusResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsConfigToolModbusResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsConfigToolModbusResponse_validate(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse const* value)
{
    return roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsConfigToolModbusResponse_wire_size(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse const* value,
                                                                                size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsConfigToolModbusResponse_encode(roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse const* value,
                                                                             void* output,
                                                                             size_t capacity,
                                                                             size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsConfigToolModbusResponse_decode(void const* input,
                                                                             size_t length,
                                                                             roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse* value)
{
    return roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetAnalogIORequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetAnalogIORequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetAnalogIORequest_validate(roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest const* value)
{
    return roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetAnalogIORequest_wire_size(roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetAnalogIORequest_encode(roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetAnalogIORequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest* value)
{
    return roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetAnalogIOResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetAnalogIOResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetAnalogIOResponse_validate(roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse const* value)
{
    return roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetAnalogIOResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetAnalogIOResponse_encode(roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_encode(value, output, capacity, length);
}

uint32_t
    uwvm_trossen_ros1_main_Ros1Xarm_msgsGetAnalogIOResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse* value)
{
    return roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetControllerDigitalIORequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetControllerDigitalIORequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetControllerDigitalIORequest_validate(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest const* value)
{
    return roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetControllerDigitalIORequest_wire_size(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest const* value,
                                                                                     size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetControllerDigitalIORequest_encode(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest const* value,
                                                                                  void* output,
                                                                                  size_t capacity,
                                                                                  size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetControllerDigitalIORequest_decode(void const* input,
                                                                                  size_t length,
                                                                                  roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest* value)
{
    return roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetControllerDigitalIOResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetControllerDigitalIOResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetControllerDigitalIOResponse_validate(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse const* value)
{
    return roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetControllerDigitalIOResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse const* value,
                                                                                      size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_valid(value) ||
       uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetControllerDigitalIOResponse_encode(roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse const* value,
                                                                                   void* output,
                                                                                   size_t capacity,
                                                                                   size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetControllerDigitalIOResponse_decode(void const* input,
                                                                                   size_t length,
                                                                                   roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse* value)
{
    return roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetDigitalIORequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetDigitalIORequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetDigitalIORequest_validate(roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest const* value)
{
    return roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetDigitalIORequest_wire_size(roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetDigitalIORequest_encode(roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_encode(value, output, capacity, length);
}

uint32_t
    uwvm_trossen_ros1_main_Ros1Xarm_msgsGetDigitalIORequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest* value)
{
    return roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetDigitalIOResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetDigitalIOResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetDigitalIOResponse_validate(roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse const* value)
{
    return roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetDigitalIOResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetDigitalIOResponse_encode(roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_encode(value, output, capacity, length);
}

uint32_t
    uwvm_trossen_ros1_main_Ros1Xarm_msgsGetDigitalIOResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse* value)
{
    return roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetErrRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_GetErrRequest);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetErrRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_GetErrRequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetErrRequest_validate(roswasmc_bounded_1_xarm_msgs_GetErrRequest const* value)
{
    return roswasmc_bounded_1_xarm_msgs_GetErrRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetErrRequest_wire_size(roswasmc_bounded_1_xarm_msgs_GetErrRequest const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_GetErrRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_GetErrRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetErrRequest_encode(roswasmc_bounded_1_xarm_msgs_GetErrRequest const* value,
                                                                  void* output,
                                                                  size_t capacity,
                                                                  size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_GetErrRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetErrRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GetErrRequest* value)
{
    return roswasmc_bounded_1_xarm_msgs_GetErrRequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetErrResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_GetErrResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetErrResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_GetErrResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetErrResponse_validate(roswasmc_bounded_1_xarm_msgs_GetErrResponse const* value)
{
    return roswasmc_bounded_1_xarm_msgs_GetErrResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetErrResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GetErrResponse const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_GetErrResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_GetErrResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetErrResponse_encode(roswasmc_bounded_1_xarm_msgs_GetErrResponse const* value,
                                                                   void* output,
                                                                   size_t capacity,
                                                                   size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_GetErrResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGetErrResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GetErrResponse* value)
{
    return roswasmc_bounded_1_xarm_msgs_GetErrResponse_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperConfigRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_GripperConfigRequest);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperConfigRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_GripperConfigRequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperConfigRequest_validate(roswasmc_bounded_1_xarm_msgs_GripperConfigRequest const* value)
{
    return roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperConfigRequest_wire_size(roswasmc_bounded_1_xarm_msgs_GripperConfigRequest const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperConfigRequest_encode(roswasmc_bounded_1_xarm_msgs_GripperConfigRequest const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_encode(value, output, capacity, length);
}

uint32_t
    uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperConfigRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GripperConfigRequest* value)
{
    return roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperConfigResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_GripperConfigResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperConfigResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_GripperConfigResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperConfigResponse_validate(roswasmc_bounded_1_xarm_msgs_GripperConfigResponse const* value)
{
    return roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperConfigResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GripperConfigResponse const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperConfigResponse_encode(roswasmc_bounded_1_xarm_msgs_GripperConfigResponse const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperConfigResponse_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_1_xarm_msgs_GripperConfigResponse* value)
{
    return roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperMoveRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_GripperMoveRequest);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperMoveRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_GripperMoveRequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperMoveRequest_validate(roswasmc_bounded_1_xarm_msgs_GripperMoveRequest const* value)
{
    return roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperMoveRequest_wire_size(roswasmc_bounded_1_xarm_msgs_GripperMoveRequest const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperMoveRequest_encode(roswasmc_bounded_1_xarm_msgs_GripperMoveRequest const* value,
                                                                       void* output,
                                                                       size_t capacity,
                                                                       size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperMoveRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GripperMoveRequest* value)
{
    return roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperMoveResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_GripperMoveResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperMoveResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_GripperMoveResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperMoveResponse_validate(roswasmc_bounded_1_xarm_msgs_GripperMoveResponse const* value)
{
    return roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperMoveResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GripperMoveResponse const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperMoveResponse_encode(roswasmc_bounded_1_xarm_msgs_GripperMoveResponse const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_encode(value, output, capacity, length);
}

uint32_t
    uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperMoveResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GripperMoveResponse* value)
{
    return roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperStateRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_GripperStateRequest);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperStateRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_GripperStateRequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperStateRequest_validate(roswasmc_bounded_1_xarm_msgs_GripperStateRequest const* value)
{
    return roswasmc_bounded_1_xarm_msgs_GripperStateRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperStateRequest_wire_size(roswasmc_bounded_1_xarm_msgs_GripperStateRequest const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_GripperStateRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_GripperStateRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperStateRequest_encode(roswasmc_bounded_1_xarm_msgs_GripperStateRequest const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_GripperStateRequest_encode(value, output, capacity, length);
}

uint32_t
    uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperStateRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GripperStateRequest* value)
{
    return roswasmc_bounded_1_xarm_msgs_GripperStateRequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperStateResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_GripperStateResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperStateResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_GripperStateResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperStateResponse_validate(roswasmc_bounded_1_xarm_msgs_GripperStateResponse const* value)
{
    return roswasmc_bounded_1_xarm_msgs_GripperStateResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperStateResponse_wire_size(roswasmc_bounded_1_xarm_msgs_GripperStateResponse const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_GripperStateResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_GripperStateResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperStateResponse_encode(roswasmc_bounded_1_xarm_msgs_GripperStateResponse const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_GripperStateResponse_encode(value, output, capacity, length);
}

uint32_t
    uwvm_trossen_ros1_main_Ros1Xarm_msgsGripperStateResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_GripperStateResponse* value)
{
    return roswasmc_bounded_1_xarm_msgs_GripperStateResponse_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsIOState_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_IOState);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsIOState_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_IOState);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsIOState_validate(roswasmc_bounded_1_xarm_msgs_IOState const* value)
{
    return roswasmc_bounded_1_xarm_msgs_IOState_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsIOState_wire_size(roswasmc_bounded_1_xarm_msgs_IOState const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_IOState_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_IOState_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsIOState_encode(roswasmc_bounded_1_xarm_msgs_IOState const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_IOState_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsIOState_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_IOState* value)
{
    return roswasmc_bounded_1_xarm_msgs_IOState_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsMoveRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_MoveRequest);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsMoveRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_MoveRequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsMoveRequest_validate(roswasmc_bounded_1_xarm_msgs_MoveRequest const* value)
{
    return roswasmc_bounded_1_xarm_msgs_MoveRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsMoveRequest_wire_size(roswasmc_bounded_1_xarm_msgs_MoveRequest const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_MoveRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_MoveRequest_wire_size(value);
    return 0u;
}

uint32_t
    uwvm_trossen_ros1_main_Ros1Xarm_msgsMoveRequest_encode(roswasmc_bounded_1_xarm_msgs_MoveRequest const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_MoveRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsMoveRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_MoveRequest* value)
{
    return roswasmc_bounded_1_xarm_msgs_MoveRequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsMoveResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_MoveResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsMoveResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_MoveResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsMoveResponse_validate(roswasmc_bounded_1_xarm_msgs_MoveResponse const* value)
{
    return roswasmc_bounded_1_xarm_msgs_MoveResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsMoveResponse_wire_size(roswasmc_bounded_1_xarm_msgs_MoveResponse const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_MoveResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_MoveResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsMoveResponse_encode(roswasmc_bounded_1_xarm_msgs_MoveResponse const* value,
                                                                 void* output,
                                                                 size_t capacity,
                                                                 size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_MoveResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsMoveResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_MoveResponse* value)
{
    return roswasmc_bounded_1_xarm_msgs_MoveResponse_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsRobotMsg_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_RobotMsg);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsRobotMsg_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_RobotMsg);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsRobotMsg_validate(roswasmc_bounded_1_xarm_msgs_RobotMsg const* value)
{
    return roswasmc_bounded_1_xarm_msgs_RobotMsg_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsRobotMsg_wire_size(roswasmc_bounded_1_xarm_msgs_RobotMsg const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_RobotMsg_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_RobotMsg_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsRobotMsg_encode(roswasmc_bounded_1_xarm_msgs_RobotMsg const* value, void* output, size_t capacity, size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_RobotMsg_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsRobotMsg_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_RobotMsg* value)
{
    return roswasmc_bounded_1_xarm_msgs_RobotMsg_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetAxisRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_SetAxisRequest);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetAxisRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_SetAxisRequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetAxisRequest_validate(roswasmc_bounded_1_xarm_msgs_SetAxisRequest const* value)
{
    return roswasmc_bounded_1_xarm_msgs_SetAxisRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetAxisRequest_wire_size(roswasmc_bounded_1_xarm_msgs_SetAxisRequest const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetAxisRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_SetAxisRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetAxisRequest_encode(roswasmc_bounded_1_xarm_msgs_SetAxisRequest const* value,
                                                                   void* output,
                                                                   size_t capacity,
                                                                   size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_SetAxisRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetAxisRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetAxisRequest* value)
{
    return roswasmc_bounded_1_xarm_msgs_SetAxisRequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetAxisResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_SetAxisResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetAxisResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_SetAxisResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetAxisResponse_validate(roswasmc_bounded_1_xarm_msgs_SetAxisResponse const* value)
{
    return roswasmc_bounded_1_xarm_msgs_SetAxisResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetAxisResponse_wire_size(roswasmc_bounded_1_xarm_msgs_SetAxisResponse const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetAxisResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_SetAxisResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetAxisResponse_encode(roswasmc_bounded_1_xarm_msgs_SetAxisResponse const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_SetAxisResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetAxisResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetAxisResponse* value)
{
    return roswasmc_bounded_1_xarm_msgs_SetAxisResponse_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetDigitalIORequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetDigitalIORequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetDigitalIORequest_validate(roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest const* value)
{
    return roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetDigitalIORequest_wire_size(roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetDigitalIORequest_encode(roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest const* value,
                                                                        void* output,
                                                                        size_t capacity,
                                                                        size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_encode(value, output, capacity, length);
}

uint32_t
    uwvm_trossen_ros1_main_Ros1Xarm_msgsSetDigitalIORequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest* value)
{
    return roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetDigitalIOResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetDigitalIOResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetDigitalIOResponse_validate(roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse const* value)
{
    return roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetDigitalIOResponse_wire_size(roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetDigitalIOResponse_encode(roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_encode(value, output, capacity, length);
}

uint32_t
    uwvm_trossen_ros1_main_Ros1Xarm_msgsSetDigitalIOResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse* value)
{
    return roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetInt16Request_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_SetInt16Request);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetInt16Request_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_SetInt16Request);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetInt16Request_validate(roswasmc_bounded_1_xarm_msgs_SetInt16Request const* value)
{
    return roswasmc_bounded_1_xarm_msgs_SetInt16Request_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetInt16Request_wire_size(roswasmc_bounded_1_xarm_msgs_SetInt16Request const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetInt16Request_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_SetInt16Request_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetInt16Request_encode(roswasmc_bounded_1_xarm_msgs_SetInt16Request const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_SetInt16Request_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetInt16Request_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetInt16Request* value)
{
    return roswasmc_bounded_1_xarm_msgs_SetInt16Request_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetInt16Response_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_SetInt16Response);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetInt16Response_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_SetInt16Response);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetInt16Response_validate(roswasmc_bounded_1_xarm_msgs_SetInt16Response const* value)
{
    return roswasmc_bounded_1_xarm_msgs_SetInt16Response_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetInt16Response_wire_size(roswasmc_bounded_1_xarm_msgs_SetInt16Response const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetInt16Response_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_SetInt16Response_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetInt16Response_encode(roswasmc_bounded_1_xarm_msgs_SetInt16Response const* value,
                                                                     void* output,
                                                                     size_t capacity,
                                                                     size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_SetInt16Response_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetInt16Response_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetInt16Response* value)
{
    return roswasmc_bounded_1_xarm_msgs_SetInt16Response_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetLoadRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_SetLoadRequest);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetLoadRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_SetLoadRequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetLoadRequest_validate(roswasmc_bounded_1_xarm_msgs_SetLoadRequest const* value)
{
    return roswasmc_bounded_1_xarm_msgs_SetLoadRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetLoadRequest_wire_size(roswasmc_bounded_1_xarm_msgs_SetLoadRequest const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetLoadRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_SetLoadRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetLoadRequest_encode(roswasmc_bounded_1_xarm_msgs_SetLoadRequest const* value,
                                                                   void* output,
                                                                   size_t capacity,
                                                                   size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_SetLoadRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetLoadRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetLoadRequest* value)
{
    return roswasmc_bounded_1_xarm_msgs_SetLoadRequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetLoadResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_SetLoadResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetLoadResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_SetLoadResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetLoadResponse_validate(roswasmc_bounded_1_xarm_msgs_SetLoadResponse const* value)
{
    return roswasmc_bounded_1_xarm_msgs_SetLoadResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetLoadResponse_wire_size(roswasmc_bounded_1_xarm_msgs_SetLoadResponse const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetLoadResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_SetLoadResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetLoadResponse_encode(roswasmc_bounded_1_xarm_msgs_SetLoadResponse const* value,
                                                                    void* output,
                                                                    size_t capacity,
                                                                    size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_SetLoadResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetLoadResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetLoadResponse* value)
{
    return roswasmc_bounded_1_xarm_msgs_SetLoadResponse_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetToolModbusRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetToolModbusRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetToolModbusRequest_validate(roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest const* value)
{
    return roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetToolModbusRequest_wire_size(roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetToolModbusRequest_encode(roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest const* value,
                                                                         void* output,
                                                                         size_t capacity,
                                                                         size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_encode(value, output, capacity, length);
}

uint32_t
    uwvm_trossen_ros1_main_Ros1Xarm_msgsSetToolModbusRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest* value)
{
    return roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetToolModbusResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetToolModbusResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetToolModbusResponse_validate(roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse const* value)
{
    return roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetToolModbusResponse_wire_size(roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetToolModbusResponse_encode(roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse const* value,
                                                                          void* output,
                                                                          size_t capacity,
                                                                          size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsSetToolModbusResponse_decode(void const* input,
                                                                          size_t length,
                                                                          roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse* value)
{
    return roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsTCPOffsetRequest_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsTCPOffsetRequest_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsTCPOffsetRequest_validate(roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest const* value)
{
    return roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsTCPOffsetRequest_wire_size(roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsTCPOffsetRequest_encode(roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest const* value,
                                                                     void* output,
                                                                     size_t capacity,
                                                                     size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsTCPOffsetRequest_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest* value)
{
    return roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_decode(input, length, value);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsTCPOffsetResponse_storage_size(void)
{
    return sizeof(roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse);
}

size_t uwvm_trossen_ros1_main_Ros1Xarm_msgsTCPOffsetResponse_storage_alignment(void)
{
    return _Alignof(roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsTCPOffsetResponse_validate(roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse const* value)
{
    return roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_valid(value) ? 0u : UWVM_BOUNDED_INVALID;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsTCPOffsetResponse_wire_size(roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse const* value, size_t* length)
{
    if(!length || !roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_valid(value) || uwvm_bounded_overlap(value, sizeof *value, length, sizeof *length))
        return UWVM_BOUNDED_INVALID;
    *length = roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_wire_size(value);
    return 0u;
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsTCPOffsetResponse_encode(roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse const* value,
                                                                      void* output,
                                                                      size_t capacity,
                                                                      size_t* length)
{
    return roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_encode(value, output, capacity, length);
}

uint32_t uwvm_trossen_ros1_main_Ros1Xarm_msgsTCPOffsetResponse_decode(void const* input, size_t length, roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse* value)
{
    return roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_decode(input, length, value);
}
