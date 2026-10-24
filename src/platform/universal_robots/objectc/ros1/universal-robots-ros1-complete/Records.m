/**
 * @file Records.m
 * @brief Complete universal_robots values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/universal_robots/domains/universal-robots-ros1-complete.ir.json
 * @see document/platform/universal_robots/en_US/README.md
 */

#include <universal_robots/objectc/ros1/universal-robots-ros1-complete/Records.h>
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Geometry_msgsPoint

+ (uint32_t)encode:(roswasmc_bounded_1_geometry_msgs_Point const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_geometry_msgs_Point_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_geometry_msgs_Point*)v
{
    return roswasmc_bounded_1_geometry_msgs_Point_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Geometry_msgsQuaternion

+ (uint32_t)encode:(roswasmc_bounded_1_geometry_msgs_Quaternion const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_geometry_msgs_Quaternion_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_geometry_msgs_Quaternion*)v
{
    return roswasmc_bounded_1_geometry_msgs_Quaternion_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Geometry_msgsPose

+ (uint32_t)encode:(roswasmc_bounded_1_geometry_msgs_Pose const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_geometry_msgs_Pose_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_geometry_msgs_Pose*)v
{
    return roswasmc_bounded_1_geometry_msgs_Pose_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Time

+ (uint32_t)encode:(roswasmc_bounded_1_time const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_time_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_time*)v
{
    return roswasmc_bounded_1_time_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Std_msgsHeader

+ (uint32_t)encode:(roswasmc_bounded_1_std_msgs_Header const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_std_msgs_Header_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_std_msgs_Header*)v
{
    return roswasmc_bounded_1_std_msgs_Header_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Geometry_msgsPoseStamped

+ (uint32_t)encode:(roswasmc_bounded_1_geometry_msgs_PoseStamped const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_geometry_msgs_PoseStamped_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_geometry_msgs_PoseStamped*)v
{
    return roswasmc_bounded_1_geometry_msgs_PoseStamped_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Geometry_msgsVector3

+ (uint32_t)encode:(roswasmc_bounded_1_geometry_msgs_Vector3 const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_geometry_msgs_Vector3_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_geometry_msgs_Vector3*)v
{
    return roswasmc_bounded_1_geometry_msgs_Vector3_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Geometry_msgsTwist

+ (uint32_t)encode:(roswasmc_bounded_1_geometry_msgs_Twist const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_geometry_msgs_Twist_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_geometry_msgs_Twist*)v
{
    return roswasmc_bounded_1_geometry_msgs_Twist_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Geometry_msgsWrench

+ (uint32_t)encode:(roswasmc_bounded_1_geometry_msgs_Wrench const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_geometry_msgs_Wrench_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_geometry_msgs_Wrench*)v
{
    return roswasmc_bounded_1_geometry_msgs_Wrench_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsAddToLogRequest

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_AddToLogRequest const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_AddToLogRequest_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_AddToLogRequest*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_AddToLogRequest_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsAddToLogResponse

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsGetLoadedProgramRequest

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramRequest const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramRequest_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramRequest*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramRequest_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsGetLoadedProgramResponse

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramResponse const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramResponse_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramResponse*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramResponse_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsGetProgramStateRequest

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateRequest const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateRequest_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateRequest*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateRequest_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsProgramState

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_ProgramState const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_ProgramState_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_ProgramState*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_ProgramState_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsGetProgramStateResponse

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateResponse const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateResponse_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateResponse*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateResponse_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsGetRobotModeRequest

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeRequest const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeRequest_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeRequest*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeRequest_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsRobotMode

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_RobotMode const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_RobotMode_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_RobotMode*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_RobotMode_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsGetRobotModeResponse

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeResponse const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeResponse_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeResponse*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeResponse_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsGetSafetyModeRequest

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeRequest const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeRequest_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeRequest*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeRequest_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsSafetyMode

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_SafetyMode const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SafetyMode_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_SafetyMode*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SafetyMode_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsGetSafetyModeResponse

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeResponse const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeResponse_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeResponse*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeResponse_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsIsInRemoteControlRequest

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlRequest const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlRequest_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlRequest*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlRequest_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsIsInRemoteControlResponse

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlResponse const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlResponse_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlResponse*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlResponse_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsIsProgramRunningRequest

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningRequest const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningRequest_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningRequest*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningRequest_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsIsProgramRunningResponse

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningResponse const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningResponse_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningResponse*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningResponse_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsIsProgramSavedRequest

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedRequest const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedRequest_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedRequest*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedRequest_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsIsProgramSavedResponse

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedResponse const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedResponse_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedResponse*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedResponse_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsLoadRequest

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_LoadRequest const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_LoadRequest_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_LoadRequest*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_LoadRequest_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsLoadResponse

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_LoadResponse const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_LoadResponse_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_LoadResponse*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_LoadResponse_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsPopupRequest

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_PopupRequest const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_PopupRequest_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_PopupRequest*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_PopupRequest_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsPopupResponse

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_PopupResponse const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_PopupResponse_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_PopupResponse*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_PopupResponse_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsRawRequestRequest

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_RawRequestRequest const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_RawRequestRequest_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_RawRequestRequest*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_RawRequestRequest_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsRawRequestResponse

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_RawRequestResponse const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_RawRequestResponse_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_RawRequestResponse*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_RawRequestResponse_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsSetModeGoal

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeGoal const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetModeGoal_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeGoal*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetModeGoal_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsSetModeResult

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeResult const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetModeResult_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeResult*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetModeResult_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_dashboard_msgsSetModeFeedback

+ (uint32_t)encode:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeFeedback const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetModeFeedback_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeFeedback*)v
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetModeFeedback_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_msgsAnalog

+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_Analog const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_msgs_Analog_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_msgs_Analog*)v
{
    return roswasmc_bounded_1_ur_msgs_Analog_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_msgsDigital

+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_Digital const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_msgs_Digital_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_msgs_Digital*)v
{
    return roswasmc_bounded_1_ur_msgs_Digital_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_msgsGetRobotSoftwareVersionRequest

+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionRequest const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionRequest_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionRequest*)v
{
    return roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionRequest_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_msgsGetRobotSoftwareVersionResponse

+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionResponse const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionResponse_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionResponse*)v
{
    return roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionResponse_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_msgsIOStates

+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_IOStates const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_msgs_IOStates_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_msgs_IOStates*)v
{
    return roswasmc_bounded_1_ur_msgs_IOStates_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_msgsMasterboardDataMsg

+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_MasterboardDataMsg const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_msgs_MasterboardDataMsg_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_msgs_MasterboardDataMsg*)v
{
    return roswasmc_bounded_1_ur_msgs_MasterboardDataMsg_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_msgsRobotModeDataMsg

+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_RobotModeDataMsg const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_msgs_RobotModeDataMsg_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_msgs_RobotModeDataMsg*)v
{
    return roswasmc_bounded_1_ur_msgs_RobotModeDataMsg_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_msgsRobotStateRTMsg

+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_RobotStateRTMsg const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_msgs_RobotStateRTMsg_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_msgs_RobotStateRTMsg*)v
{
    return roswasmc_bounded_1_ur_msgs_RobotStateRTMsg_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_msgsSetAnalogOutputRequest

+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest*)v
{
    return roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_msgsSetAnalogOutputResponse

+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_SetAnalogOutputResponse const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_msgs_SetAnalogOutputResponse_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_msgs_SetAnalogOutputResponse*)v
{
    return roswasmc_bounded_1_ur_msgs_SetAnalogOutputResponse_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_msgsSetForceModeRequest

+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_SetForceModeRequest const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_msgs_SetForceModeRequest_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_msgs_SetForceModeRequest*)v
{
    return roswasmc_bounded_1_ur_msgs_SetForceModeRequest_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_msgsSetForceModeResponse

+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_SetForceModeResponse const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_msgs_SetForceModeResponse_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_msgs_SetForceModeResponse*)v
{
    return roswasmc_bounded_1_ur_msgs_SetForceModeResponse_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_msgsSetIORequest

+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_SetIORequest const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_msgs_SetIORequest_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_msgs_SetIORequest*)v
{
    return roswasmc_bounded_1_ur_msgs_SetIORequest_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_msgsSetIOResponse

+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_SetIOResponse const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_msgs_SetIOResponse_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_msgs_SetIOResponse*)v
{
    return roswasmc_bounded_1_ur_msgs_SetIOResponse_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_msgsSetPayloadRequest

+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_SetPayloadRequest const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_msgs_SetPayloadRequest_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_msgs_SetPayloadRequest*)v
{
    return roswasmc_bounded_1_ur_msgs_SetPayloadRequest_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_msgsSetPayloadResponse

+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_SetPayloadResponse const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_msgs_SetPayloadResponse_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_msgs_SetPayloadResponse*)v
{
    return roswasmc_bounded_1_ur_msgs_SetPayloadResponse_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_msgsSetSpeedSliderFractionRequest

+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionRequest const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionRequest_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionRequest*)v
{
    return roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionRequest_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_msgsSetSpeedSliderFractionResponse

+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionResponse const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionResponse_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionResponse*)v
{
    return roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionResponse_decode(b, n, v);
}

@end
@implementation UniversalRobotsUniversalRobotsRos1CompleteRos1Ur_msgsToolDataMsg

+ (uint32_t)encode:(roswasmc_bounded_1_ur_msgs_ToolDataMsg const*)v bytes:(void*)b capacity:(size_t)n length:(size_t*)length
{
    return roswasmc_bounded_1_ur_msgs_ToolDataMsg_encode(v, b, n, length);
}

+ (uint32_t)decode:(void const*)b length:(size_t)n value:(roswasmc_bounded_1_ur_msgs_ToolDataMsg*)v
{
    return roswasmc_bounded_1_ur_msgs_ToolDataMsg_decode(b, n, v);
}

@end

@implementation UniversalRobotsUniversalRobotsRos1CompleteInterfaces

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_AddToLog_call:(roswasmc_capability const*)cap
                                                              request:(roswasmc_bounded_1_ur_dashboard_msgs_AddToLogRequest const*)request
                                                             response:(roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_AddToLog_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_AddToLog_poll:(roswasmc_capability const*)cap
                                                               ticket:(uint64_t*)ticket
                                                              request:(roswasmc_bounded_1_ur_dashboard_msgs_AddToLogRequest*)request
{
    return roswasmc_bounded_1_ur_dashboard_msgs_AddToLog_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_AddToLog_respond:(roswasmc_capability const*)cap
                                                                  ticket:(uint64_t)ticket
                                                                response:(roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse const*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_AddToLog_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgram_call:(roswasmc_capability const*)cap
                                                                      request:(roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramRequest const*)request
                                                                     response:(roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramResponse*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgram_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgram_poll:(roswasmc_capability const*)cap
                                                                       ticket:(uint64_t*)ticket
                                                                      request:(roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramRequest*)request
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgram_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgram_respond:(roswasmc_capability const*)cap
                                                                          ticket:(uint64_t)ticket
                                                                        response:(roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramResponse const*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgram_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetProgramState_call:(roswasmc_capability const*)cap
                                                                     request:(roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateRequest const*)request
                                                                    response:(roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateResponse*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetProgramState_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetProgramState_poll:(roswasmc_capability const*)cap
                                                                      ticket:(uint64_t*)ticket
                                                                     request:(roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateRequest*)request
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetProgramState_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetProgramState_respond:(roswasmc_capability const*)cap
                                                                         ticket:(uint64_t)ticket
                                                                       response:(roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateResponse const*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetProgramState_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetRobotMode_call:(roswasmc_capability const*)cap
                                                                  request:(roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeRequest const*)request
                                                                 response:(roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeResponse*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetRobotMode_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetRobotMode_poll:(roswasmc_capability const*)cap
                                                                   ticket:(uint64_t*)ticket
                                                                  request:(roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeRequest*)request
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetRobotMode_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetRobotMode_respond:(roswasmc_capability const*)cap
                                                                      ticket:(uint64_t)ticket
                                                                    response:(roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeResponse const*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetRobotMode_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyMode_call:(roswasmc_capability const*)cap
                                                                   request:(roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeRequest const*)request
                                                                  response:(roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeResponse*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyMode_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyMode_poll:(roswasmc_capability const*)cap
                                                                    ticket:(uint64_t*)ticket
                                                                   request:(roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeRequest*)request
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyMode_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyMode_respond:(roswasmc_capability const*)cap
                                                                       ticket:(uint64_t)ticket
                                                                     response:(roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeResponse const*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyMode_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControl_call:(roswasmc_capability const*)cap
                                                                       request:(roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlRequest const*)request
                                                                      response:(roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlResponse*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControl_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControl_poll:(roswasmc_capability const*)cap
                                                                        ticket:(uint64_t*)ticket
                                                                       request:(roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlRequest*)request
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControl_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControl_respond:(roswasmc_capability const*)cap
                                                                           ticket:(uint64_t)ticket
                                                                         response:
                                                                             (roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlResponse const*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControl_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunning_call:(roswasmc_capability const*)cap
                                                                      request:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningRequest const*)request
                                                                     response:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningResponse*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunning_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunning_poll:(roswasmc_capability const*)cap
                                                                       ticket:(uint64_t*)ticket
                                                                      request:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningRequest*)request
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunning_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunning_respond:(roswasmc_capability const*)cap
                                                                          ticket:(uint64_t)ticket
                                                                        response:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningResponse const*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunning_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSaved_call:(roswasmc_capability const*)cap
                                                                    request:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedRequest const*)request
                                                                   response:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedResponse*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSaved_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSaved_poll:(roswasmc_capability const*)cap
                                                                     ticket:(uint64_t*)ticket
                                                                    request:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedRequest*)request
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSaved_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSaved_respond:(roswasmc_capability const*)cap
                                                                        ticket:(uint64_t)ticket
                                                                      response:(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedResponse const*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSaved_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_Load_call:(roswasmc_capability const*)cap
                                                          request:(roswasmc_bounded_1_ur_dashboard_msgs_LoadRequest const*)request
                                                         response:(roswasmc_bounded_1_ur_dashboard_msgs_LoadResponse*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_Load_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_Load_poll:(roswasmc_capability const*)cap
                                                           ticket:(uint64_t*)ticket
                                                          request:(roswasmc_bounded_1_ur_dashboard_msgs_LoadRequest*)request
{
    return roswasmc_bounded_1_ur_dashboard_msgs_Load_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_Load_respond:(roswasmc_capability const*)cap
                                                              ticket:(uint64_t)ticket
                                                            response:(roswasmc_bounded_1_ur_dashboard_msgs_LoadResponse const*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_Load_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_Popup_call:(roswasmc_capability const*)cap
                                                           request:(roswasmc_bounded_1_ur_dashboard_msgs_PopupRequest const*)request
                                                          response:(roswasmc_bounded_1_ur_dashboard_msgs_PopupResponse*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_Popup_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_Popup_poll:(roswasmc_capability const*)cap
                                                            ticket:(uint64_t*)ticket
                                                           request:(roswasmc_bounded_1_ur_dashboard_msgs_PopupRequest*)request
{
    return roswasmc_bounded_1_ur_dashboard_msgs_Popup_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_Popup_respond:(roswasmc_capability const*)cap
                                                               ticket:(uint64_t)ticket
                                                             response:(roswasmc_bounded_1_ur_dashboard_msgs_PopupResponse const*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_Popup_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_RawRequest_call:(roswasmc_capability const*)cap
                                                                request:(roswasmc_bounded_1_ur_dashboard_msgs_RawRequestRequest const*)request
                                                               response:(roswasmc_bounded_1_ur_dashboard_msgs_RawRequestResponse*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_RawRequest_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_RawRequest_poll:(roswasmc_capability const*)cap
                                                                 ticket:(uint64_t*)ticket
                                                                request:(roswasmc_bounded_1_ur_dashboard_msgs_RawRequestRequest*)request
{
    return roswasmc_bounded_1_ur_dashboard_msgs_RawRequest_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_RawRequest_respond:(roswasmc_capability const*)cap
                                                                    ticket:(uint64_t)ticket
                                                                  response:(roswasmc_bounded_1_ur_dashboard_msgs_RawRequestResponse const*)response
{
    return roswasmc_bounded_1_ur_dashboard_msgs_RawRequest_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_SetMode_send:(roswasmc_action_bundle*)bundle
                                                                goal:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeGoal const*)goal
                                                                  id:(uint64_t*)id
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetMode_send(bundle, goal, id);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_SetMode_feedback:(roswasmc_action_bundle const*)bundle
                                                                      id:(uint64_t)id
                                                                feedback:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeFeedback*)feedback
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetMode_feedback(bundle, id, feedback);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_SetMode_result:(roswasmc_action_bundle*)bundle
                                                                    id:(uint64_t)id
                                                                  kind:(uint8_t*)kind
                                                                result:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeResult*)result
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetMode_result(bundle, id, kind, result);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_SetMode_poll:(roswasmc_capability const*)cap
                                                                  id:(uint64_t*)id
                                                                goal:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeGoal*)goal
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetMode_poll(cap, id, goal);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_SetMode_respond_feedback:(roswasmc_capability const*)cap
                                                                              id:(uint64_t)id
                                                                           value:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeFeedback const*)value
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetMode_respond_feedback(cap, id, value);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_dashboard_msgs_SetMode_respond_result:(roswasmc_capability const*)cap
                                                                            id:(uint64_t)id
                                                                          kind:(uint8_t)kind
                                                                         value:(roswasmc_bounded_1_ur_dashboard_msgs_SetModeResult const*)value
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetMode_respond_result(cap, id, kind, value);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersion_call:(roswasmc_capability const*)cap
                                                                   request:(roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionRequest const*)request
                                                                  response:(roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionResponse*)response
{
    return roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersion_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersion_poll:(roswasmc_capability const*)cap
                                                                    ticket:(uint64_t*)ticket
                                                                   request:(roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionRequest*)request
{
    return roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersion_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersion_respond:(roswasmc_capability const*)cap
                                                                       ticket:(uint64_t)ticket
                                                                     response:(roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionResponse const*)response
{
    return roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersion_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetAnalogOutput_call:(roswasmc_capability const*)cap
                                                           request:(roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest const*)request
                                                          response:(roswasmc_bounded_1_ur_msgs_SetAnalogOutputResponse*)response
{
    return roswasmc_bounded_1_ur_msgs_SetAnalogOutput_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetAnalogOutput_poll:(roswasmc_capability const*)cap
                                                            ticket:(uint64_t*)ticket
                                                           request:(roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest*)request
{
    return roswasmc_bounded_1_ur_msgs_SetAnalogOutput_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetAnalogOutput_respond:(roswasmc_capability const*)cap
                                                               ticket:(uint64_t)ticket
                                                             response:(roswasmc_bounded_1_ur_msgs_SetAnalogOutputResponse const*)response
{
    return roswasmc_bounded_1_ur_msgs_SetAnalogOutput_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetForceMode_call:(roswasmc_capability const*)cap
                                                        request:(roswasmc_bounded_1_ur_msgs_SetForceModeRequest const*)request
                                                       response:(roswasmc_bounded_1_ur_msgs_SetForceModeResponse*)response
{
    return roswasmc_bounded_1_ur_msgs_SetForceMode_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetForceMode_poll:(roswasmc_capability const*)cap
                                                         ticket:(uint64_t*)ticket
                                                        request:(roswasmc_bounded_1_ur_msgs_SetForceModeRequest*)request
{
    return roswasmc_bounded_1_ur_msgs_SetForceMode_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetForceMode_respond:(roswasmc_capability const*)cap
                                                            ticket:(uint64_t)ticket
                                                          response:(roswasmc_bounded_1_ur_msgs_SetForceModeResponse const*)response
{
    return roswasmc_bounded_1_ur_msgs_SetForceMode_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetIO_call:(roswasmc_capability const*)cap
                                                 request:(roswasmc_bounded_1_ur_msgs_SetIORequest const*)request
                                                response:(roswasmc_bounded_1_ur_msgs_SetIOResponse*)response
{
    return roswasmc_bounded_1_ur_msgs_SetIO_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetIO_poll:(roswasmc_capability const*)cap
                                                  ticket:(uint64_t*)ticket
                                                 request:(roswasmc_bounded_1_ur_msgs_SetIORequest*)request
{
    return roswasmc_bounded_1_ur_msgs_SetIO_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetIO_respond:(roswasmc_capability const*)cap
                                                     ticket:(uint64_t)ticket
                                                   response:(roswasmc_bounded_1_ur_msgs_SetIOResponse const*)response
{
    return roswasmc_bounded_1_ur_msgs_SetIO_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetPayload_call:(roswasmc_capability const*)cap
                                                      request:(roswasmc_bounded_1_ur_msgs_SetPayloadRequest const*)request
                                                     response:(roswasmc_bounded_1_ur_msgs_SetPayloadResponse*)response
{
    return roswasmc_bounded_1_ur_msgs_SetPayload_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetPayload_poll:(roswasmc_capability const*)cap
                                                       ticket:(uint64_t*)ticket
                                                      request:(roswasmc_bounded_1_ur_msgs_SetPayloadRequest*)request
{
    return roswasmc_bounded_1_ur_msgs_SetPayload_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetPayload_respond:(roswasmc_capability const*)cap
                                                          ticket:(uint64_t)ticket
                                                        response:(roswasmc_bounded_1_ur_msgs_SetPayloadResponse const*)response
{
    return roswasmc_bounded_1_ur_msgs_SetPayload_respond(cap, ticket, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetSpeedSliderFraction_call:(roswasmc_capability const*)cap
                                                                  request:(roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionRequest const*)request
                                                                 response:(roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionResponse*)response
{
    return roswasmc_bounded_1_ur_msgs_SetSpeedSliderFraction_call(cap, request, response);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetSpeedSliderFraction_poll:(roswasmc_capability const*)cap
                                                                   ticket:(uint64_t*)ticket
                                                                  request:(roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionRequest*)request
{
    return roswasmc_bounded_1_ur_msgs_SetSpeedSliderFraction_poll(cap, ticket, request);
}

+ (roswasmc_result)roswasmc_bounded_1_ur_msgs_SetSpeedSliderFraction_respond:(roswasmc_capability const*)cap
                                                                      ticket:(uint64_t)ticket
                                                                    response:(roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionResponse const*)response
{
    return roswasmc_bounded_1_ur_msgs_SetSpeedSliderFraction_respond(cap, ticket, response);
}

@end
