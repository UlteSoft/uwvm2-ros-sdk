/** @file records.c
 * @brief Export full original codecs for explicitly selected C FFI callers.
 */
#include <franka/c_ffi_bridge/ros1/records.h>
#if defined(__wasm__)
# define BRIDGE_EXPORT(type, name, arguments) __attribute__((export_name(#name))) type name arguments
#else
# define BRIDGE_EXPORT(type, name, arguments) type name arguments
#endif
BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_example_controllersJointTorqueComparison_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_example_controllersJointTorqueComparison_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros1_Ros1Franka_example_controllersJointTorqueComparison_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_decode(
        wire,
        length,
        (roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros1_Ros1Franka_example_controllersJointTorqueComparison_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison_encode(
        (roswasmc_bounded_1_franka_example_controllers_JointTorqueComparison const*)value,
        wire,
        capacity,
        length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperGraspEpsilon_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_gripper_GraspEpsilon);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperGraspEpsilon_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_gripper_GraspEpsilon);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperGraspEpsilon_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_GraspEpsilon) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_GraspEpsilon))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_GraspEpsilon_decode(wire, length, (roswasmc_bounded_1_franka_gripper_GraspEpsilon*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperGraspEpsilon_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_GraspEpsilon) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_GraspEpsilon))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_GraspEpsilon_encode((roswasmc_bounded_1_franka_gripper_GraspEpsilon const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperGraspGoal_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_gripper_GraspGoal);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperGraspGoal_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_gripper_GraspGoal);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperGraspGoal_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_GraspGoal) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_GraspGoal))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_GraspGoal_decode(wire, length, (roswasmc_bounded_1_franka_gripper_GraspGoal*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperGraspGoal_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_GraspGoal) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_GraspGoal))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_GraspGoal_encode((roswasmc_bounded_1_franka_gripper_GraspGoal const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperGraspResult_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_gripper_GraspResult);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperGraspResult_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_gripper_GraspResult);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperGraspResult_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_GraspResult) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_GraspResult))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_GraspResult_decode(wire, length, (roswasmc_bounded_1_franka_gripper_GraspResult*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperGraspResult_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_GraspResult) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_GraspResult))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_GraspResult_encode((roswasmc_bounded_1_franka_gripper_GraspResult const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperGraspFeedback_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_gripper_GraspFeedback);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperGraspFeedback_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_gripper_GraspFeedback);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperGraspFeedback_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_GraspFeedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_GraspFeedback))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_GraspFeedback_decode(wire, length, (roswasmc_bounded_1_franka_gripper_GraspFeedback*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros1_Ros1Franka_gripperGraspFeedback_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_GraspFeedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_GraspFeedback))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_GraspFeedback_encode((roswasmc_bounded_1_franka_gripper_GraspFeedback const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperHomingGoal_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_gripper_HomingGoal);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperHomingGoal_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_gripper_HomingGoal);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperHomingGoal_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_HomingGoal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_HomingGoal))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_HomingGoal_decode(wire, length, (roswasmc_bounded_1_franka_gripper_HomingGoal*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperHomingGoal_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_HomingGoal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_HomingGoal))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_HomingGoal_encode((roswasmc_bounded_1_franka_gripper_HomingGoal const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperHomingResult_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_gripper_HomingResult);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperHomingResult_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_gripper_HomingResult);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperHomingResult_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_HomingResult) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_HomingResult))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_HomingResult_decode(wire, length, (roswasmc_bounded_1_franka_gripper_HomingResult*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperHomingResult_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_HomingResult) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_HomingResult))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_HomingResult_encode((roswasmc_bounded_1_franka_gripper_HomingResult const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperHomingFeedback_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_gripper_HomingFeedback);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperHomingFeedback_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_gripper_HomingFeedback);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperHomingFeedback_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_HomingFeedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_HomingFeedback))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_HomingFeedback_decode(wire, length, (roswasmc_bounded_1_franka_gripper_HomingFeedback*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros1_Ros1Franka_gripperHomingFeedback_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_HomingFeedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_HomingFeedback))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_HomingFeedback_encode((roswasmc_bounded_1_franka_gripper_HomingFeedback const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperMoveGoal_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_gripper_MoveGoal);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperMoveGoal_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_gripper_MoveGoal);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperMoveGoal_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_MoveGoal) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_MoveGoal))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_MoveGoal_decode(wire, length, (roswasmc_bounded_1_franka_gripper_MoveGoal*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperMoveGoal_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_MoveGoal) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_MoveGoal))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_MoveGoal_encode((roswasmc_bounded_1_franka_gripper_MoveGoal const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperMoveResult_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_gripper_MoveResult);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperMoveResult_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_gripper_MoveResult);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperMoveResult_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_MoveResult) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_MoveResult))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_MoveResult_decode(wire, length, (roswasmc_bounded_1_franka_gripper_MoveResult*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperMoveResult_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_MoveResult) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_MoveResult))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_MoveResult_encode((roswasmc_bounded_1_franka_gripper_MoveResult const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperMoveFeedback_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_gripper_MoveFeedback);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperMoveFeedback_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_gripper_MoveFeedback);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperMoveFeedback_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_MoveFeedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_MoveFeedback))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_MoveFeedback_decode(wire, length, (roswasmc_bounded_1_franka_gripper_MoveFeedback*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperMoveFeedback_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_MoveFeedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_MoveFeedback))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_MoveFeedback_encode((roswasmc_bounded_1_franka_gripper_MoveFeedback const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperStopGoal_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_gripper_StopGoal);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperStopGoal_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_gripper_StopGoal);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperStopGoal_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_StopGoal) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_StopGoal))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_StopGoal_decode(wire, length, (roswasmc_bounded_1_franka_gripper_StopGoal*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperStopGoal_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_StopGoal) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_StopGoal))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_StopGoal_encode((roswasmc_bounded_1_franka_gripper_StopGoal const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperStopResult_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_gripper_StopResult);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperStopResult_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_gripper_StopResult);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperStopResult_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_StopResult) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_StopResult))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_StopResult_decode(wire, length, (roswasmc_bounded_1_franka_gripper_StopResult*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperStopResult_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_StopResult) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_StopResult))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_StopResult_encode((roswasmc_bounded_1_franka_gripper_StopResult const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperStopFeedback_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_gripper_StopFeedback);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_gripperStopFeedback_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_gripper_StopFeedback);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperStopFeedback_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_StopFeedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_StopFeedback))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_StopFeedback_decode(wire, length, (roswasmc_bounded_1_franka_gripper_StopFeedback*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_gripperStopFeedback_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_gripper_StopFeedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_gripper_StopFeedback))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_gripper_StopFeedback_encode((roswasmc_bounded_1_franka_gripper_StopFeedback const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsErrorRecoveryGoal_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsErrorRecoveryGoal_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_msgsErrorRecoveryGoal_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_decode(wire, length, (roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros1_Ros1Franka_msgsErrorRecoveryGoal_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal_encode((roswasmc_bounded_1_franka_msgs_ErrorRecoveryGoal const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsErrorRecoveryResult_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsErrorRecoveryResult_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_msgsErrorRecoveryResult_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_decode(wire, length, (roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros1_Ros1Franka_msgsErrorRecoveryResult_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult_encode((roswasmc_bounded_1_franka_msgs_ErrorRecoveryResult const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsErrorRecoveryFeedback_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsErrorRecoveryFeedback_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_msgsErrorRecoveryFeedback_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_decode(wire, length, (roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros1_Ros1Franka_msgsErrorRecoveryFeedback_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback_encode((roswasmc_bounded_1_franka_msgs_ErrorRecoveryFeedback const*)value,
                                                                       wire,
                                                                       capacity,
                                                                       length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsErrors_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_msgs_Errors);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsErrors_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_msgs_Errors);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_msgsErrors_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_Errors) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_Errors))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_Errors_decode(wire, length, (roswasmc_bounded_1_franka_msgs_Errors*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_msgsErrors_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_Errors) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_Errors))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_Errors_encode((roswasmc_bounded_1_franka_msgs_Errors const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Time_size, (void))
{
    return sizeof(roswasmc_bounded_1_time);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Time_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_time);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Time_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_time) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_time))
    {
        return 22;
    }
    return roswasmc_bounded_1_time_decode(wire, length, (roswasmc_bounded_1_time*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Time_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_time) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_time))
    {
        return 22;
    }
    return roswasmc_bounded_1_time_encode((roswasmc_bounded_1_time const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Std_msgsHeader_size, (void))
{
    return sizeof(roswasmc_bounded_1_std_msgs_Header);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Std_msgsHeader_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_std_msgs_Header);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Std_msgsHeader_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_std_msgs_Header) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_std_msgs_Header))
    {
        return 22;
    }
    return roswasmc_bounded_1_std_msgs_Header_decode(wire, length, (roswasmc_bounded_1_std_msgs_Header*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Std_msgsHeader_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_std_msgs_Header) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_std_msgs_Header))
    {
        return 22;
    }
    return roswasmc_bounded_1_std_msgs_Header_encode((roswasmc_bounded_1_std_msgs_Header const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsFrankaState_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_msgs_FrankaState);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsFrankaState_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_msgs_FrankaState);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_msgsFrankaState_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_FrankaState) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_FrankaState))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_FrankaState_decode(wire, length, (roswasmc_bounded_1_franka_msgs_FrankaState*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_msgsFrankaState_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_FrankaState) || (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_FrankaState))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_FrankaState_encode((roswasmc_bounded_1_franka_msgs_FrankaState const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetCartesianImpedanceRequest_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetCartesianImpedanceRequest_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_msgsSetCartesianImpedanceRequest_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_decode(wire,
                                                                              length,
                                                                              (roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros1_Ros1Franka_msgsSetCartesianImpedanceRequest_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest_encode((roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceRequest const*)value,
                                                                              wire,
                                                                              capacity,
                                                                              length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetCartesianImpedanceResponse_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetCartesianImpedanceResponse_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_msgsSetCartesianImpedanceResponse_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_decode(wire,
                                                                               length,
                                                                               (roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros1_Ros1Franka_msgsSetCartesianImpedanceResponse_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse_encode((roswasmc_bounded_1_franka_msgs_SetCartesianImpedanceResponse const*)value,
                                                                               wire,
                                                                               capacity,
                                                                               length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetEEFrameRequest_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_msgs_SetEEFrameRequest);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetEEFrameRequest_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_msgs_SetEEFrameRequest);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_msgsSetEEFrameRequest_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetEEFrameRequest) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetEEFrameRequest))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_decode(wire, length, (roswasmc_bounded_1_franka_msgs_SetEEFrameRequest*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros1_Ros1Franka_msgsSetEEFrameRequest_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetEEFrameRequest) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetEEFrameRequest))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetEEFrameRequest_encode((roswasmc_bounded_1_franka_msgs_SetEEFrameRequest const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetEEFrameResponse_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_msgs_SetEEFrameResponse);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetEEFrameResponse_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_msgs_SetEEFrameResponse);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_msgsSetEEFrameResponse_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetEEFrameResponse) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetEEFrameResponse))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_decode(wire, length, (roswasmc_bounded_1_franka_msgs_SetEEFrameResponse*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros1_Ros1Franka_msgsSetEEFrameResponse_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetEEFrameResponse) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetEEFrameResponse))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetEEFrameResponse_encode((roswasmc_bounded_1_franka_msgs_SetEEFrameResponse const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros1_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_decode(
        wire,
        length,
        (roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros1_Ros1Franka_msgsSetForceTorqueCollisionBehaviorRequest_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest_encode(
        (roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorRequest const*)value,
        wire,
        capacity,
        length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros1_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse_decode,
              (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_decode(
        wire,
        length,
        (roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros1_Ros1Franka_msgsSetForceTorqueCollisionBehaviorResponse_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse_encode(
        (roswasmc_bounded_1_franka_msgs_SetForceTorqueCollisionBehaviorResponse const*)value,
        wire,
        capacity,
        length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetFullCollisionBehaviorRequest_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetFullCollisionBehaviorRequest_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_msgsSetFullCollisionBehaviorRequest_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_decode(wire,
                                                                                 length,
                                                                                 (roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros1_Ros1Franka_msgsSetFullCollisionBehaviorRequest_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest_encode((roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorRequest const*)value,
                                                                                 wire,
                                                                                 capacity,
                                                                                 length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetFullCollisionBehaviorResponse_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetFullCollisionBehaviorResponse_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_msgsSetFullCollisionBehaviorResponse_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_decode(wire,
                                                                                  length,
                                                                                  (roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros1_Ros1Franka_msgsSetFullCollisionBehaviorResponse_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse_encode((roswasmc_bounded_1_franka_msgs_SetFullCollisionBehaviorResponse const*)value,
                                                                                  wire,
                                                                                  capacity,
                                                                                  length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetJointImpedanceRequest_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetJointImpedanceRequest_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_msgsSetJointImpedanceRequest_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_decode(wire, length, (roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros1_Ros1Franka_msgsSetJointImpedanceRequest_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest_encode((roswasmc_bounded_1_franka_msgs_SetJointImpedanceRequest const*)value,
                                                                          wire,
                                                                          capacity,
                                                                          length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetJointImpedanceResponse_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetJointImpedanceResponse_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_msgsSetJointImpedanceResponse_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_decode(wire, length, (roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros1_Ros1Franka_msgsSetJointImpedanceResponse_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse_encode((roswasmc_bounded_1_franka_msgs_SetJointImpedanceResponse const*)value,
                                                                           wire,
                                                                           capacity,
                                                                           length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetKFrameRequest_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_msgs_SetKFrameRequest);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetKFrameRequest_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_msgs_SetKFrameRequest);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_msgsSetKFrameRequest_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetKFrameRequest) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetKFrameRequest))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetKFrameRequest_decode(wire, length, (roswasmc_bounded_1_franka_msgs_SetKFrameRequest*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros1_Ros1Franka_msgsSetKFrameRequest_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetKFrameRequest) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetKFrameRequest))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetKFrameRequest_encode((roswasmc_bounded_1_franka_msgs_SetKFrameRequest const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetKFrameResponse_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_msgs_SetKFrameResponse);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetKFrameResponse_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_msgs_SetKFrameResponse);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_msgsSetKFrameResponse_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetKFrameResponse) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetKFrameResponse))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetKFrameResponse_decode(wire, length, (roswasmc_bounded_1_franka_msgs_SetKFrameResponse*)value);
}

BRIDGE_EXPORT(uint32_t,
              franka_ros1_Ros1Franka_msgsSetKFrameResponse_encode,
              (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetKFrameResponse) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetKFrameResponse))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetKFrameResponse_encode((roswasmc_bounded_1_franka_msgs_SetKFrameResponse const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetLoadRequest_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_msgs_SetLoadRequest);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetLoadRequest_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_msgs_SetLoadRequest);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_msgsSetLoadRequest_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetLoadRequest) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetLoadRequest))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetLoadRequest_decode(wire, length, (roswasmc_bounded_1_franka_msgs_SetLoadRequest*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_msgsSetLoadRequest_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetLoadRequest) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetLoadRequest))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetLoadRequest_encode((roswasmc_bounded_1_franka_msgs_SetLoadRequest const*)value, wire, capacity, length);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetLoadResponse_size, (void))
{
    return sizeof(roswasmc_bounded_1_franka_msgs_SetLoadResponse);
}

BRIDGE_EXPORT(size_t, franka_ros1_Ros1Franka_msgsSetLoadResponse_alignment, (void))
{
    return _Alignof(roswasmc_bounded_1_franka_msgs_SetLoadResponse);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_msgsSetLoadResponse_decode, (void const* wire, size_t length, void* value, size_t value_bytes))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetLoadResponse) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetLoadResponse))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetLoadResponse_decode(wire, length, (roswasmc_bounded_1_franka_msgs_SetLoadResponse*)value);
}

BRIDGE_EXPORT(uint32_t, franka_ros1_Ros1Franka_msgsSetLoadResponse_encode, (void const* value, size_t value_bytes, void* wire, size_t capacity, size_t* length))
{
    if(!value || value_bytes != sizeof(roswasmc_bounded_1_franka_msgs_SetLoadResponse) ||
       (uintptr_t)value % _Alignof(roswasmc_bounded_1_franka_msgs_SetLoadResponse))
    {
        return 22;
    }
    return roswasmc_bounded_1_franka_msgs_SetLoadResponse_encode((roswasmc_bounded_1_franka_msgs_SetLoadResponse const*)value, wire, capacity, length);
}

#undef BRIDGE_EXPORT
