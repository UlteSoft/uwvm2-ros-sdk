/**
 * @file records.c
 * @brief Complete universal_robots values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/universal_robots/domains/universal-robots-ros1-complete.ir.json
 * @see document/platform/universal_robots/en_US/README.md
 */

#include <universal_robots/c_ffi_bridge/ros1/universal-robots-ros1-complete/records.h>

uint32_t universal_robots_Ros1Geometry_msgsPoint_encode(roswasmc_bounded_1_geometry_msgs_Point const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Point_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Geometry_msgsPoint_decode(void const* b, size_t n, roswasmc_bounded_1_geometry_msgs_Point* v)
{
    return roswasmc_bounded_1_geometry_msgs_Point_decode(b, n, v);
}

uint32_t universal_robots_Ros1Geometry_msgsQuaternion_encode(roswasmc_bounded_1_geometry_msgs_Quaternion const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Quaternion_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Geometry_msgsQuaternion_decode(void const* b, size_t n, roswasmc_bounded_1_geometry_msgs_Quaternion* v)
{
    return roswasmc_bounded_1_geometry_msgs_Quaternion_decode(b, n, v);
}

uint32_t universal_robots_Ros1Geometry_msgsPose_encode(roswasmc_bounded_1_geometry_msgs_Pose const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Pose_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Geometry_msgsPose_decode(void const* b, size_t n, roswasmc_bounded_1_geometry_msgs_Pose* v)
{
    return roswasmc_bounded_1_geometry_msgs_Pose_decode(b, n, v);
}

uint32_t universal_robots_Ros1Time_encode(roswasmc_bounded_1_time const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_time_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Time_decode(void const* b, size_t n, roswasmc_bounded_1_time* v)
{
    return roswasmc_bounded_1_time_decode(b, n, v);
}

uint32_t universal_robots_Ros1Std_msgsHeader_encode(roswasmc_bounded_1_std_msgs_Header const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_std_msgs_Header_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Std_msgsHeader_decode(void const* b, size_t n, roswasmc_bounded_1_std_msgs_Header* v)
{
    return roswasmc_bounded_1_std_msgs_Header_decode(b, n, v);
}

uint32_t universal_robots_Ros1Geometry_msgsPoseStamped_encode(roswasmc_bounded_1_geometry_msgs_PoseStamped const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_PoseStamped_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Geometry_msgsPoseStamped_decode(void const* b, size_t n, roswasmc_bounded_1_geometry_msgs_PoseStamped* v)
{
    return roswasmc_bounded_1_geometry_msgs_PoseStamped_decode(b, n, v);
}

uint32_t universal_robots_Ros1Geometry_msgsVector3_encode(roswasmc_bounded_1_geometry_msgs_Vector3 const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Vector3_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Geometry_msgsVector3_decode(void const* b, size_t n, roswasmc_bounded_1_geometry_msgs_Vector3* v)
{
    return roswasmc_bounded_1_geometry_msgs_Vector3_decode(b, n, v);
}

uint32_t universal_robots_Ros1Geometry_msgsTwist_encode(roswasmc_bounded_1_geometry_msgs_Twist const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Twist_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Geometry_msgsTwist_decode(void const* b, size_t n, roswasmc_bounded_1_geometry_msgs_Twist* v)
{
    return roswasmc_bounded_1_geometry_msgs_Twist_decode(b, n, v);
}

uint32_t universal_robots_Ros1Geometry_msgsWrench_encode(roswasmc_bounded_1_geometry_msgs_Wrench const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_geometry_msgs_Wrench_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Geometry_msgsWrench_decode(void const* b, size_t n, roswasmc_bounded_1_geometry_msgs_Wrench* v)
{
    return roswasmc_bounded_1_geometry_msgs_Wrench_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsAddToLogRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_AddToLogRequest const* v,
                                                                      void* b,
                                                                      size_t n,
                                                                      size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_AddToLogRequest_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsAddToLogRequest_decode(void const* b, size_t n, roswasmc_bounded_1_ur_dashboard_msgs_AddToLogRequest* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_AddToLogRequest_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsAddToLogResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse const* v,
                                                                       void* b,
                                                                       size_t n,
                                                                       size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsAddToLogResponse_decode(void const* b, size_t n, roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsGetLoadedProgramRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramRequest const* v,
                                                                              void* b,
                                                                              size_t n,
                                                                              size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramRequest_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsGetLoadedProgramRequest_decode(void const* b,
                                                                              size_t n,
                                                                              roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramRequest* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramRequest_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsGetLoadedProgramResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramResponse const* v,
                                                                               void* b,
                                                                               size_t n,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramResponse_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsGetLoadedProgramResponse_decode(void const* b,
                                                                               size_t n,
                                                                               roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramResponse* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramResponse_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsGetProgramStateRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateRequest const* v,
                                                                             void* b,
                                                                             size_t n,
                                                                             size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateRequest_encode(v, b, n, length);
}

uint32_t
    universal_robots_Ros1Ur_dashboard_msgsGetProgramStateRequest_decode(void const* b, size_t n, roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateRequest* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateRequest_decode(b, n, v);
}

uint32_t
    universal_robots_Ros1Ur_dashboard_msgsProgramState_encode(roswasmc_bounded_1_ur_dashboard_msgs_ProgramState const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_ProgramState_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsProgramState_decode(void const* b, size_t n, roswasmc_bounded_1_ur_dashboard_msgs_ProgramState* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_ProgramState_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsGetProgramStateResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateResponse const* v,
                                                                              void* b,
                                                                              size_t n,
                                                                              size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateResponse_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsGetProgramStateResponse_decode(void const* b,
                                                                              size_t n,
                                                                              roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateResponse* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateResponse_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsGetRobotModeRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeRequest const* v,
                                                                          void* b,
                                                                          size_t n,
                                                                          size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeRequest_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsGetRobotModeRequest_decode(void const* b, size_t n, roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeRequest* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeRequest_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsRobotMode_encode(roswasmc_bounded_1_ur_dashboard_msgs_RobotMode const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_RobotMode_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsRobotMode_decode(void const* b, size_t n, roswasmc_bounded_1_ur_dashboard_msgs_RobotMode* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_RobotMode_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsGetRobotModeResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeResponse const* v,
                                                                           void* b,
                                                                           size_t n,
                                                                           size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeResponse_encode(v, b, n, length);
}

uint32_t
    universal_robots_Ros1Ur_dashboard_msgsGetRobotModeResponse_decode(void const* b, size_t n, roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeResponse* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeResponse_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsGetSafetyModeRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeRequest const* v,
                                                                           void* b,
                                                                           size_t n,
                                                                           size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeRequest_encode(v, b, n, length);
}

uint32_t
    universal_robots_Ros1Ur_dashboard_msgsGetSafetyModeRequest_decode(void const* b, size_t n, roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeRequest* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeRequest_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsSafetyMode_encode(roswasmc_bounded_1_ur_dashboard_msgs_SafetyMode const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SafetyMode_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsSafetyMode_decode(void const* b, size_t n, roswasmc_bounded_1_ur_dashboard_msgs_SafetyMode* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SafetyMode_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsGetSafetyModeResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeResponse const* v,
                                                                            void* b,
                                                                            size_t n,
                                                                            size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeResponse_encode(v, b, n, length);
}

uint32_t
    universal_robots_Ros1Ur_dashboard_msgsGetSafetyModeResponse_decode(void const* b, size_t n, roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeResponse* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeResponse_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsIsInRemoteControlRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlRequest const* v,
                                                                               void* b,
                                                                               size_t n,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlRequest_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsIsInRemoteControlRequest_decode(void const* b,
                                                                               size_t n,
                                                                               roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlRequest* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlRequest_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsIsInRemoteControlResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlResponse const* v,
                                                                                void* b,
                                                                                size_t n,
                                                                                size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlResponse_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsIsInRemoteControlResponse_decode(void const* b,
                                                                                size_t n,
                                                                                roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlResponse* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlResponse_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsIsProgramRunningRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningRequest const* v,
                                                                              void* b,
                                                                              size_t n,
                                                                              size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningRequest_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsIsProgramRunningRequest_decode(void const* b,
                                                                              size_t n,
                                                                              roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningRequest* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningRequest_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsIsProgramRunningResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningResponse const* v,
                                                                               void* b,
                                                                               size_t n,
                                                                               size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningResponse_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsIsProgramRunningResponse_decode(void const* b,
                                                                               size_t n,
                                                                               roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningResponse* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningResponse_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsIsProgramSavedRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedRequest const* v,
                                                                            void* b,
                                                                            size_t n,
                                                                            size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedRequest_encode(v, b, n, length);
}

uint32_t
    universal_robots_Ros1Ur_dashboard_msgsIsProgramSavedRequest_decode(void const* b, size_t n, roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedRequest* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedRequest_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsIsProgramSavedResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedResponse const* v,
                                                                             void* b,
                                                                             size_t n,
                                                                             size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedResponse_encode(v, b, n, length);
}

uint32_t
    universal_robots_Ros1Ur_dashboard_msgsIsProgramSavedResponse_decode(void const* b, size_t n, roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedResponse* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedResponse_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsLoadRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_LoadRequest const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_LoadRequest_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsLoadRequest_decode(void const* b, size_t n, roswasmc_bounded_1_ur_dashboard_msgs_LoadRequest* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_LoadRequest_decode(b, n, v);
}

uint32_t
    universal_robots_Ros1Ur_dashboard_msgsLoadResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_LoadResponse const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_LoadResponse_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsLoadResponse_decode(void const* b, size_t n, roswasmc_bounded_1_ur_dashboard_msgs_LoadResponse* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_LoadResponse_decode(b, n, v);
}

uint32_t
    universal_robots_Ros1Ur_dashboard_msgsPopupRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_PopupRequest const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_PopupRequest_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsPopupRequest_decode(void const* b, size_t n, roswasmc_bounded_1_ur_dashboard_msgs_PopupRequest* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_PopupRequest_decode(b, n, v);
}

uint32_t
    universal_robots_Ros1Ur_dashboard_msgsPopupResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_PopupResponse const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_PopupResponse_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsPopupResponse_decode(void const* b, size_t n, roswasmc_bounded_1_ur_dashboard_msgs_PopupResponse* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_PopupResponse_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsRawRequestRequest_encode(roswasmc_bounded_1_ur_dashboard_msgs_RawRequestRequest const* v,
                                                                        void* b,
                                                                        size_t n,
                                                                        size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_RawRequestRequest_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsRawRequestRequest_decode(void const* b, size_t n, roswasmc_bounded_1_ur_dashboard_msgs_RawRequestRequest* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_RawRequestRequest_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsRawRequestResponse_encode(roswasmc_bounded_1_ur_dashboard_msgs_RawRequestResponse const* v,
                                                                         void* b,
                                                                         size_t n,
                                                                         size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_RawRequestResponse_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsRawRequestResponse_decode(void const* b, size_t n, roswasmc_bounded_1_ur_dashboard_msgs_RawRequestResponse* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_RawRequestResponse_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsSetModeGoal_encode(roswasmc_bounded_1_ur_dashboard_msgs_SetModeGoal const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetModeGoal_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsSetModeGoal_decode(void const* b, size_t n, roswasmc_bounded_1_ur_dashboard_msgs_SetModeGoal* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetModeGoal_decode(b, n, v);
}

uint32_t
    universal_robots_Ros1Ur_dashboard_msgsSetModeResult_encode(roswasmc_bounded_1_ur_dashboard_msgs_SetModeResult const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetModeResult_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsSetModeResult_decode(void const* b, size_t n, roswasmc_bounded_1_ur_dashboard_msgs_SetModeResult* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetModeResult_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsSetModeFeedback_encode(roswasmc_bounded_1_ur_dashboard_msgs_SetModeFeedback const* v,
                                                                      void* b,
                                                                      size_t n,
                                                                      size_t* length)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetModeFeedback_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_dashboard_msgsSetModeFeedback_decode(void const* b, size_t n, roswasmc_bounded_1_ur_dashboard_msgs_SetModeFeedback* v)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetModeFeedback_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_msgsAnalog_encode(roswasmc_bounded_1_ur_msgs_Analog const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_msgs_Analog_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_msgsAnalog_decode(void const* b, size_t n, roswasmc_bounded_1_ur_msgs_Analog* v)
{
    return roswasmc_bounded_1_ur_msgs_Analog_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_msgsDigital_encode(roswasmc_bounded_1_ur_msgs_Digital const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_msgs_Digital_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_msgsDigital_decode(void const* b, size_t n, roswasmc_bounded_1_ur_msgs_Digital* v)
{
    return roswasmc_bounded_1_ur_msgs_Digital_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_msgsGetRobotSoftwareVersionRequest_encode(roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionRequest const* v,
                                                                           void* b,
                                                                           size_t n,
                                                                           size_t* length)
{
    return roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionRequest_encode(v, b, n, length);
}

uint32_t
    universal_robots_Ros1Ur_msgsGetRobotSoftwareVersionRequest_decode(void const* b, size_t n, roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionRequest* v)
{
    return roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionRequest_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_msgsGetRobotSoftwareVersionResponse_encode(roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionResponse const* v,
                                                                            void* b,
                                                                            size_t n,
                                                                            size_t* length)
{
    return roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionResponse_encode(v, b, n, length);
}

uint32_t
    universal_robots_Ros1Ur_msgsGetRobotSoftwareVersionResponse_decode(void const* b, size_t n, roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionResponse* v)
{
    return roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionResponse_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_msgsIOStates_encode(roswasmc_bounded_1_ur_msgs_IOStates const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_msgs_IOStates_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_msgsIOStates_decode(void const* b, size_t n, roswasmc_bounded_1_ur_msgs_IOStates* v)
{
    return roswasmc_bounded_1_ur_msgs_IOStates_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_msgsMasterboardDataMsg_encode(roswasmc_bounded_1_ur_msgs_MasterboardDataMsg const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_msgs_MasterboardDataMsg_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_msgsMasterboardDataMsg_decode(void const* b, size_t n, roswasmc_bounded_1_ur_msgs_MasterboardDataMsg* v)
{
    return roswasmc_bounded_1_ur_msgs_MasterboardDataMsg_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_msgsRobotModeDataMsg_encode(roswasmc_bounded_1_ur_msgs_RobotModeDataMsg const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_msgs_RobotModeDataMsg_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_msgsRobotModeDataMsg_decode(void const* b, size_t n, roswasmc_bounded_1_ur_msgs_RobotModeDataMsg* v)
{
    return roswasmc_bounded_1_ur_msgs_RobotModeDataMsg_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_msgsRobotStateRTMsg_encode(roswasmc_bounded_1_ur_msgs_RobotStateRTMsg const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_msgs_RobotStateRTMsg_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_msgsRobotStateRTMsg_decode(void const* b, size_t n, roswasmc_bounded_1_ur_msgs_RobotStateRTMsg* v)
{
    return roswasmc_bounded_1_ur_msgs_RobotStateRTMsg_decode(b, n, v);
}

uint32_t
    universal_robots_Ros1Ur_msgsSetAnalogOutputRequest_encode(roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_msgsSetAnalogOutputRequest_decode(void const* b, size_t n, roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest* v)
{
    return roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest_decode(b, n, v);
}

uint32_t
    universal_robots_Ros1Ur_msgsSetAnalogOutputResponse_encode(roswasmc_bounded_1_ur_msgs_SetAnalogOutputResponse const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_msgs_SetAnalogOutputResponse_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_msgsSetAnalogOutputResponse_decode(void const* b, size_t n, roswasmc_bounded_1_ur_msgs_SetAnalogOutputResponse* v)
{
    return roswasmc_bounded_1_ur_msgs_SetAnalogOutputResponse_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_msgsSetForceModeRequest_encode(roswasmc_bounded_1_ur_msgs_SetForceModeRequest const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_msgs_SetForceModeRequest_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_msgsSetForceModeRequest_decode(void const* b, size_t n, roswasmc_bounded_1_ur_msgs_SetForceModeRequest* v)
{
    return roswasmc_bounded_1_ur_msgs_SetForceModeRequest_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_msgsSetForceModeResponse_encode(roswasmc_bounded_1_ur_msgs_SetForceModeResponse const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_msgs_SetForceModeResponse_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_msgsSetForceModeResponse_decode(void const* b, size_t n, roswasmc_bounded_1_ur_msgs_SetForceModeResponse* v)
{
    return roswasmc_bounded_1_ur_msgs_SetForceModeResponse_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_msgsSetIORequest_encode(roswasmc_bounded_1_ur_msgs_SetIORequest const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_msgs_SetIORequest_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_msgsSetIORequest_decode(void const* b, size_t n, roswasmc_bounded_1_ur_msgs_SetIORequest* v)
{
    return roswasmc_bounded_1_ur_msgs_SetIORequest_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_msgsSetIOResponse_encode(roswasmc_bounded_1_ur_msgs_SetIOResponse const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_msgs_SetIOResponse_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_msgsSetIOResponse_decode(void const* b, size_t n, roswasmc_bounded_1_ur_msgs_SetIOResponse* v)
{
    return roswasmc_bounded_1_ur_msgs_SetIOResponse_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_msgsSetPayloadRequest_encode(roswasmc_bounded_1_ur_msgs_SetPayloadRequest const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_msgs_SetPayloadRequest_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_msgsSetPayloadRequest_decode(void const* b, size_t n, roswasmc_bounded_1_ur_msgs_SetPayloadRequest* v)
{
    return roswasmc_bounded_1_ur_msgs_SetPayloadRequest_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_msgsSetPayloadResponse_encode(roswasmc_bounded_1_ur_msgs_SetPayloadResponse const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_msgs_SetPayloadResponse_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_msgsSetPayloadResponse_decode(void const* b, size_t n, roswasmc_bounded_1_ur_msgs_SetPayloadResponse* v)
{
    return roswasmc_bounded_1_ur_msgs_SetPayloadResponse_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_msgsSetSpeedSliderFractionRequest_encode(roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionRequest const* v,
                                                                          void* b,
                                                                          size_t n,
                                                                          size_t* length)
{
    return roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionRequest_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_msgsSetSpeedSliderFractionRequest_decode(void const* b, size_t n, roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionRequest* v)
{
    return roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionRequest_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_msgsSetSpeedSliderFractionResponse_encode(roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionResponse const* v,
                                                                           void* b,
                                                                           size_t n,
                                                                           size_t* length)
{
    return roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionResponse_encode(v, b, n, length);
}

uint32_t
    universal_robots_Ros1Ur_msgsSetSpeedSliderFractionResponse_decode(void const* b, size_t n, roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionResponse* v)
{
    return roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionResponse_decode(b, n, v);
}

uint32_t universal_robots_Ros1Ur_msgsToolDataMsg_encode(roswasmc_bounded_1_ur_msgs_ToolDataMsg const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_1_ur_msgs_ToolDataMsg_encode(v, b, n, length);
}

uint32_t universal_robots_Ros1Ur_msgsToolDataMsg_decode(void const* b, size_t n, roswasmc_bounded_1_ur_msgs_ToolDataMsg* v)
{
    return roswasmc_bounded_1_ur_msgs_ToolDataMsg_decode(b, n, v);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_AddToLog_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_1_ur_dashboard_msgs_AddToLogRequest const* request,
                                                                                    roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_AddToLog_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_AddToLog_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_1_ur_dashboard_msgs_AddToLogRequest* request)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_AddToLog_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_AddToLog_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_1_ur_dashboard_msgs_AddToLogResponse const* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_AddToLog_respond(cap, ticket, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgram_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramRequest const* request,
                                                                                roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramResponse* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgram_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgram_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramRequest* request)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgram_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgram_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgramResponse const* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetLoadedProgram_respond(cap, ticket, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetProgramState_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateRequest const* request,
                                                                               roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateResponse* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetProgramState_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetProgramState_poll(roswasmc_capability const* cap,
                                                                                           uint64_t* ticket,
                                                                                           roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateRequest* request)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetProgramState_poll(cap, ticket, request);
}

roswasmc_result
    universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetProgramState_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_1_ur_dashboard_msgs_GetProgramStateResponse const* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetProgramState_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetRobotMode_call(roswasmc_capability const* cap,
                                                                                        roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeRequest const* request,
                                                                                        roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeResponse* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetRobotMode_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetRobotMode_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeRequest* request)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetRobotMode_poll(cap, ticket, request);
}

roswasmc_result
    universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetRobotMode_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_ur_dashboard_msgs_GetRobotModeResponse const* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetRobotMode_respond(cap, ticket, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyMode_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeRequest const* request,
                                                                             roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeResponse* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyMode_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyMode_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeRequest* request)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyMode_poll(cap, ticket, request);
}

roswasmc_result
    universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyMode_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyModeResponse const* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_GetSafetyMode_respond(cap, ticket, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControl_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlRequest const* request,
                                                                                 roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlResponse* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControl_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControl_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlRequest* request)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControl_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControl_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControlResponse const* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsInRemoteControl_respond(cap, ticket, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunning_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningRequest const* request,
                                                                                roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningResponse* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunning_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunning_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningRequest* request)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunning_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunning_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunningResponse const* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramRunning_respond(cap, ticket, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSaved_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedRequest const* request,
                                                                              roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedResponse* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSaved_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSaved_poll(roswasmc_capability const* cap,
                                                                                          uint64_t* ticket,
                                                                                          roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedRequest* request)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSaved_poll(cap, ticket, request);
}

roswasmc_result
    universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSaved_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSavedResponse const* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_IsProgramSaved_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_Load_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_1_ur_dashboard_msgs_LoadRequest const* request,
                                                                                roswasmc_bounded_1_ur_dashboard_msgs_LoadResponse* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_Load_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_Load_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_1_ur_dashboard_msgs_LoadRequest* request)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_Load_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_Load_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_1_ur_dashboard_msgs_LoadResponse const* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_Load_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_Popup_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_ur_dashboard_msgs_PopupRequest const* request,
                                                                                 roswasmc_bounded_1_ur_dashboard_msgs_PopupResponse* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_Popup_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_Popup_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_ur_dashboard_msgs_PopupRequest* request)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_Popup_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_Popup_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_ur_dashboard_msgs_PopupResponse const* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_Popup_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_RawRequest_call(roswasmc_capability const* cap,
                                                                                      roswasmc_bounded_1_ur_dashboard_msgs_RawRequestRequest const* request,
                                                                                      roswasmc_bounded_1_ur_dashboard_msgs_RawRequestResponse* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_RawRequest_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_RawRequest_poll(roswasmc_capability const* cap,
                                                                                      uint64_t* ticket,
                                                                                      roswasmc_bounded_1_ur_dashboard_msgs_RawRequestRequest* request)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_RawRequest_poll(cap, ticket, request);
}

roswasmc_result
    universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_RawRequest_respond(roswasmc_capability const* cap,
                                                                             uint64_t ticket,
                                                                             roswasmc_bounded_1_ur_dashboard_msgs_RawRequestResponse const* response)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_RawRequest_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_SetMode_send(roswasmc_action_bundle* bundle,
                                                                                   roswasmc_bounded_1_ur_dashboard_msgs_SetModeGoal const* goal,
                                                                                   uint64_t* id)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetMode_send(bundle, goal, id);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_SetMode_feedback(roswasmc_action_bundle const* bundle,
                                                                                       uint64_t id,
                                                                                       roswasmc_bounded_1_ur_dashboard_msgs_SetModeFeedback* feedback)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetMode_feedback(bundle, id, feedback);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_SetMode_result(roswasmc_action_bundle* bundle,
                                                                                     uint64_t id,
                                                                                     uint8_t* kind,
                                                                                     roswasmc_bounded_1_ur_dashboard_msgs_SetModeResult* result)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetMode_result(bundle, id, kind, result);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_SetMode_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* id,
                                                                                   roswasmc_bounded_1_ur_dashboard_msgs_SetModeGoal* goal)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetMode_poll(cap, id, goal);
}

roswasmc_result
    universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_SetMode_respond_feedback(roswasmc_capability const* cap,
                                                                                   uint64_t id,
                                                                                   roswasmc_bounded_1_ur_dashboard_msgs_SetModeFeedback const* value)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetMode_respond_feedback(cap, id, value);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_dashboard_msgs_SetMode_respond_result(roswasmc_capability const* cap,
                                                                                             uint64_t id,
                                                                                             uint8_t kind,
                                                                                             roswasmc_bounded_1_ur_dashboard_msgs_SetModeResult const* value)
{
    return roswasmc_bounded_1_ur_dashboard_msgs_SetMode_respond_result(cap, id, kind, value);
}

roswasmc_result
    universal_robots_roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersion_call(roswasmc_capability const* cap,
                                                                             roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionRequest const* request,
                                                                             roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionResponse* response)
{
    return roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersion_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersion_poll(roswasmc_capability const* cap,
                                                                                         uint64_t* ticket,
                                                                                         roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionRequest* request)
{
    return roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersion_poll(cap, ticket, request);
}

roswasmc_result
    universal_robots_roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersion_respond(roswasmc_capability const* cap,
                                                                                uint64_t ticket,
                                                                                roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersionResponse const* response)
{
    return roswasmc_bounded_1_ur_msgs_GetRobotSoftwareVersion_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetAnalogOutput_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest const* request,
                                                                                 roswasmc_bounded_1_ur_msgs_SetAnalogOutputResponse* response)
{
    return roswasmc_bounded_1_ur_msgs_SetAnalogOutput_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetAnalogOutput_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest* request)
{
    return roswasmc_bounded_1_ur_msgs_SetAnalogOutput_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetAnalogOutput_respond(roswasmc_capability const* cap,
                                                                                    uint64_t ticket,
                                                                                    roswasmc_bounded_1_ur_msgs_SetAnalogOutputResponse const* response)
{
    return roswasmc_bounded_1_ur_msgs_SetAnalogOutput_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetForceMode_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_1_ur_msgs_SetForceModeRequest const* request,
                                                                              roswasmc_bounded_1_ur_msgs_SetForceModeResponse* response)
{
    return roswasmc_bounded_1_ur_msgs_SetForceMode_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetForceMode_poll(roswasmc_capability const* cap,
                                                                              uint64_t* ticket,
                                                                              roswasmc_bounded_1_ur_msgs_SetForceModeRequest* request)
{
    return roswasmc_bounded_1_ur_msgs_SetForceMode_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetForceMode_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_1_ur_msgs_SetForceModeResponse const* response)
{
    return roswasmc_bounded_1_ur_msgs_SetForceMode_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetIO_call(roswasmc_capability const* cap,
                                                                       roswasmc_bounded_1_ur_msgs_SetIORequest const* request,
                                                                       roswasmc_bounded_1_ur_msgs_SetIOResponse* response)
{
    return roswasmc_bounded_1_ur_msgs_SetIO_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_1_ur_msgs_SetIO_poll(roswasmc_capability const* cap, uint64_t* ticket, roswasmc_bounded_1_ur_msgs_SetIORequest* request)
{
    return roswasmc_bounded_1_ur_msgs_SetIO_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetIO_respond(roswasmc_capability const* cap,
                                                                          uint64_t ticket,
                                                                          roswasmc_bounded_1_ur_msgs_SetIOResponse const* response)
{
    return roswasmc_bounded_1_ur_msgs_SetIO_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetPayload_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_1_ur_msgs_SetPayloadRequest const* request,
                                                                            roswasmc_bounded_1_ur_msgs_SetPayloadResponse* response)
{
    return roswasmc_bounded_1_ur_msgs_SetPayload_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetPayload_poll(roswasmc_capability const* cap,
                                                                            uint64_t* ticket,
                                                                            roswasmc_bounded_1_ur_msgs_SetPayloadRequest* request)
{
    return roswasmc_bounded_1_ur_msgs_SetPayload_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetPayload_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_ur_msgs_SetPayloadResponse const* response)
{
    return roswasmc_bounded_1_ur_msgs_SetPayload_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetSpeedSliderFraction_call(roswasmc_capability const* cap,
                                                                                        roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionRequest const* request,
                                                                                        roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionResponse* response)
{
    return roswasmc_bounded_1_ur_msgs_SetSpeedSliderFraction_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_1_ur_msgs_SetSpeedSliderFraction_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionRequest* request)
{
    return roswasmc_bounded_1_ur_msgs_SetSpeedSliderFraction_poll(cap, ticket, request);
}

roswasmc_result
    universal_robots_roswasmc_bounded_1_ur_msgs_SetSpeedSliderFraction_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_1_ur_msgs_SetSpeedSliderFractionResponse const* response)
{
    return roswasmc_bounded_1_ur_msgs_SetSpeedSliderFraction_respond(cap, ticket, response);
}
