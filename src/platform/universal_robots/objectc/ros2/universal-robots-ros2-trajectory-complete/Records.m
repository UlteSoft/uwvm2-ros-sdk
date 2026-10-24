/**
 * @file Records.m
 * @brief Complete universal_robots values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/universal_robots/domains/universal-robots-ros2-trajectory-complete.ir.json
 * @see document/platform/universal_robots/en_US/README.md
 */

#include <universal_robots/objectc/ros2/universal-robots-ros2-trajectory-complete/Records.h>
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Builtin_interfacesMsgDuration

+ (uint32_t)encode:(roswasmc_bounded_2_builtin_interfaces_msg_Duration const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_builtin_interfaces_msg_Duration*)v
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Builtin_interfacesMsgTime

+ (uint32_t)encode:(roswasmc_bounded_2_builtin_interfaces_msg_Time const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_builtin_interfaces_msg_Time*)v
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Std_msgsMsgHeader

+ (uint32_t)encode:(roswasmc_bounded_2_std_msgs_msg_Header const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_std_msgs_msg_Header_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_std_msgs_msg_Header*)v
{
    return roswasmc_bounded_2_std_msgs_msg_Header_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Trajectory_msgsMsgJointTrajectoryPoint

+ (uint32_t)encode:(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint*)v
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Trajectory_msgsMsgJointTrajectory

+ (uint32_t)encode:(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory*)v
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Geometry_msgsMsgVector3

+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_geometry_msgs_msg_Vector3*)v
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Geometry_msgsMsgQuaternion

+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_geometry_msgs_msg_Quaternion*)v
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Geometry_msgsMsgTransform

+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Transform const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Transform_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_geometry_msgs_msg_Transform*)v
{
    return roswasmc_bounded_2_geometry_msgs_msg_Transform_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Geometry_msgsMsgTwist

+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Twist const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_geometry_msgs_msg_Twist*)v
{
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint

+ (uint32_t)encode:(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint*)v
{
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectoryPoint_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Trajectory_msgsMsgMultiDOFJointTrajectory

+ (uint32_t)encode:(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory*)v
{
    return roswasmc_bounded_2_trajectory_msgs_msg_MultiDOFJointTrajectory_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Control_msgsMsgJointTolerance

+ (uint32_t)encode:(roswasmc_bounded_2_control_msgs_msg_JointTolerance const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_control_msgs_msg_JointTolerance_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_control_msgs_msg_JointTolerance*)v
{
    return roswasmc_bounded_2_control_msgs_msg_JointTolerance_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Control_msgsMsgJointComponentTolerance

+ (uint32_t)encode:(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance*)v
{
    return roswasmc_bounded_2_control_msgs_msg_JointComponentTolerance_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Control_msgsActionFollowJointTrajectory_Goal

+ (uint32_t)encode:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal*)v
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Goal_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Control_msgsActionFollowJointTrajectory_Result

+ (uint32_t)encode:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result*)v
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Result_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Control_msgsActionFollowJointTrajectory_Feedback

+ (uint32_t)encode:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback*)v
{
    return roswasmc_bounded_2_control_msgs_action_FollowJointTrajectory_Feedback_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Geometry_msgsMsgPoint

+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Point const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Point_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_geometry_msgs_msg_Point*)v
{
    return roswasmc_bounded_2_geometry_msgs_msg_Point_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Geometry_msgsMsgPose

+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Pose const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_geometry_msgs_msg_Pose*)v
{
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Geometry_msgsMsgPoseStamped

+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped*)v
{
    return roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Geometry_msgsMsgVector3Stamped

+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped*)v
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Geometry_msgsMsgWrench

+ (uint32_t)encode:(roswasmc_bounded_2_geometry_msgs_msg_Wrench const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Wrench_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_geometry_msgs_msg_Wrench*)v
{
    return roswasmc_bounded_2_geometry_msgs_msg_Wrench_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Sensor_msgsMsgJointState

+ (uint32_t)encode:(roswasmc_bounded_2_sensor_msgs_msg_JointState const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_sensor_msgs_msg_JointState*)v
{
    return roswasmc_bounded_2_sensor_msgs_msg_JointState_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsActionSetMode_Goal

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Goal const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Goal_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Goal*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Goal_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsActionSetMode_Result

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Result const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Result_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Result*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Result_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsActionSetMode_Feedback

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Feedback const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Feedback_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Feedback*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Feedback_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsMsgOperationalMode

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_msg_OperationalMode const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_OperationalMode_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_msg_OperationalMode*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_OperationalMode_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsMsgProgramInformation

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramInformation const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramInformation_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramInformation*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramInformation_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsMsgProgramState

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramState const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramState_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramState*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramState_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsMsgRobotMode

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_msg_RobotMode const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_RobotMode_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_msg_RobotMode*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_RobotMode_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsMsgSafetyMode

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyMode const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyMode_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyMode*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyMode_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsMsgSafetyStatus

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyStatus const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyStatus_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyStatus*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyStatus_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsMsgUserRole

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_msg_UserRole const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_UserRole_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_msg_UserRole*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_UserRole_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsMsgVersionInformation

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_msg_VersionInformation const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_VersionInformation_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_msg_VersionInformation*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_VersionInformation_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvAddToLog_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvAddToLog_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvDownloadProgram_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvDownloadProgram_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvDownloadSupportFile_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvDownloadSupportFile_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGenerateFlightReport_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGenerateFlightReport_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGenerateSupportFile_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGenerateSupportFile_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetLoadedProgram_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetLoadedProgram_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetOperationalMode_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetOperationalMode_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetProgramState_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetProgramState_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetPrograms_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetPrograms_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetRobotMode_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetRobotMode_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetRobotModel_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetRobotModel_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetSafetyMode_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetSafetyMode_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetSafetyStatus_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetSafetyStatus_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetSerialNumber_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetSerialNumber_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetUserRole_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvGetUserRole_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvIsInRemoteControl_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvIsInRemoteControl_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvIsProgramRunning_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvIsProgramRunning_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvIsProgramSaved_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvIsProgramSaved_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvLoad_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvLoad_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvPopup_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvPopup_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvRawRequest_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvRawRequest_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvSetOperationalMode_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvSetOperationalMode_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvSetUserRole_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvSetUserRole_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvUploadProgram_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Request*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_dashboard_msgsSrvUploadProgram_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Response*)v
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsActionFollowJointTrajectoryUntil_Goal

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal*)v
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsActionFollowJointTrajectoryUntil_Result

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result*)v
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsActionFollowJointTrajectoryUntil_Feedback

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback*)v
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsActionSendScript_Goal

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_action_SendScript_Goal const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_Goal_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_action_SendScript_Goal*)v
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_Goal_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsActionSendScript_Result

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_action_SendScript_Result const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_Result_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_action_SendScript_Result*)v
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_Result_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsActionSendScript_Feedback

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_action_SendScript_Feedback const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_Feedback_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_action_SendScript_Feedback*)v
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_Feedback_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsActionToolContact_Goal

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Goal const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_Goal_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Goal*)v
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_Goal_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsActionToolContact_Result

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Result const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_Result_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Result*)v
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_Result_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsActionToolContact_Feedback

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Feedback const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_Feedback_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Feedback*)v
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_Feedback_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsMsgAnalog

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_msg_Analog const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_msg_Analog_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_msg_Analog*)v
{
    return roswasmc_bounded_2_ur_msgs_msg_Analog_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsMsgDigital

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_msg_Digital const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_msg_Digital_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_msg_Digital*)v
{
    return roswasmc_bounded_2_ur_msgs_msg_Digital_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsMsgFrictionModelParameters

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_msg_FrictionModelParameters const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_msg_FrictionModelParameters_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_msg_FrictionModelParameters*)v
{
    return roswasmc_bounded_2_ur_msgs_msg_FrictionModelParameters_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsMsgIOStates

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_msg_IOStates const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_msg_IOStates_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_msg_IOStates*)v
{
    return roswasmc_bounded_2_ur_msgs_msg_IOStates_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsMsgMasterboardDataMsg

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_msg_MasterboardDataMsg const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_msg_MasterboardDataMsg_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_msg_MasterboardDataMsg*)v
{
    return roswasmc_bounded_2_ur_msgs_msg_MasterboardDataMsg_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsMsgRobotModeDataMsg

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_msg_RobotModeDataMsg const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_msg_RobotModeDataMsg_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_msg_RobotModeDataMsg*)v
{
    return roswasmc_bounded_2_ur_msgs_msg_RobotModeDataMsg_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsMsgRobotStateRTMsg

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_msg_RobotStateRTMsg const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_msg_RobotStateRTMsg_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_msg_RobotStateRTMsg*)v
{
    return roswasmc_bounded_2_ur_msgs_msg_RobotStateRTMsg_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsMsgToolDataMsg

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_msg_ToolDataMsg const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_msg_ToolDataMsg_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_msg_ToolDataMsg*)v
{
    return roswasmc_bounded_2_ur_msgs_msg_ToolDataMsg_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsSrvGetRobotSoftwareVersion_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Request*)v
{
    return roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsSrvGetRobotSoftwareVersion_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Response*)v
{
    return roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsSrvSetAnalogOutput_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request*)v
{
    return roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsSrvSetAnalogOutput_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Response*)v
{
    return roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsSrvSetForceMode_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request*)v
{
    return roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsSrvSetForceMode_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response*)v
{
    return roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsSrvSetFrictionModelParameters_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Request*)v
{
    return roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsSrvSetFrictionModelParameters_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Response*)v
{
    return roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsSrvSetGravity_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetGravity_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_srv_SetGravity_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_srv_SetGravity_Request*)v
{
    return roswasmc_bounded_2_ur_msgs_srv_SetGravity_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsSrvSetGravity_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetGravity_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_srv_SetGravity_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_srv_SetGravity_Response*)v
{
    return roswasmc_bounded_2_ur_msgs_srv_SetGravity_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsSrvSetIO_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetIO_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_srv_SetIO_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_srv_SetIO_Request*)v
{
    return roswasmc_bounded_2_ur_msgs_srv_SetIO_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsSrvSetIO_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetIO_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_srv_SetIO_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_srv_SetIO_Response*)v
{
    return roswasmc_bounded_2_ur_msgs_srv_SetIO_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsSrvSetPayload_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetPayload_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_srv_SetPayload_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_srv_SetPayload_Request*)v
{
    return roswasmc_bounded_2_ur_msgs_srv_SetPayload_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsSrvSetPayload_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetPayload_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_srv_SetPayload_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_srv_SetPayload_Response*)v
{
    return roswasmc_bounded_2_ur_msgs_srv_SetPayload_Response_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsSrvSetSpeedSliderFraction_Request

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Request const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Request_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Request*)v
{
    return roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Request_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteRos2Ur_msgsSrvSetSpeedSliderFraction_Response

+ (uint32_t)encode:(roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Response const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Response_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Response*)v
{
    return roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Response_decode(b, n, v);
}

@end

@implementation UniversalRobotsUniversalRobotsRos2TrajectoryCompleteInterfaces

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

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_send:(roswasmc_action_bundle*)bundle
                                                                       goal:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Goal const*)goal
                                                                         id:(uint64_t*)id
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_send(bundle, goal, id);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_feedback:(roswasmc_action_bundle const*)bundle
                                                                             id:(uint64_t)id
                                                                       feedback:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Feedback*)feedback
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_feedback(bundle, id, feedback);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_result:(roswasmc_action_bundle*)bundle
                                                                           id:(uint64_t)id
                                                                         kind:(uint8_t*)kind
                                                                       result:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Result*)result
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_result(bundle, id, kind, result);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_poll:(roswasmc_capability const*)cap
                                                                         id:(uint64_t*)id
                                                                       goal:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Goal*)goal
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_poll(cap, id, goal);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_respond_feedback:(roswasmc_capability const*)cap
                                                                                     id:(uint64_t)id
                                                                                  value:
                                                                                      (roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Feedback const*)value
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_respond_feedback(cap, id, value);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_respond_result:(roswasmc_capability const*)cap
                                                                                   id:(uint64_t)id
                                                                                 kind:(uint8_t)kind
                                                                                value:(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Result const*)value
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_respond_result(cap, id, kind, value);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_call:(roswasmc_capability const*)cap
                                                                  request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Request const*)request
                                                                 response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_poll:(roswasmc_capability const*)cap
                                                                   ticket:(uint64_t*)ticket
                                                                  request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_respond:(roswasmc_capability const*)cap
                                                                      ticket:(uint64_t)ticket
                                                                    response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Response const*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_call:(roswasmc_capability const*)cap
                                                                         request:
                                                                             (roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Request const*)request
                                                                        response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_poll:(roswasmc_capability const*)cap
                                                                          ticket:(uint64_t*)ticket
                                                                         request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_respond:(roswasmc_capability const*)cap
                                                                             ticket:(uint64_t)ticket
                                                                           response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Response const*)
                                                                                        response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_respond(cap, ticket, response);
}

+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_call:(roswasmc_capability const*)cap
                                                              request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Request const*)request
                                                             response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_poll:(roswasmc_capability const*)cap
                                                                              ticket:(uint64_t*)ticket
                                                                             request:
                                                                                 (roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_poll(cap, ticket, request);
}

+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_respond:(roswasmc_capability const*)cap
                                                                  ticket:(uint64_t)ticket
                                                                response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Response const*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_respond(cap, ticket, response);
}

+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_call:(roswasmc_capability const*)cap
                                                               request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Request const*)request
                                                              response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_poll:(roswasmc_capability const*)cap
                                                                               ticket:(uint64_t*)ticket
                                                                              request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Request*)
                                                                                          request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_poll(cap, ticket, request);
}

+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_respond:(roswasmc_capability const*)cap
                                                                   ticket:(uint64_t)ticket
                                                                 response:
                                                                     (roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Response const*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_respond(cap, ticket, response);
}

+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_call:(roswasmc_capability const*)cap
                                                              request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Request const*)request
                                                             response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_poll:(roswasmc_capability const*)cap
                                                                              ticket:(uint64_t*)ticket
                                                                             request:
                                                                                 (roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_poll(cap, ticket, request);
}

+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_respond:(roswasmc_capability const*)cap
                                                                  ticket:(uint64_t)ticket
                                                                response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Response const*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_call:(roswasmc_capability const*)cap
                                                                          request:
                                                                              (roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Request const*)request
                                                                         response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_poll:(roswasmc_capability const*)cap
                                                                           ticket:(uint64_t*)ticket
                                                                          request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_respond:(roswasmc_capability const*)cap
                                                                              ticket:(uint64_t)ticket
                                                                            response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Response const*)
                                                                                         response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_respond(cap, ticket, response);
}

+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_call:(roswasmc_capability const*)cap
                                                             request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Request const*)request
                                                            response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_poll:(roswasmc_capability const*)cap
                                                                             ticket:(uint64_t*)ticket
                                                                            request:
                                                                                (roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_poll(cap, ticket, request);
}

+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_respond:(roswasmc_capability const*)cap
                                                                 ticket:(uint64_t)ticket
                                                               response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Response const*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_respond(cap, ticket, response);
}

+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_call:(roswasmc_capability const*)cap
                                                              request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Request const*)request
                                                             response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_poll:(roswasmc_capability const*)cap
                                                                              ticket:(uint64_t*)ticket
                                                                             request:
                                                                                 (roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_poll(cap, ticket, request);
}

+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_respond:(roswasmc_capability const*)cap
                                                                  ticket:(uint64_t)ticket
                                                                response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Response const*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_call:(roswasmc_capability const*)cap
                                                                         request:
                                                                             (roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Request const*)request
                                                                        response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_poll:(roswasmc_capability const*)cap
                                                                          ticket:(uint64_t*)ticket
                                                                         request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_respond:(roswasmc_capability const*)cap
                                                                             ticket:(uint64_t)ticket
                                                                           response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Response const*)
                                                                                        response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_call:(roswasmc_capability const*)cap
                                                                     request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Request const*)request
                                                                    response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_poll:(roswasmc_capability const*)cap
                                                                      ticket:(uint64_t*)ticket
                                                                     request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_respond:(roswasmc_capability const*)cap
                                                                         ticket:(uint64_t)ticket
                                                                       response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Response const*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_call:(roswasmc_capability const*)cap
                                                                      request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Request const*)request
                                                                     response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_poll:(roswasmc_capability const*)cap
                                                                       ticket:(uint64_t*)ticket
                                                                      request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_respond:(roswasmc_capability const*)cap
                                                                          ticket:(uint64_t)ticket
                                                                        response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Response const*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_call:(roswasmc_capability const*)cap
                                                                       request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Request const*)request
                                                                      response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_poll:(roswasmc_capability const*)cap
                                                                        ticket:(uint64_t*)ticket
                                                                       request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_respond:(roswasmc_capability const*)cap
                                                                           ticket:(uint64_t)ticket
                                                                         response:
                                                                             (roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Response const*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_call:(roswasmc_capability const*)cap
                                                                       request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Request const*)request
                                                                      response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_poll:(roswasmc_capability const*)cap
                                                                        ticket:(uint64_t*)ticket
                                                                       request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_respond:(roswasmc_capability const*)cap
                                                                           ticket:(uint64_t)ticket
                                                                         response:
                                                                             (roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Response const*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_call:(roswasmc_capability const*)cap
                                                                         request:
                                                                             (roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Request const*)request
                                                                        response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_poll:(roswasmc_capability const*)cap
                                                                          ticket:(uint64_t*)ticket
                                                                         request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_respond:(roswasmc_capability const*)cap
                                                                             ticket:(uint64_t)ticket
                                                                           response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Response const*)
                                                                                        response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_call:(roswasmc_capability const*)cap
                                                                         request:
                                                                             (roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Request const*)request
                                                                        response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_poll:(roswasmc_capability const*)cap
                                                                          ticket:(uint64_t*)ticket
                                                                         request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_respond:(roswasmc_capability const*)cap
                                                                             ticket:(uint64_t)ticket
                                                                           response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Response const*)
                                                                                        response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_call:(roswasmc_capability const*)cap
                                                                     request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Request const*)request
                                                                    response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_poll:(roswasmc_capability const*)cap
                                                                      ticket:(uint64_t*)ticket
                                                                     request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_respond:(roswasmc_capability const*)cap
                                                                         ticket:(uint64_t)ticket
                                                                       response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Response const*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_respond(cap, ticket, response);
}

+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_call:(roswasmc_capability const*)cap
                                                            request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Request const*)request
                                                           response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_poll:(roswasmc_capability const*)cap
                                                                            ticket:(uint64_t*)ticket
                                                                           request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_poll(cap, ticket, request);
}

+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_respond:(roswasmc_capability const*)cap
                                                                ticket:(uint64_t)ticket
                                                              response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Response const*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_call:(roswasmc_capability const*)cap
                                                                          request:
                                                                              (roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Request const*)request
                                                                         response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_poll:(roswasmc_capability const*)cap
                                                                           ticket:(uint64_t*)ticket
                                                                          request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_respond:(roswasmc_capability const*)cap
                                                                              ticket:(uint64_t)ticket
                                                                            response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Response const*)
                                                                                         response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_call:(roswasmc_capability const*)cap
                                                                        request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Request const*)request
                                                                       response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_poll:(roswasmc_capability const*)cap
                                                                         ticket:(uint64_t*)ticket
                                                                        request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_respond:(roswasmc_capability const*)cap
                                                                            ticket:(uint64_t)ticket
                                                                          response:
                                                                              (roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Response const*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_call:(roswasmc_capability const*)cap
                                                              request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Request const*)request
                                                             response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_poll:(roswasmc_capability const*)cap
                                                               ticket:(uint64_t*)ticket
                                                              request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_respond:(roswasmc_capability const*)cap
                                                                  ticket:(uint64_t)ticket
                                                                response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Response const*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_call:(roswasmc_capability const*)cap
                                                               request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Request const*)request
                                                              response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_poll:(roswasmc_capability const*)cap
                                                                ticket:(uint64_t*)ticket
                                                               request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_respond:(roswasmc_capability const*)cap
                                                                   ticket:(uint64_t)ticket
                                                                 response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Response const*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_call:(roswasmc_capability const*)cap
                                                                    request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Request const*)request
                                                                   response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_poll:(roswasmc_capability const*)cap
                                                                     ticket:(uint64_t*)ticket
                                                                    request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_respond:(roswasmc_capability const*)cap
                                                                        ticket:(uint64_t)ticket
                                                                      response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Response const*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_respond(cap, ticket, response);
}

+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_call:(roswasmc_capability const*)cap
                                                             request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Request const*)request
                                                            response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_poll:(roswasmc_capability const*)cap
                                                                             ticket:(uint64_t*)ticket
                                                                            request:
                                                                                (roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_poll(cap, ticket, request);
}

+ (roswasmc_result)
    roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_respond:(roswasmc_capability const*)cap
                                                                 ticket:(uint64_t)ticket
                                                               response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Response const*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_call:(roswasmc_capability const*)cap
                                                                     request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Request const*)request
                                                                    response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_poll:(roswasmc_capability const*)cap
                                                                      ticket:(uint64_t*)ticket
                                                                     request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_respond:(roswasmc_capability const*)cap
                                                                         ticket:(uint64_t)ticket
                                                                       response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Response const*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_call:(roswasmc_capability const*)cap
                                                                       request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Request const*)request
                                                                      response:(roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Response*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_poll:(roswasmc_capability const*)cap
                                                                        ticket:(uint64_t*)ticket
                                                                       request:(roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Request*)request
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_respond:(roswasmc_capability const*)cap
                                                                           ticket:(uint64_t)ticket
                                                                         response:
                                                                             (roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Response const*)response
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_respond(cap, ticket, response);
}

+ (roswasmc_result)
    roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_send:(roswasmc_action_bundle*)bundle
                                                                 goal:(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal const*)goal
                                                                   id:(uint64_t*)id
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_send(bundle, goal, id);
}

+ (roswasmc_result)
    roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_feedback:(roswasmc_action_bundle const*)bundle
                                                                       id:(uint64_t)id
                                                                 feedback:(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback*)feedback
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_feedback(bundle, id, feedback);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_result:(roswasmc_action_bundle*)bundle
                                                                                    id:(uint64_t)id
                                                                                  kind:(uint8_t*)kind
                                                                                result:
                                                                                    (roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result*)result
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_result(bundle, id, kind, result);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_poll:(roswasmc_capability const*)cap
                                                                                  id:(uint64_t*)id
                                                                                goal:(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal*)goal
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_poll(cap, id, goal);
}

+ (roswasmc_result)
    roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_respond_feedback:(roswasmc_capability const*)cap
                                                                               id:(uint64_t)id
                                                                            value:(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback const*)
                                                                                      value
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_respond_feedback(cap, id, value);
}

+ (roswasmc_result)
    roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_respond_result:(roswasmc_capability const*)cap
                                                                             id:(uint64_t)id
                                                                           kind:(uint8_t)kind
                                                                          value:
                                                                              (roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result const*)value
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_respond_result(cap, id, kind, value);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_SendScript_send:(roswasmc_action_bundle*)bundle
                                                                goal:(roswasmc_bounded_2_ur_msgs_action_SendScript_Goal const*)goal
                                                                  id:(uint64_t*)id
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_send(bundle, goal, id);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_SendScript_feedback:(roswasmc_action_bundle const*)bundle
                                                                      id:(uint64_t)id
                                                                feedback:(roswasmc_bounded_2_ur_msgs_action_SendScript_Feedback*)feedback
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_feedback(bundle, id, feedback);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_SendScript_result:(roswasmc_action_bundle*)bundle
                                                                    id:(uint64_t)id
                                                                  kind:(uint8_t*)kind
                                                                result:(roswasmc_bounded_2_ur_msgs_action_SendScript_Result*)result
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_result(bundle, id, kind, result);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_SendScript_poll:(roswasmc_capability const*)cap
                                                                  id:(uint64_t*)id
                                                                goal:(roswasmc_bounded_2_ur_msgs_action_SendScript_Goal*)goal
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_poll(cap, id, goal);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_SendScript_respond_feedback:(roswasmc_capability const*)cap
                                                                              id:(uint64_t)id
                                                                           value:(roswasmc_bounded_2_ur_msgs_action_SendScript_Feedback const*)value
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_respond_feedback(cap, id, value);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_SendScript_respond_result:(roswasmc_capability const*)cap
                                                                            id:(uint64_t)id
                                                                          kind:(uint8_t)kind
                                                                         value:(roswasmc_bounded_2_ur_msgs_action_SendScript_Result const*)value
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_respond_result(cap, id, kind, value);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_ToolContact_send:(roswasmc_action_bundle*)bundle
                                                                 goal:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Goal const*)goal
                                                                   id:(uint64_t*)id
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_send(bundle, goal, id);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_ToolContact_feedback:(roswasmc_action_bundle const*)bundle
                                                                       id:(uint64_t)id
                                                                 feedback:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Feedback*)feedback
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_feedback(bundle, id, feedback);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_ToolContact_result:(roswasmc_action_bundle*)bundle
                                                                     id:(uint64_t)id
                                                                   kind:(uint8_t*)kind
                                                                 result:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Result*)result
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_result(bundle, id, kind, result);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_ToolContact_poll:(roswasmc_capability const*)cap
                                                                   id:(uint64_t*)id
                                                                 goal:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Goal*)goal
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_poll(cap, id, goal);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_ToolContact_respond_feedback:(roswasmc_capability const*)cap
                                                                               id:(uint64_t)id
                                                                            value:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Feedback const*)value
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_respond_feedback(cap, id, value);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_action_ToolContact_respond_result:(roswasmc_capability const*)cap
                                                                             id:(uint64_t)id
                                                                           kind:(uint8_t)kind
                                                                          value:(roswasmc_bounded_2_ur_msgs_action_ToolContact_Result const*)value
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_respond_result(cap, id, kind, value);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_call:(roswasmc_capability const*)cap
                                                                       request:(roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Request const*)request
                                                                      response:(roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Response*)response
{
    return roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_poll:(roswasmc_capability const*)cap
                                                                        ticket:(uint64_t*)ticket
                                                                       request:(roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Request*)request
{
    return roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_respond:(roswasmc_capability const*)cap
                                                                           ticket:(uint64_t)ticket
                                                                         response:
                                                                             (roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Response const*)response
{
    return roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_call:(roswasmc_capability const*)cap
                                                               request:(roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request const*)request
                                                              response:(roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Response*)response
{
    return roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_poll:(roswasmc_capability const*)cap
                                                                ticket:(uint64_t*)ticket
                                                               request:(roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request*)request
{
    return roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_respond:(roswasmc_capability const*)cap
                                                                   ticket:(uint64_t)ticket
                                                                 response:(roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Response const*)response
{
    return roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetForceMode_call:(roswasmc_capability const*)cap
                                                            request:(roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request const*)request
                                                           response:(roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response*)response
{
    return roswasmc_bounded_2_ur_msgs_srv_SetForceMode_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetForceMode_poll:(roswasmc_capability const*)cap
                                                             ticket:(uint64_t*)ticket
                                                            request:(roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request*)request
{
    return roswasmc_bounded_2_ur_msgs_srv_SetForceMode_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetForceMode_respond:(roswasmc_capability const*)cap
                                                                ticket:(uint64_t)ticket
                                                              response:(roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response const*)response
{
    return roswasmc_bounded_2_ur_msgs_srv_SetForceMode_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_call:(roswasmc_capability const*)cap
                                                                          request:
                                                                              (roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Request const*)request
                                                                         response:(roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Response*)response
{
    return roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_poll:(roswasmc_capability const*)cap
                                                                           ticket:(uint64_t*)ticket
                                                                          request:(roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Request*)request
{
    return roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_respond:(roswasmc_capability const*)cap
                                                                              ticket:(uint64_t)ticket
                                                                            response:(roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Response const*)
                                                                                         response
{
    return roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetGravity_call:(roswasmc_capability const*)cap
                                                          request:(roswasmc_bounded_2_ur_msgs_srv_SetGravity_Request const*)request
                                                         response:(roswasmc_bounded_2_ur_msgs_srv_SetGravity_Response*)response
{
    return roswasmc_bounded_2_ur_msgs_srv_SetGravity_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetGravity_poll:(roswasmc_capability const*)cap
                                                           ticket:(uint64_t*)ticket
                                                          request:(roswasmc_bounded_2_ur_msgs_srv_SetGravity_Request*)request
{
    return roswasmc_bounded_2_ur_msgs_srv_SetGravity_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetGravity_respond:(roswasmc_capability const*)cap
                                                              ticket:(uint64_t)ticket
                                                            response:(roswasmc_bounded_2_ur_msgs_srv_SetGravity_Response const*)response
{
    return roswasmc_bounded_2_ur_msgs_srv_SetGravity_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetIO_call:(roswasmc_capability const*)cap
                                                     request:(roswasmc_bounded_2_ur_msgs_srv_SetIO_Request const*)request
                                                    response:(roswasmc_bounded_2_ur_msgs_srv_SetIO_Response*)response
{
    return roswasmc_bounded_2_ur_msgs_srv_SetIO_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetIO_poll:(roswasmc_capability const*)cap
                                                      ticket:(uint64_t*)ticket
                                                     request:(roswasmc_bounded_2_ur_msgs_srv_SetIO_Request*)request
{
    return roswasmc_bounded_2_ur_msgs_srv_SetIO_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetIO_respond:(roswasmc_capability const*)cap
                                                         ticket:(uint64_t)ticket
                                                       response:(roswasmc_bounded_2_ur_msgs_srv_SetIO_Response const*)response
{
    return roswasmc_bounded_2_ur_msgs_srv_SetIO_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetPayload_call:(roswasmc_capability const*)cap
                                                          request:(roswasmc_bounded_2_ur_msgs_srv_SetPayload_Request const*)request
                                                         response:(roswasmc_bounded_2_ur_msgs_srv_SetPayload_Response*)response
{
    return roswasmc_bounded_2_ur_msgs_srv_SetPayload_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetPayload_poll:(roswasmc_capability const*)cap
                                                           ticket:(uint64_t*)ticket
                                                          request:(roswasmc_bounded_2_ur_msgs_srv_SetPayload_Request*)request
{
    return roswasmc_bounded_2_ur_msgs_srv_SetPayload_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetPayload_respond:(roswasmc_capability const*)cap
                                                              ticket:(uint64_t)ticket
                                                            response:(roswasmc_bounded_2_ur_msgs_srv_SetPayload_Response const*)response
{
    return roswasmc_bounded_2_ur_msgs_srv_SetPayload_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_call:(roswasmc_capability const*)cap
                                                                      request:(roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Request const*)request
                                                                     response:(roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Response*)response
{
    return roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_poll:(roswasmc_capability const*)cap
                                                                       ticket:(uint64_t*)ticket
                                                                      request:(roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Request*)request
{
    return roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_respond:(roswasmc_capability const*)cap
                                                                          ticket:(uint64_t)ticket
                                                                        response:(roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Response const*)response
{
    return roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_respond(cap, ticket, response);
}

@end
