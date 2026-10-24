/**
 * @file records.c
 * @brief Complete kuka values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/kuka/domains/kuka-ros2-complete.ir.json
 * @see document/platform/kuka/en_US/README.md
 */

#include <kuka/c_ffi_bridge/ros2/kuka-ros2-complete/records.h>

uint32_t kuka_Ros2Builtin_interfacesMsgDuration_encode(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_encode(v, b, n, length);
}

uint32_t kuka_Ros2Builtin_interfacesMsgDuration_decode(void const* b, size_t n, roswasmc_bounded_2_builtin_interfaces_msg_Duration* v)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_decode(b, n, v);
}

uint32_t kuka_Ros2Builtin_interfacesMsgTime_encode(roswasmc_bounded_2_builtin_interfaces_msg_Time const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(v, b, n, length);
}

uint32_t kuka_Ros2Builtin_interfacesMsgTime_decode(void const* b, size_t n, roswasmc_bounded_2_builtin_interfaces_msg_Time* v)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(b, n, v);
}

uint32_t kuka_Ros2Std_msgsMsgHeader_encode(roswasmc_bounded_2_std_msgs_msg_Header const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_encode(v, b, n, length);
}

uint32_t kuka_Ros2Std_msgsMsgHeader_decode(void const* b, size_t n, roswasmc_bounded_2_std_msgs_msg_Header* v)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_decode(b, n, v);
}

uint32_t kuka_Ros2Trajectory_msgsMsgJointTrajectoryPoint_encode(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* v,
                                                                void* b,
                                                                size_t n,
                                                                size_t* length)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_encode(v, b, n, length);
}

uint32_t kuka_Ros2Trajectory_msgsMsgJointTrajectoryPoint_decode(void const* b, size_t n, roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint* v)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_decode(b, n, v);
}

uint32_t kuka_Ros2Trajectory_msgsMsgJointTrajectory_encode(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_encode(v, b, n, length);
}

uint32_t kuka_Ros2Trajectory_msgsMsgJointTrajectory_decode(void const* b, size_t n, roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory* v)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_decode(b, n, v);
}

uint32_t kuka_Ros2Geometry_msgsMsgVector3_encode(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode(v, b, n, length);
}

uint32_t kuka_Ros2Geometry_msgsMsgVector3_decode(void const* b, size_t n, roswasmc_bounded_2_geometry_msgs_msg_Vector3* v)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_decode(b, n, v);
}

uint32_t kuka_Ros2Geometry_msgsMsgQuaternion_encode(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(v, b, n, length);
}

uint32_t kuka_Ros2Geometry_msgsMsgQuaternion_decode(void const* b, size_t n, roswasmc_bounded_2_geometry_msgs_msg_Quaternion* v)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(b, n, v);
}

uint32_t kuka_Ros2Geometry_msgsMsgTransform_encode(roswasmc_bounded_2_geometry_msgs_msg_Transform const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Transform_encode(v, b, n, length);
}

uint32_t kuka_Ros2Geometry_msgsMsgTransform_decode(void const* b, size_t n, roswasmc_bounded_2_geometry_msgs_msg_Transform* v)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Transform_decode(b, n, v);
}

uint32_t kuka_Ros2Geometry_msgsMsgTwist_encode(roswasmc_bounded_2_geometry_msgs_msg_Twist const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_encode(v, b, n, length);
}

uint32_t kuka_Ros2Geometry_msgsMsgTwist_decode(void const* b, size_t n, roswasmc_bounded_2_geometry_msgs_msg_Twist* v)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_decode(b, n, v);
}

uint32_t kuka_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_encode(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint const* v,
                                                                        void* b,
                                                                        size_t n,
                                                                        size_t* length)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_encode(v, b, n, length);
}

uint32_t kuka_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint_decode(void const* b,
                                                                        size_t n,
                                                                        roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint* v)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_decode(b, n, v);
}

uint32_t kuka_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_encode(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory const* v,
                                                                   void* b,
                                                                   size_t n,
                                                                   size_t* length)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_encode(v, b, n, length);
}

uint32_t kuka_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory_decode(void const* b, size_t n, roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory* v)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_decode(b, n, v);
}

uint32_t kuka_Ros2Control_msgsMsgJointTolerance_encode(roswasmc_bounded_2_control_msgs_msg_JointTolerance const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_control_msgs_msg_JointTolerance_encode(v, b, n, length);
}

uint32_t kuka_Ros2Control_msgsMsgJointTolerance_decode(void const* b, size_t n, roswasmc_bounded_2_control_msgs_msg_JointTolerance* v)
{
    return roswasmc_bounded_2_control_msgs_msg_JointTolerance_decode(b, n, v);
}

uint32_t kuka_Ros2Control_msgsMsgJointComponentTolerance_encode(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance const* v,
                                                                void* b,
                                                                size_t n,
                                                                size_t* length)
{
    return roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_encode(v, b, n, length);
}

uint32_t kuka_Ros2Control_msgsMsgJointComponentTolerance_decode(void const* b, size_t n, roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance* v)
{
    return roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_decode(b, n, v);
}

uint32_t kuka_Ros2Control_msgsActionFollowJointTrajectory_Goal_encode(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* v,
                                                                      void* b,
                                                                      size_t n,
                                                                      size_t* length)
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_encode(v, b, n, length);
}

uint32_t
    kuka_Ros2Control_msgsActionFollowJointTrajectory_Goal_decode(void const* b, size_t n, roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal* v)
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_decode(b, n, v);
}

uint32_t kuka_Ros2Control_msgsActionFollowJointTrajectory_Result_encode(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const* v,
                                                                        void* b,
                                                                        size_t n,
                                                                        size_t* length)
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_encode(v, b, n, length);
}

uint32_t kuka_Ros2Control_msgsActionFollowJointTrajectory_Result_decode(void const* b,
                                                                        size_t n,
                                                                        roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result* v)
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_decode(b, n, v);
}

uint32_t kuka_Ros2Control_msgsActionFollowJointTrajectory_Feedback_encode(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const* v,
                                                                          void* b,
                                                                          size_t n,
                                                                          size_t* length)
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_encode(v, b, n, length);
}

uint32_t kuka_Ros2Control_msgsActionFollowJointTrajectory_Feedback_decode(void const* b,
                                                                          size_t n,
                                                                          roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback* v)
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_decode(b, n, v);
}

uint32_t kuka_Ros2Kuka_driver_interfacesMsgFRIState_encode(roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState_encode(v, b, n, length);
}

uint32_t kuka_Ros2Kuka_driver_interfacesMsgFRIState_decode(void const* b, size_t n, roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState* v)
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState_decode(b, n, v);
}

uint32_t kuka_Ros2Kuka_driver_interfacesMsgFRIStateArray_encode(roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray const* v,
                                                                void* b,
                                                                size_t n,
                                                                size_t* length)
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray_encode(v, b, n, length);
}

uint32_t kuka_Ros2Kuka_driver_interfacesMsgFRIStateArray_decode(void const* b, size_t n, roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray* v)
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray_decode(b, n, v);
}

uint32_t kuka_Ros2Kuka_driver_interfacesMsgFriConfiguration_encode(roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration const* v,
                                                                   void* b,
                                                                   size_t n,
                                                                   size_t* length)
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration_encode(v, b, n, length);
}

uint32_t kuka_Ros2Kuka_driver_interfacesMsgFriConfiguration_decode(void const* b, size_t n, roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration* v)
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration_decode(b, n, v);
}

uint32_t kuka_Ros2Kuka_driver_interfacesMsgHardwareEvent_encode(roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent const* v,
                                                                void* b,
                                                                size_t n,
                                                                size_t* length)
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent_encode(v, b, n, length);
}

uint32_t kuka_Ros2Kuka_driver_interfacesMsgHardwareEvent_decode(void const* b, size_t n, roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent* v)
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent_decode(b, n, v);
}

uint32_t kuka_Ros2Kuka_driver_interfacesMsgKssStatus_encode(roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus_encode(v, b, n, length);
}

uint32_t kuka_Ros2Kuka_driver_interfacesMsgKssStatus_decode(void const* b, size_t n, roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus* v)
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus_decode(b, n, v);
}

uint32_t kuka_Ros2Kuka_driver_interfacesMsgKssStatusArray_encode(roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray const* v,
                                                                 void* b,
                                                                 size_t n,
                                                                 size_t* length)
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray_encode(v, b, n, length);
}

uint32_t kuka_Ros2Kuka_driver_interfacesMsgKssStatusArray_decode(void const* b, size_t n, roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray* v)
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray_decode(b, n, v);
}

uint32_t kuka_Ros2Lifecycle_msgsMsgState_encode(roswasmc_bounded_2_lifecycle_msgs_msg_State const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_lifecycle_msgs_msg_State_encode(v, b, n, length);
}

uint32_t kuka_Ros2Lifecycle_msgsMsgState_decode(void const* b, size_t n, roswasmc_bounded_2_lifecycle_msgs_msg_State* v)
{
    return roswasmc_bounded_2_lifecycle_msgs_msg_State_decode(b, n, v);
}

uint32_t kuka_Ros2Lifecycle_msgsMsgTransition_encode(roswasmc_bounded_2_lifecycle_msgs_msg_Transition const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_lifecycle_msgs_msg_Transition_encode(v, b, n, length);
}

uint32_t kuka_Ros2Lifecycle_msgsMsgTransition_decode(void const* b, size_t n, roswasmc_bounded_2_lifecycle_msgs_msg_Transition* v)
{
    return roswasmc_bounded_2_lifecycle_msgs_msg_Transition_decode(b, n, v);
}

uint32_t
    kuka_Ros2Lifecycle_msgsSrvChangeState_Request_encode(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request_encode(v, b, n, length);
}

uint32_t kuka_Ros2Lifecycle_msgsSrvChangeState_Request_decode(void const* b, size_t n, roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request* v)
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request_decode(b, n, v);
}

uint32_t kuka_Ros2Lifecycle_msgsSrvChangeState_Response_encode(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response const* v,
                                                               void* b,
                                                               size_t n,
                                                               size_t* length)
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response_encode(v, b, n, length);
}

uint32_t kuka_Ros2Lifecycle_msgsSrvChangeState_Response_decode(void const* b, size_t n, roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response* v)
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response_decode(b, n, v);
}

uint32_t kuka_Ros2Lifecycle_msgsSrvGetState_Request_encode(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request_encode(v, b, n, length);
}

uint32_t kuka_Ros2Lifecycle_msgsSrvGetState_Request_decode(void const* b, size_t n, roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request* v)
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request_decode(b, n, v);
}

uint32_t kuka_Ros2Lifecycle_msgsSrvGetState_Response_encode(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response_encode(v, b, n, length);
}

uint32_t kuka_Ros2Lifecycle_msgsSrvGetState_Response_decode(void const* b, size_t n, roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response* v)
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response_decode(b, n, v);
}

uint32_t kuka_Ros2Sensor_msgsMsgJointState_encode(roswasmc_bounded_2_sensor_msgs_msg_JointState const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_encode(v, b, n, length);
}

uint32_t kuka_Ros2Sensor_msgsMsgJointState_decode(void const* b, size_t n, roswasmc_bounded_2_sensor_msgs_msg_JointState* v)
{
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(b, n, v);
}

uint32_t kuka_Ros2Std_srvsSrvTrigger_Request_encode(roswasmc_bounded_2_std_srvs_srv_Trigger_Request const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_std_srvs_srv_Trigger_Request_encode(v, b, n, length);
}

uint32_t kuka_Ros2Std_srvsSrvTrigger_Request_decode(void const* b, size_t n, roswasmc_bounded_2_std_srvs_srv_Trigger_Request* v)
{
    return roswasmc_bounded_2_std_srvs_srv_Trigger_Request_decode(b, n, v);
}

uint32_t kuka_Ros2Std_srvsSrvTrigger_Response_encode(roswasmc_bounded_2_std_srvs_srv_Trigger_Response const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_std_srvs_srv_Trigger_Response_encode(v, b, n, length);
}

uint32_t kuka_Ros2Std_srvsSrvTrigger_Response_decode(void const* b, size_t n, roswasmc_bounded_2_std_srvs_srv_Trigger_Response* v)
{
    return roswasmc_bounded_2_std_srvs_srv_Trigger_Response_decode(b, n, v);
}

roswasmc_result
    kuka_roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_send(roswasmc_action_bundle* bundle,
                                                                           roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const* goal,
                                                                           uint64_t* id)
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_send(bundle, goal, id);
}

roswasmc_result
    kuka_roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_feedback(roswasmc_action_bundle const* bundle,
                                                                               uint64_t id,
                                                                               roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback* feedback)
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_feedback(bundle, id, feedback);
}

roswasmc_result
    kuka_roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_result(roswasmc_action_bundle* bundle,
                                                                             uint64_t id,
                                                                             uint8_t* kind,
                                                                             roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result* result)
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_result(bundle, id, kind, result);
}

roswasmc_result kuka_roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* id,
                                                                                       roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal* goal)
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_poll(cap, id, goal);
}

roswasmc_result kuka_roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_feedback(
    roswasmc_capability const* cap,
    uint64_t id,
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const* value)
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_feedback(cap, id, value);
}

roswasmc_result kuka_roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_result(
    roswasmc_capability const* cap,
    uint64_t id,
    uint8_t kind,
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const* value)
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_result(cap, id, kind, value);
}

roswasmc_result kuka_roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request const* request,
                                                                            roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response* response)
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_call(cap, request, response);
}

roswasmc_result kuka_roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_poll(roswasmc_capability const* cap,
                                                                            uint64_t* ticket,
                                                                            roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request* request)
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_poll(cap, ticket, request);
}

roswasmc_result kuka_roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response const* response)
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_respond(cap, ticket, response);
}

roswasmc_result kuka_roswasmc_bounded_2_lifecycle_msgs_srv_GetState_call(roswasmc_capability const* cap,
                                                                         roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request const* request,
                                                                         roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response* response)
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_GetState_call(cap, request, response);
}

roswasmc_result kuka_roswasmc_bounded_2_lifecycle_msgs_srv_GetState_poll(roswasmc_capability const* cap,
                                                                         uint64_t* ticket,
                                                                         roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request* request)
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_GetState_poll(cap, ticket, request);
}

roswasmc_result kuka_roswasmc_bounded_2_lifecycle_msgs_srv_GetState_respond(roswasmc_capability const* cap,
                                                                            uint64_t ticket,
                                                                            roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response const* response)
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_GetState_respond(cap, ticket, response);
}

roswasmc_result kuka_roswasmc_bounded_2_std_srvs_srv_Trigger_call(roswasmc_capability const* cap,
                                                                  roswasmc_bounded_2_std_srvs_srv_Trigger_Request const* request,
                                                                  roswasmc_bounded_2_std_srvs_srv_Trigger_Response* response)
{
    return roswasmc_bounded_2_std_srvs_srv_Trigger_call(cap, request, response);
}

roswasmc_result kuka_roswasmc_bounded_2_std_srvs_srv_Trigger_poll(roswasmc_capability const* cap,
                                                                  uint64_t* ticket,
                                                                  roswasmc_bounded_2_std_srvs_srv_Trigger_Request* request)
{
    return roswasmc_bounded_2_std_srvs_srv_Trigger_poll(cap, ticket, request);
}

roswasmc_result kuka_roswasmc_bounded_2_std_srvs_srv_Trigger_respond(roswasmc_capability const* cap,
                                                                     uint64_t ticket,
                                                                     roswasmc_bounded_2_std_srvs_srv_Trigger_Response const* response)
{
    return roswasmc_bounded_2_std_srvs_srv_Trigger_respond(cap, ticket, response);
}
