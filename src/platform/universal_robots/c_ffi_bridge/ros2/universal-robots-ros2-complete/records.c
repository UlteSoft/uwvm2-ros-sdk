/**
 * @file records.c
 * @brief Complete universal_robots values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/universal_robots/domains/universal-robots-ros2-complete.ir.json
 * @see document/platform/universal_robots/en_US/README.md
 */

#include <universal_robots/c_ffi_bridge/ros2/universal-robots-ros2-complete/records.h>

uint32_t
    universal_robots_Ros2Builtin_interfacesMsgDuration_encode(roswasmc_bounded_2_builtin_interfaces_msg_Duration const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Builtin_interfacesMsgDuration_decode(void const* b, size_t n, roswasmc_bounded_2_builtin_interfaces_msg_Duration* v)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Duration_decode(b, n, v);
}

uint32_t universal_robots_Ros2Builtin_interfacesMsgTime_encode(roswasmc_bounded_2_builtin_interfaces_msg_Time const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Builtin_interfacesMsgTime_decode(void const* b, size_t n, roswasmc_bounded_2_builtin_interfaces_msg_Time* v)
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Control_msgsMsgJointTolerance_encode(roswasmc_bounded_2_control_msgs_msg_JointTolerance const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_control_msgs_msg_JointTolerance_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Control_msgsMsgJointTolerance_decode(void const* b, size_t n, roswasmc_bounded_2_control_msgs_msg_JointTolerance* v)
{
    return roswasmc_bounded_2_control_msgs_msg_JointTolerance_decode(b, n, v);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgPoint_encode(roswasmc_bounded_2_geometry_msgs_msg_Point const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Point_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgPoint_decode(void const* b, size_t n, roswasmc_bounded_2_geometry_msgs_msg_Point* v)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Point_decode(b, n, v);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgQuaternion_encode(roswasmc_bounded_2_geometry_msgs_msg_Quaternion const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgQuaternion_decode(void const* b, size_t n, roswasmc_bounded_2_geometry_msgs_msg_Quaternion* v)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(b, n, v);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgPose_encode(roswasmc_bounded_2_geometry_msgs_msg_Pose const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgPose_decode(void const* b, size_t n, roswasmc_bounded_2_geometry_msgs_msg_Pose* v)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_decode(b, n, v);
}

uint32_t universal_robots_Ros2Std_msgsMsgHeader_encode(roswasmc_bounded_2_std_msgs_msg_Header const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Std_msgsMsgHeader_decode(void const* b, size_t n, roswasmc_bounded_2_std_msgs_msg_Header* v)
{
    return roswasmc_bounded_2_std_msgs_msg_Header_decode(b, n, v);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgPoseStamped_encode(roswasmc_bounded_2_geometry_msgs_msg_PoseStamped const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgPoseStamped_decode(void const* b, size_t n, roswasmc_bounded_2_geometry_msgs_msg_PoseStamped* v)
{
    return roswasmc_bounded_2_geometry_msgs_msg_PoseStamped_decode(b, n, v);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgVector3_encode(roswasmc_bounded_2_geometry_msgs_msg_Vector3 const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgVector3_decode(void const* b, size_t n, roswasmc_bounded_2_geometry_msgs_msg_Vector3* v)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3_decode(b, n, v);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgTwist_encode(roswasmc_bounded_2_geometry_msgs_msg_Twist const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgTwist_decode(void const* b, size_t n, roswasmc_bounded_2_geometry_msgs_msg_Twist* v)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Twist_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Geometry_msgsMsgVector3Stamped_encode(roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgVector3Stamped_decode(void const* b, size_t n, roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped* v)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Vector3Stamped_decode(b, n, v);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgWrench_encode(roswasmc_bounded_2_geometry_msgs_msg_Wrench const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Wrench_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Geometry_msgsMsgWrench_decode(void const* b, size_t n, roswasmc_bounded_2_geometry_msgs_msg_Wrench* v)
{
    return roswasmc_bounded_2_geometry_msgs_msg_Wrench_decode(b, n, v);
}

uint32_t universal_robots_Ros2Trajectory_msgsMsgJointTrajectoryPoint_encode(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint const* v,
                                                                            void* b,
                                                                            size_t n,
                                                                            size_t* length)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_encode(v, b, n, length);
}

uint32_t
    universal_robots_Ros2Trajectory_msgsMsgJointTrajectoryPoint_decode(void const* b, size_t n, roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint* v)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectoryPoint_decode(b, n, v);
}

uint32_t universal_robots_Ros2Trajectory_msgsMsgJointTrajectory_encode(roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory const* v,
                                                                       void* b,
                                                                       size_t n,
                                                                       size_t* length)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Trajectory_msgsMsgJointTrajectory_decode(void const* b, size_t n, roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory* v)
{
    return roswasmc_bounded_2_trajectory_msgs_msg_JointTrajectory_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsActionSetMode_Goal_encode(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Goal const* v,
                                                                         void* b,
                                                                         size_t n,
                                                                         size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Goal_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsActionSetMode_Goal_decode(void const* b, size_t n, roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Goal* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Goal_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsActionSetMode_Result_encode(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Result const* v,
                                                                           void* b,
                                                                           size_t n,
                                                                           size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Result_encode(v, b, n, length);
}

uint32_t
    universal_robots_Ros2Ur_dashboard_msgsActionSetMode_Result_decode(void const* b, size_t n, roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Result* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Result_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsActionSetMode_Feedback_encode(roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Feedback const* v,
                                                                             void* b,
                                                                             size_t n,
                                                                             size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Feedback_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsActionSetMode_Feedback_decode(void const* b,
                                                                             size_t n,
                                                                             roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Feedback* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Feedback_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgOperationalMode_encode(roswasmc_bounded_2_ur_dashboard_msgs_msg_OperationalMode const* v,
                                                                         void* b,
                                                                         size_t n,
                                                                         size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_OperationalMode_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgOperationalMode_decode(void const* b, size_t n, roswasmc_bounded_2_ur_dashboard_msgs_msg_OperationalMode* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_OperationalMode_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgProgramInformation_encode(roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramInformation const* v,
                                                                            void* b,
                                                                            size_t n,
                                                                            size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramInformation_encode(v, b, n, length);
}

uint32_t
    universal_robots_Ros2Ur_dashboard_msgsMsgProgramInformation_decode(void const* b, size_t n, roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramInformation* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramInformation_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgProgramState_encode(roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramState const* v,
                                                                      void* b,
                                                                      size_t n,
                                                                      size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramState_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgProgramState_decode(void const* b, size_t n, roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramState* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_ProgramState_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Ur_dashboard_msgsMsgRobotMode_encode(roswasmc_bounded_2_ur_dashboard_msgs_msg_RobotMode const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_RobotMode_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgRobotMode_decode(void const* b, size_t n, roswasmc_bounded_2_ur_dashboard_msgs_msg_RobotMode* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_RobotMode_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Ur_dashboard_msgsMsgSafetyMode_encode(roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyMode const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyMode_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgSafetyMode_decode(void const* b, size_t n, roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyMode* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyMode_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgSafetyStatus_encode(roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyStatus const* v,
                                                                      void* b,
                                                                      size_t n,
                                                                      size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyStatus_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgSafetyStatus_decode(void const* b, size_t n, roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyStatus* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_SafetyStatus_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgUserRole_encode(roswasmc_bounded_2_ur_dashboard_msgs_msg_UserRole const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_UserRole_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgUserRole_decode(void const* b, size_t n, roswasmc_bounded_2_ur_dashboard_msgs_msg_UserRole* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_UserRole_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsMsgVersionInformation_encode(roswasmc_bounded_2_ur_dashboard_msgs_msg_VersionInformation const* v,
                                                                            void* b,
                                                                            size_t n,
                                                                            size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_VersionInformation_encode(v, b, n, length);
}

uint32_t
    universal_robots_Ros2Ur_dashboard_msgsMsgVersionInformation_decode(void const* b, size_t n, roswasmc_bounded_2_ur_dashboard_msgs_msg_VersionInformation* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_msg_VersionInformation_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvAddToLog_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Request const* v,
                                                                          void* b,
                                                                          size_t n,
                                                                          size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvAddToLog_Request_decode(void const* b, size_t n, roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvAddToLog_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Response const* v,
                                                                           void* b,
                                                                           size_t n,
                                                                           size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Response_encode(v, b, n, length);
}

uint32_t
    universal_robots_Ros2Ur_dashboard_msgsSrvAddToLog_Response_decode(void const* b, size_t n, roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvDownloadProgram_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Request const* v,
                                                                                 void* b,
                                                                                 size_t n,
                                                                                 size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvDownloadProgram_Request_decode(void const* b,
                                                                                 size_t n,
                                                                                 roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvDownloadProgram_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Response const* v,
                                                                                  void* b,
                                                                                  size_t n,
                                                                                  size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvDownloadProgram_Response_decode(void const* b,
                                                                                  size_t n,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Response_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Request const* v,
                                                                                void* b,
                                                                                size_t n,
                                                                                size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Request_decode(void const* b,
                                                                                     size_t n,
                                                                                     roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Request_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Response const* v,
                                                                                 void* b,
                                                                                 size_t n,
                                                                                 size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvDownloadSupportFile_Response_decode(void const* b,
                                                                                      size_t n,
                                                                                      roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Response_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Request const* v,
                                                                                 void* b,
                                                                                 size_t n,
                                                                                 size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Request_decode(void const* b,
                                                                                      size_t n,
                                                                                      roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response_encode(
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Response const* v,
    void* b,
    size_t n,
    size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Response_encode(v, b, n, length);
}

uint32_t
    universal_robots_Ros2Ur_dashboard_msgsSrvGenerateFlightReport_Response_decode(void const* b,
                                                                                  size_t n,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Response_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Request const* v,
                                                                                void* b,
                                                                                size_t n,
                                                                                size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Request_decode(void const* b,
                                                                                     size_t n,
                                                                                     roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Request_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Response const* v,
                                                                                 void* b,
                                                                                 size_t n,
                                                                                 size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGenerateSupportFile_Response_decode(void const* b,
                                                                                      size_t n,
                                                                                      roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Request const* v,
                                                                                  void* b,
                                                                                  size_t n,
                                                                                  size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Request_decode(void const* b,
                                                                                  size_t n,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Response const* v,
                                                                                   void* b,
                                                                                   size_t n,
                                                                                   size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetLoadedProgram_Response_decode(void const* b,
                                                                                   size_t n,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Response_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Request const* v,
                                                                               void* b,
                                                                               size_t n,
                                                                               size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Request_decode(void const* b,
                                                                                    size_t n,
                                                                                    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Request_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Response const* v,
                                                                                void* b,
                                                                                size_t n,
                                                                                size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetOperationalMode_Response_decode(void const* b,
                                                                                     size_t n,
                                                                                     roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Response_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Request const* v,
                                                                                void* b,
                                                                                size_t n,
                                                                                size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Request_decode(void const* b,
                                                                                     size_t n,
                                                                                     roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Request_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Response const* v,
                                                                                 void* b,
                                                                                 size_t n,
                                                                                 size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetPolyScopeVersion_Response_decode(void const* b,
                                                                                      size_t n,
                                                                                      roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetProgramState_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Request const* v,
                                                                                 void* b,
                                                                                 size_t n,
                                                                                 size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetProgramState_Request_decode(void const* b,
                                                                                 size_t n,
                                                                                 roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetProgramState_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Response const* v,
                                                                                  void* b,
                                                                                  size_t n,
                                                                                  size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetProgramState_Response_decode(void const* b,
                                                                                  size_t n,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetPrograms_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Request const* v,
                                                                             void* b,
                                                                             size_t n,
                                                                             size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetPrograms_Request_decode(void const* b,
                                                                             size_t n,
                                                                             roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetPrograms_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Response const* v,
                                                                              void* b,
                                                                              size_t n,
                                                                              size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetPrograms_Response_decode(void const* b,
                                                                              size_t n,
                                                                              roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetRobotMode_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Request const* v,
                                                                              void* b,
                                                                              size_t n,
                                                                              size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetRobotMode_Request_decode(void const* b,
                                                                              size_t n,
                                                                              roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetRobotMode_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Response const* v,
                                                                               void* b,
                                                                               size_t n,
                                                                               size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetRobotMode_Response_decode(void const* b,
                                                                               size_t n,
                                                                               roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetRobotModel_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Request const* v,
                                                                               void* b,
                                                                               size_t n,
                                                                               size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetRobotModel_Request_decode(void const* b,
                                                                               size_t n,
                                                                               roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetRobotModel_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Response const* v,
                                                                                void* b,
                                                                                size_t n,
                                                                                size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetRobotModel_Response_decode(void const* b,
                                                                                size_t n,
                                                                                roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Request const* v,
                                                                               void* b,
                                                                               size_t n,
                                                                               size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Request_decode(void const* b,
                                                                               size_t n,
                                                                               roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Response const* v,
                                                                                void* b,
                                                                                size_t n,
                                                                                size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetSafetyMode_Response_decode(void const* b,
                                                                                size_t n,
                                                                                roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Request const* v,
                                                                                 void* b,
                                                                                 size_t n,
                                                                                 size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Request_decode(void const* b,
                                                                                 size_t n,
                                                                                 roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Response const* v,
                                                                                  void* b,
                                                                                  size_t n,
                                                                                  size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetSafetyStatus_Response_decode(void const* b,
                                                                                  size_t n,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Request const* v,
                                                                                 void* b,
                                                                                 size_t n,
                                                                                 size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Request_decode(void const* b,
                                                                                 size_t n,
                                                                                 roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Response const* v,
                                                                                  void* b,
                                                                                  size_t n,
                                                                                  size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetSerialNumber_Response_decode(void const* b,
                                                                                  size_t n,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetUserRole_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Request const* v,
                                                                             void* b,
                                                                             size_t n,
                                                                             size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetUserRole_Request_decode(void const* b,
                                                                             size_t n,
                                                                             roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetUserRole_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Response const* v,
                                                                              void* b,
                                                                              size_t n,
                                                                              size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvGetUserRole_Response_decode(void const* b,
                                                                              size_t n,
                                                                              roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Request const* v,
                                                                                   void* b,
                                                                                   size_t n,
                                                                                   size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Request_decode(void const* b,
                                                                                   size_t n,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Request_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Response const* v,
                                                                               void* b,
                                                                               size_t n,
                                                                               size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvIsInRemoteControl_Response_decode(void const* b,
                                                                                    size_t n,
                                                                                    roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Request const* v,
                                                                                  void* b,
                                                                                  size_t n,
                                                                                  size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Request_decode(void const* b,
                                                                                  size_t n,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Response const* v,
                                                                                   void* b,
                                                                                   size_t n,
                                                                                   size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvIsProgramRunning_Response_decode(void const* b,
                                                                                   size_t n,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Request const* v,
                                                                                void* b,
                                                                                size_t n,
                                                                                size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Request_decode(void const* b,
                                                                                size_t n,
                                                                                roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Response const* v,
                                                                                 void* b,
                                                                                 size_t n,
                                                                                 size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvIsProgramSaved_Response_decode(void const* b,
                                                                                 size_t n,
                                                                                 roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvLoad_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Request const* v,
                                                                      void* b,
                                                                      size_t n,
                                                                      size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvLoad_Request_decode(void const* b, size_t n, roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvLoad_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Response const* v,
                                                                       void* b,
                                                                       size_t n,
                                                                       size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvLoad_Response_decode(void const* b, size_t n, roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvPopup_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Request const* v,
                                                                       void* b,
                                                                       size_t n,
                                                                       size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvPopup_Request_decode(void const* b, size_t n, roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvPopup_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Response const* v,
                                                                        void* b,
                                                                        size_t n,
                                                                        size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvPopup_Response_decode(void const* b, size_t n, roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvRawRequest_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Request const* v,
                                                                            void* b,
                                                                            size_t n,
                                                                            size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Request_encode(v, b, n, length);
}

uint32_t
    universal_robots_Ros2Ur_dashboard_msgsSrvRawRequest_Request_decode(void const* b, size_t n, roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvRawRequest_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Response const* v,
                                                                             void* b,
                                                                             size_t n,
                                                                             size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvRawRequest_Response_decode(void const* b,
                                                                             size_t n,
                                                                             roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Response_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Request const* v,
                                                                               void* b,
                                                                               size_t n,
                                                                               size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Request_decode(void const* b,
                                                                                    size_t n,
                                                                                    roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Request_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Response const* v,
                                                                                void* b,
                                                                                size_t n,
                                                                                size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvSetOperationalMode_Response_decode(void const* b,
                                                                                     size_t n,
                                                                                     roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvSetUserRole_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Request const* v,
                                                                             void* b,
                                                                             size_t n,
                                                                             size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvSetUserRole_Request_decode(void const* b,
                                                                             size_t n,
                                                                             roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvSetUserRole_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Response const* v,
                                                                              void* b,
                                                                              size_t n,
                                                                              size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvSetUserRole_Response_decode(void const* b,
                                                                              size_t n,
                                                                              roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvUploadProgram_Request_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Request const* v,
                                                                               void* b,
                                                                               size_t n,
                                                                               size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvUploadProgram_Request_decode(void const* b,
                                                                               size_t n,
                                                                               roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Request* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvUploadProgram_Response_encode(roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Response const* v,
                                                                                void* b,
                                                                                size_t n,
                                                                                size_t* length)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_dashboard_msgsSrvUploadProgram_Response_decode(void const* b,
                                                                                size_t n,
                                                                                roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Response* v)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal_encode(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal const* v,
                                                                                  void* b,
                                                                                  size_t n,
                                                                                  size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Goal_decode(void const* b,
                                                                                  size_t n,
                                                                                  roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal* v)
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result_encode(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result const* v,
                                                                               void* b,
                                                                               size_t n,
                                                                               size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Result_decode(void const* b,
                                                                                    size_t n,
                                                                                    roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result* v)
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback_encode(roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback const* v,
                                                                                 void* b,
                                                                                 size_t n,
                                                                                 size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback_decode(void const* b,
                                                                                      size_t n,
                                                                                      roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback* v)
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsActionSendScript_Goal_encode(roswasmc_bounded_2_ur_msgs_action_SendScript_Goal const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_Goal_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsActionSendScript_Goal_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_action_SendScript_Goal* v)
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_Goal_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Ur_msgsActionSendScript_Result_encode(roswasmc_bounded_2_ur_msgs_action_SendScript_Result const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_Result_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsActionSendScript_Result_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_action_SendScript_Result* v)
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_Result_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsActionSendScript_Feedback_encode(roswasmc_bounded_2_ur_msgs_action_SendScript_Feedback const* v,
                                                                      void* b,
                                                                      size_t n,
                                                                      size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_Feedback_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsActionSendScript_Feedback_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_action_SendScript_Feedback* v)
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_Feedback_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Ur_msgsActionToolContact_Goal_encode(roswasmc_bounded_2_ur_msgs_action_ToolContact_Goal const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_Goal_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsActionToolContact_Goal_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_action_ToolContact_Goal* v)
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_Goal_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsActionToolContact_Result_encode(roswasmc_bounded_2_ur_msgs_action_ToolContact_Result const* v,
                                                                     void* b,
                                                                     size_t n,
                                                                     size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_Result_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsActionToolContact_Result_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_action_ToolContact_Result* v)
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_Result_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsActionToolContact_Feedback_encode(roswasmc_bounded_2_ur_msgs_action_ToolContact_Feedback const* v,
                                                                       void* b,
                                                                       size_t n,
                                                                       size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_Feedback_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsActionToolContact_Feedback_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_action_ToolContact_Feedback* v)
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_Feedback_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsMsgAnalog_encode(roswasmc_bounded_2_ur_msgs_msg_Analog const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_msg_Analog_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsMsgAnalog_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_msg_Analog* v)
{
    return roswasmc_bounded_2_ur_msgs_msg_Analog_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsMsgDigital_encode(roswasmc_bounded_2_ur_msgs_msg_Digital const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_msg_Digital_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsMsgDigital_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_msg_Digital* v)
{
    return roswasmc_bounded_2_ur_msgs_msg_Digital_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsMsgFrictionModelParameters_encode(roswasmc_bounded_2_ur_msgs_msg_FrictionModelParameters const* v,
                                                                       void* b,
                                                                       size_t n,
                                                                       size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_msg_FrictionModelParameters_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsMsgFrictionModelParameters_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_msg_FrictionModelParameters* v)
{
    return roswasmc_bounded_2_ur_msgs_msg_FrictionModelParameters_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsMsgIOStates_encode(roswasmc_bounded_2_ur_msgs_msg_IOStates const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_msg_IOStates_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsMsgIOStates_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_msg_IOStates* v)
{
    return roswasmc_bounded_2_ur_msgs_msg_IOStates_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsMsgMasterboardDataMsg_encode(roswasmc_bounded_2_ur_msgs_msg_MasterboardDataMsg const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_msg_MasterboardDataMsg_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsMsgMasterboardDataMsg_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_msg_MasterboardDataMsg* v)
{
    return roswasmc_bounded_2_ur_msgs_msg_MasterboardDataMsg_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsMsgRobotModeDataMsg_encode(roswasmc_bounded_2_ur_msgs_msg_RobotModeDataMsg const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_msg_RobotModeDataMsg_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsMsgRobotModeDataMsg_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_msg_RobotModeDataMsg* v)
{
    return roswasmc_bounded_2_ur_msgs_msg_RobotModeDataMsg_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsMsgRobotStateRTMsg_encode(roswasmc_bounded_2_ur_msgs_msg_RobotStateRTMsg const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_msg_RobotStateRTMsg_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsMsgRobotStateRTMsg_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_msg_RobotStateRTMsg* v)
{
    return roswasmc_bounded_2_ur_msgs_msg_RobotStateRTMsg_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsMsgToolDataMsg_encode(roswasmc_bounded_2_ur_msgs_msg_ToolDataMsg const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_msg_ToolDataMsg_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsMsgToolDataMsg_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_msg_ToolDataMsg* v)
{
    return roswasmc_bounded_2_ur_msgs_msg_ToolDataMsg_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request_encode(roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Request const* v,
                                                                               void* b,
                                                                               size_t n,
                                                                               size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Request_decode(void const* b,
                                                                               size_t n,
                                                                               roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Request* v)
{
    return roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response_encode(roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Response const* v,
                                                                                void* b,
                                                                                size_t n,
                                                                                size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsSrvGetRobotSoftwareVersion_Response_decode(void const* b,
                                                                                size_t n,
                                                                                roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Response* v)
{
    return roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetAnalogOutput_Request_encode(roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request const* v,
                                                                       void* b,
                                                                       size_t n,
                                                                       size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetAnalogOutput_Request_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request* v)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetAnalogOutput_Response_encode(roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Response const* v,
                                                                        void* b,
                                                                        size_t n,
                                                                        size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetAnalogOutput_Response_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Response* v)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Response_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Ur_msgsSrvSetForceMode_Request_encode(roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetForceMode_Request_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request* v)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetForceMode_Response_encode(roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response const* v,
                                                                     void* b,
                                                                     size_t n,
                                                                     size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetForceMode_Response_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response* v)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetFrictionModelParameters_Request_encode(roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Request const* v,
                                                                                  void* b,
                                                                                  size_t n,
                                                                                  size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetFrictionModelParameters_Request_decode(void const* b,
                                                                                  size_t n,
                                                                                  roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Request* v)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetFrictionModelParameters_Response_encode(roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Response const* v,
                                                                                   void* b,
                                                                                   size_t n,
                                                                                   size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetFrictionModelParameters_Response_decode(void const* b,
                                                                                   size_t n,
                                                                                   roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Response* v)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetGravity_Request_encode(roswasmc_bounded_2_ur_msgs_srv_SetGravity_Request const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetGravity_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetGravity_Request_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_srv_SetGravity_Request* v)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetGravity_Request_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Ur_msgsSrvSetGravity_Response_encode(roswasmc_bounded_2_ur_msgs_srv_SetGravity_Response const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetGravity_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetGravity_Response_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_srv_SetGravity_Response* v)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetGravity_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetIO_Request_encode(roswasmc_bounded_2_ur_msgs_srv_SetIO_Request const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetIO_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetIO_Request_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_srv_SetIO_Request* v)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetIO_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetIO_Response_encode(roswasmc_bounded_2_ur_msgs_srv_SetIO_Response const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetIO_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetIO_Response_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_srv_SetIO_Response* v)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetIO_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetPayload_Request_encode(roswasmc_bounded_2_ur_msgs_srv_SetPayload_Request const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetPayload_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetPayload_Request_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_srv_SetPayload_Request* v)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetPayload_Request_decode(b, n, v);
}

uint32_t
    universal_robots_Ros2Ur_msgsSrvSetPayload_Response_encode(roswasmc_bounded_2_ur_msgs_srv_SetPayload_Response const* v, void* b, size_t n, size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetPayload_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetPayload_Response_decode(void const* b, size_t n, roswasmc_bounded_2_ur_msgs_srv_SetPayload_Response* v)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetPayload_Response_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetSpeedSliderFraction_Request_encode(roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Request const* v,
                                                                              void* b,
                                                                              size_t n,
                                                                              size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Request_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetSpeedSliderFraction_Request_decode(void const* b,
                                                                              size_t n,
                                                                              roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Request* v)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Request_decode(b, n, v);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetSpeedSliderFraction_Response_encode(roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Response const* v,
                                                                               void* b,
                                                                               size_t n,
                                                                               size_t* length)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Response_encode(v, b, n, length);
}

uint32_t universal_robots_Ros2Ur_msgsSrvSetSpeedSliderFraction_Response_decode(void const* b,
                                                                               size_t n,
                                                                               roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Response* v)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Response_decode(b, n, v);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_send(roswasmc_action_bundle* bundle,
                                                                                          roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Goal const* goal,
                                                                                          uint64_t* id)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_send(bundle, goal, id);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_feedback(roswasmc_action_bundle const* bundle,
                                                                                  uint64_t id,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Feedback* feedback)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_feedback(bundle, id, feedback);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_result(roswasmc_action_bundle* bundle,
                                                                                            uint64_t id,
                                                                                            uint8_t* kind,
                                                                                            roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Result* result)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_result(bundle, id, kind, result);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_poll(roswasmc_capability const* cap,
                                                                                          uint64_t* id,
                                                                                          roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Goal* goal)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_poll(cap, id, goal);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_respond_feedback(
    roswasmc_capability const* cap,
    uint64_t id,
    roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Feedback const* value)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_respond_feedback(cap, id, value);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_respond_result(roswasmc_capability const* cap,
                                                                                        uint64_t id,
                                                                                        uint8_t kind,
                                                                                        roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_Result const* value)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_action_SetMode_respond_result(cap, id, kind, value);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_call(roswasmc_capability const* cap,
                                                                            roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Request const* request,
                                                                            roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_poll(roswasmc_capability const* cap,
                                                                                        uint64_t* ticket,
                                                                                        roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_poll(cap, ticket, request);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_respond(roswasmc_capability const* cap,
                                                                               uint64_t ticket,
                                                                               roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_AddToLog_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Request const* request,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadProgram_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Request const* request,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_poll(
    roswasmc_capability const* cap,
    uint64_t* ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_DownloadSupportFile_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Request const* request,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_poll(
    roswasmc_capability const* cap,
    uint64_t* ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateFlightReport_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Request const* request,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_poll(
    roswasmc_capability const* cap,
    uint64_t* ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GenerateSupportFile_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Request const* request,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetLoadedProgram_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Request const* request,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_poll(
    roswasmc_capability const* cap,
    uint64_t* ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetOperationalMode_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Request const* request,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_poll(
    roswasmc_capability const* cap,
    uint64_t* ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPolyScopeVersion_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Request const* request,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetProgramState_respond(cap, ticket, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Request const* request,
                                                                               roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_poll(cap, ticket, request);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetPrograms_respond(cap, ticket, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Request const* request,
                                                                                roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotMode_respond(cap, ticket, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Request const* request,
                                                                                 roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetRobotModel_respond(cap, ticket, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Request const* request,
                                                                                 roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyMode_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Request const* request,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSafetyStatus_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Request const* request,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* ticket,
                                                                                   roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetSerialNumber_respond(cap, ticket, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Request const* request,
                                                                               roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_poll(cap, ticket, request);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_GetUserRole_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Request const* request,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_poll(
    roswasmc_capability const* cap,
    uint64_t* ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsInRemoteControl_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Request const* request,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramRunning_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Request const* request,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_IsProgramSaved_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_call(roswasmc_capability const* cap,
                                                                                    roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Request const* request,
                                                                                    roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_respond(roswasmc_capability const* cap,
                                                                                       uint64_t ticket,
                                                                                       roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Load_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Request const* request,
                                                                                     roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_respond(roswasmc_capability const* cap,
                                                                                        uint64_t ticket,
                                                                                        roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_Popup_respond(cap, ticket, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_call(roswasmc_capability const* cap,
                                                                              roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Request const* request,
                                                                              roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_poll(roswasmc_capability const* cap,
                                                                                          uint64_t* ticket,
                                                                                          roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_poll(cap, ticket, request);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_respond(roswasmc_capability const* cap,
                                                                                 uint64_t ticket,
                                                                                 roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_RawRequest_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Request const* request,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_poll(
    roswasmc_capability const* cap,
    uint64_t* ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetOperationalMode_respond(cap, ticket, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_call(roswasmc_capability const* cap,
                                                                               roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Request const* request,
                                                                               roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_poll(roswasmc_capability const* cap,
                                                                               uint64_t* ticket,
                                                                               roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_poll(cap, ticket, request);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_respond(roswasmc_capability const* cap,
                                                                                  uint64_t ticket,
                                                                                  roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_SetUserRole_respond(cap, ticket, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Request const* request,
                                                                                 roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Response* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Request* request)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_Response const* response)
{
    return roswasmc_bounded_2_ur_dashboard_msgs_srv_UploadProgram_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_send(
    roswasmc_action_bundle* bundle,
    roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal const* goal,
    uint64_t* id)
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_send(bundle, goal, id);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_feedback(
    roswasmc_action_bundle const* bundle,
    uint64_t id,
    roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback* feedback)
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_feedback(bundle, id, feedback);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_result(
    roswasmc_action_bundle* bundle,
    uint64_t id,
    uint8_t* kind,
    roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result* result)
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_result(bundle, id, kind, result);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_poll(roswasmc_capability const* cap,
                                                                                       uint64_t* id,
                                                                                       roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Goal* goal)
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_poll(cap, id, goal);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_respond_feedback(
    roswasmc_capability const* cap,
    uint64_t id,
    roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Feedback const* value)
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_respond_feedback(cap, id, value);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_respond_result(
    roswasmc_capability const* cap,
    uint64_t id,
    uint8_t kind,
    roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_Result const* value)
{
    return roswasmc_bounded_2_ur_msgs_action_FollowJointTrajectoryUntil_respond_result(cap, id, kind, value);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_SendScript_send(roswasmc_action_bundle* bundle,
                                                                                   roswasmc_bounded_2_ur_msgs_action_SendScript_Goal const* goal,
                                                                                   uint64_t* id)
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_send(bundle, goal, id);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_SendScript_feedback(roswasmc_action_bundle const* bundle,
                                                                                       uint64_t id,
                                                                                       roswasmc_bounded_2_ur_msgs_action_SendScript_Feedback* feedback)
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_feedback(bundle, id, feedback);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_SendScript_result(roswasmc_action_bundle* bundle,
                                                                                     uint64_t id,
                                                                                     uint8_t* kind,
                                                                                     roswasmc_bounded_2_ur_msgs_action_SendScript_Result* result)
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_result(bundle, id, kind, result);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_SendScript_poll(roswasmc_capability const* cap,
                                                                                   uint64_t* id,
                                                                                   roswasmc_bounded_2_ur_msgs_action_SendScript_Goal* goal)
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_poll(cap, id, goal);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_msgs_action_SendScript_respond_feedback(roswasmc_capability const* cap,
                                                                                   uint64_t id,
                                                                                   roswasmc_bounded_2_ur_msgs_action_SendScript_Feedback const* value)
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_respond_feedback(cap, id, value);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_SendScript_respond_result(roswasmc_capability const* cap,
                                                                                             uint64_t id,
                                                                                             uint8_t kind,
                                                                                             roswasmc_bounded_2_ur_msgs_action_SendScript_Result const* value)
{
    return roswasmc_bounded_2_ur_msgs_action_SendScript_respond_result(cap, id, kind, value);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_ToolContact_send(roswasmc_action_bundle* bundle,
                                                                                    roswasmc_bounded_2_ur_msgs_action_ToolContact_Goal const* goal,
                                                                                    uint64_t* id)
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_send(bundle, goal, id);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_ToolContact_feedback(roswasmc_action_bundle const* bundle,
                                                                                        uint64_t id,
                                                                                        roswasmc_bounded_2_ur_msgs_action_ToolContact_Feedback* feedback)
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_feedback(bundle, id, feedback);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_ToolContact_result(roswasmc_action_bundle* bundle,
                                                                                      uint64_t id,
                                                                                      uint8_t* kind,
                                                                                      roswasmc_bounded_2_ur_msgs_action_ToolContact_Result* result)
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_result(bundle, id, kind, result);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_ToolContact_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* id,
                                                                                    roswasmc_bounded_2_ur_msgs_action_ToolContact_Goal* goal)
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_poll(cap, id, goal);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_msgs_action_ToolContact_respond_feedback(roswasmc_capability const* cap,
                                                                                    uint64_t id,
                                                                                    roswasmc_bounded_2_ur_msgs_action_ToolContact_Feedback const* value)
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_respond_feedback(cap, id, value);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_action_ToolContact_respond_result(roswasmc_capability const* cap,
                                                                                              uint64_t id,
                                                                                              uint8_t kind,
                                                                                              roswasmc_bounded_2_ur_msgs_action_ToolContact_Result const* value)
{
    return roswasmc_bounded_2_ur_msgs_action_ToolContact_respond_result(cap, id, kind, value);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_call(roswasmc_capability const* cap,
                                                                                 roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Request const* request,
                                                                                 roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Response* response)
{
    return roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_poll(roswasmc_capability const* cap,
                                                                                 uint64_t* ticket,
                                                                                 roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Request* request)
{
    return roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_Response const* response)
{
    return roswasmc_bounded_2_ur_msgs_srv_GetRobotSoftwareVersion_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_call(roswasmc_capability const* cap,
                                                                                     roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request const* request,
                                                                                     roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Response* response)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_poll(roswasmc_capability const* cap,
                                                                                     uint64_t* ticket,
                                                                                     roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request* request)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_respond(roswasmc_capability const* cap,
                                                                                        uint64_t ticket,
                                                                                        roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Response const* response)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetForceMode_call(roswasmc_capability const* cap,
                                                                                  roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request const* request,
                                                                                  roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response* response)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetForceMode_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetForceMode_poll(roswasmc_capability const* cap,
                                                                                  uint64_t* ticket,
                                                                                  roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Request* request)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetForceMode_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetForceMode_respond(roswasmc_capability const* cap,
                                                                                     uint64_t ticket,
                                                                                     roswasmc_bounded_2_ur_msgs_srv_SetForceMode_Response const* response)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetForceMode_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_call(
    roswasmc_capability const* cap,
    roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Request const* request,
    roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Response* response)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_poll(roswasmc_capability const* cap,
                                                                                    uint64_t* ticket,
                                                                                    roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Request* request)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_Response const* response)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetFrictionModelParameters_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetGravity_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_ur_msgs_srv_SetGravity_Request const* request,
                                                                                roswasmc_bounded_2_ur_msgs_srv_SetGravity_Response* response)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetGravity_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetGravity_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_2_ur_msgs_srv_SetGravity_Request* request)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetGravity_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetGravity_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_2_ur_msgs_srv_SetGravity_Response const* response)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetGravity_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetIO_call(roswasmc_capability const* cap,
                                                                           roswasmc_bounded_2_ur_msgs_srv_SetIO_Request const* request,
                                                                           roswasmc_bounded_2_ur_msgs_srv_SetIO_Response* response)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetIO_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetIO_poll(roswasmc_capability const* cap,
                                                                           uint64_t* ticket,
                                                                           roswasmc_bounded_2_ur_msgs_srv_SetIO_Request* request)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetIO_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetIO_respond(roswasmc_capability const* cap,
                                                                              uint64_t ticket,
                                                                              roswasmc_bounded_2_ur_msgs_srv_SetIO_Response const* response)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetIO_respond(cap, ticket, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetPayload_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_ur_msgs_srv_SetPayload_Request const* request,
                                                                                roswasmc_bounded_2_ur_msgs_srv_SetPayload_Response* response)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetPayload_call(cap, request, response);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetPayload_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_2_ur_msgs_srv_SetPayload_Request* request)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetPayload_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetPayload_respond(roswasmc_capability const* cap,
                                                                                   uint64_t ticket,
                                                                                   roswasmc_bounded_2_ur_msgs_srv_SetPayload_Response const* response)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetPayload_respond(cap, ticket, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_call(roswasmc_capability const* cap,
                                                                                roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Request const* request,
                                                                                roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Response* response)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_call(cap, request, response);
}

roswasmc_result
    universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_poll(roswasmc_capability const* cap,
                                                                                uint64_t* ticket,
                                                                                roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Request* request)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_poll(cap, ticket, request);
}

roswasmc_result universal_robots_roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_respond(
    roswasmc_capability const* cap,
    uint64_t ticket,
    roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_Response const* response)
{
    return roswasmc_bounded_2_ur_msgs_srv_SetSpeedSliderFraction_respond(cap, ticket, response);
}
