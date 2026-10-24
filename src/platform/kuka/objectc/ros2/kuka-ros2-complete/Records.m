/**
 * @file Records.m
 * @brief Complete kuka values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/kuka/domains/kuka-ros2-complete.ir.json
 * @see document/platform/kuka/en_US/README.md
 */

#include <kuka/objectc/ros2/kuka-ros2-complete/Records.h>
@implementation KukaKukaRos2CompleteRos2Builtin_interfacesMsgDuration

+ (uint32_t)encode:(roswasmc_bounded_2_builtin_interfaces_msg_Duration const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_builtin_interfaces_msg_Duration*)v
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Builtin_interfacesMsgTime

+ (uint32_t)encode:(roswasmc_bounded_2_builtin_interfaces_msg_Time const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_builtin_interfaces_msg_Time*)v
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Std_msgsMsgHeader

+ (uint32_t)encode:(roswasmc_bounded_2_std_msgs_msg_Header const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_std_msgs_msg_Header_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_std_msgs_msg_Header*)v
{
    return roswasmc_bounded_2_std_msgs_msg_Header_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Trajectory_msgsMsgJointTrajectoryPoint

+ (uint32_t)encode:(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint*)v
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Trajectory_msgsMsgJointTrajectory

+ (uint32_t)encode:(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory*)v
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Geometry_msgsMsgVector3

+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_geometry_msgs_msg_Vector3*)v
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Geometry_msgsMsgQuaternion

+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_geometry_msgs_msg_Quaternion*)v
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Geometry_msgsMsgTransform

+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Transform const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Transform_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_geometry_msgs_msg_Transform*)v
{
    return roswasmc_bounded_2_geometry_msgs_msg_Transform_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Geometry_msgsMsgTwist

+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Twist const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_geometry_msgs_msg_Twist*)v
{
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint

+ (uint32_t)encode:(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint*)v
{
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Trajectory_msgsMsgMultiDOFJointTrajectory

+ (uint32_t)encode:(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory*)v
{
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Control_msgsMsgJointTolerance

+ (uint32_t)encode:(roswasmc_bounded_2_control_msgs_msg_JointTolerance const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_control_msgs_msg_JointTolerance_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_control_msgs_msg_JointTolerance*)v
{
    return roswasmc_bounded_2_control_msgs_msg_JointTolerance_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Control_msgsMsgJointComponentTolerance

+ (uint32_t)encode:(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance*)v
{
    return roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Control_msgsActionFollowJointTrajectory_Goal

+ (uint32_t)encode:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal*)v
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Control_msgsActionFollowJointTrajectory_Result

+ (uint32_t)encode:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result*)v
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Control_msgsActionFollowJointTrajectory_Feedback

+ (uint32_t)encode:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback*)v
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Kuka_driver_interfacesMsgFRIState

+ (uint32_t)encode:(roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState*)v
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIState_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Kuka_driver_interfacesMsgFRIStateArray

+ (uint32_t)encode:(roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray*)v
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_FRIStateArray_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Kuka_driver_interfacesMsgFriConfiguration

+ (uint32_t)encode:(roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration*)v
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_FriConfiguration_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Kuka_driver_interfacesMsgHardwareEvent

+ (uint32_t)encode:(roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent*)v
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_HardwareEvent_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Kuka_driver_interfacesMsgKssStatus

+ (uint32_t)encode:(roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus*)v
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatus_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Kuka_driver_interfacesMsgKssStatusArray

+ (uint32_t)encode:(roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray*)v
{
    return roswasmc_bounded_2_kuka_driver_interfaces_msg_KssStatusArray_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Lifecycle_msgsMsgState

+ (uint32_t)encode:(roswasmc_bounded_2_lifecycle_msgs_msg_State const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_lifecycle_msgs_msg_State_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_lifecycle_msgs_msg_State*)v
{
    return roswasmc_bounded_2_lifecycle_msgs_msg_State_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Lifecycle_msgsMsgTransition

+ (uint32_t)encode:(roswasmc_bounded_2_lifecycle_msgs_msg_Transition const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_lifecycle_msgs_msg_Transition_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_lifecycle_msgs_msg_Transition*)v
{
    return roswasmc_bounded_2_lifecycle_msgs_msg_Transition_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Lifecycle_msgsSrvChangeState_Request

+ (uint32_t)encode:(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request*)v
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Lifecycle_msgsSrvChangeState_Response

+ (uint32_t)encode:(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response*)v
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Lifecycle_msgsSrvGetState_Request

+ (uint32_t)encode:(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request*)v
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Lifecycle_msgsSrvGetState_Response

+ (uint32_t)encode:(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response*)v
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Sensor_msgsMsgJointState

+ (uint32_t)encode:(roswasmc_bounded_2_sensor_msgs_msg_JointState const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_sensor_msgs_msg_JointState*)v
{
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Std_srvsSrvTrigger_Request

+ (uint32_t)encode:(roswasmc_bounded_2_std_srvs_srv_Trigger_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_std_srvs_srv_Trigger_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_std_srvs_srv_Trigger_Request*)v
{
    return roswasmc_bounded_2_std_srvs_srv_Trigger_Request_decode(b, n, v);
}

@end
@implementation KukaKukaRos2CompleteRos2Std_srvsSrvTrigger_Response

+ (uint32_t)encode:(roswasmc_bounded_2_std_srvs_srv_Trigger_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_std_srvs_srv_Trigger_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_std_srvs_srv_Trigger_Response*)v
{
    return roswasmc_bounded_2_std_srvs_srv_Trigger_Response_decode(b, n, v);
}

@end

@implementation KukaKukaRos2CompleteInterfaces

+ (roswasmc_result)
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_send:(roswasmc_action_bundle*)bundle
                                                                 goal:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const*)goal
                                                                   id:(uint64_t*)id
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_send(bundle, goal, id);
}

+ (roswasmc_result)
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_feedback:(roswasmc_action_bundle const*)bundle
                                                                       id:(uint64_t)id
                                                                 feedback:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback*)feedback
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_feedback(bundle, id, feedback);
}

+ (roswasmc_result)roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_result:(roswasmc_action_bundle*)bundle
                                                                                    id:(uint64_t)id
                                                                                  kind:(uint8_t*)kind
                                                                                result:
                                                                                    (roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result*)result
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_result(bundle, id, kind, result);
}

+ (roswasmc_result)roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_poll:(roswasmc_capability const*)cap
                                                                                  id:(uint64_t*)id
                                                                                goal:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal*)goal
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_poll(cap, id, goal);
}

+ (roswasmc_result)
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_feedback:(roswasmc_capability const*)cap
                                                                               id:(uint64_t)id
                                                                            value:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const*)
                                                                                      value
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_feedback(cap, id, value);
}

+ (roswasmc_result)
    roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_result:(roswasmc_capability const*)cap
                                                                             id:(uint64_t)id
                                                                           kind:(uint8_t)kind
                                                                          value:
                                                                              (roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const*)value
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_respond_result(cap, id, kind, value);
}

+ (roswasmc_result)roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_call:(roswasmc_capability const*)cap
                                                                  request:(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request const*)request
                                                                 response:(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response*)response
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_poll:(roswasmc_capability const*)cap
                                                                   ticket:(uint64_t*)ticket
                                                                  request:(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Request*)request
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_respond:(roswasmc_capability const*)cap
                                                                      ticket:(uint64_t)ticket
                                                                    response:(roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_Response const*)response
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_ChangeState_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_lifecycle_msgs_srv_GetState_call:(roswasmc_capability const*)cap
                                                               request:(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request const*)request
                                                              response:(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response*)response
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_GetState_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_lifecycle_msgs_srv_GetState_poll:(roswasmc_capability const*)cap
                                                                ticket:(uint64_t*)ticket
                                                               request:(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Request*)request
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_GetState_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_lifecycle_msgs_srv_GetState_respond:(roswasmc_capability const*)cap
                                                                   ticket:(uint64_t)ticket
                                                                 response:(roswasmc_bounded_2_lifecycle_msgs_srv_GetState_Response const*)response
{
    return roswasmc_bounded_2_lifecycle_msgs_srv_GetState_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_std_srvs_srv_Trigger_call:(roswasmc_capability const*)cap
                                                        request:(roswasmc_bounded_2_std_srvs_srv_Trigger_Request const*)request
                                                       response:(roswasmc_bounded_2_std_srvs_srv_Trigger_Response*)response
{
    return roswasmc_bounded_2_std_srvs_srv_Trigger_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_std_srvs_srv_Trigger_poll:(roswasmc_capability const*)cap
                                                         ticket:(uint64_t*)ticket
                                                        request:(roswasmc_bounded_2_std_srvs_srv_Trigger_Request*)request
{
    return roswasmc_bounded_2_std_srvs_srv_Trigger_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_std_srvs_srv_Trigger_respond:(roswasmc_capability const*)cap
                                                            ticket:(uint64_t)ticket
                                                          response:(roswasmc_bounded_2_std_srvs_srv_Trigger_Response const*)response
{
    return roswasmc_bounded_2_std_srvs_srv_Trigger_respond(cap, ticket, response);
}

@end
