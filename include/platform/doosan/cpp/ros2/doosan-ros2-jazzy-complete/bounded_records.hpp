/**
 * @file bounded_records.hpp
 * @brief Complete doosan values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/doosan/domains/doosan-ros2-jazzy-complete.ir.json
 * @see document/platform/doosan/en_US/README.md
 */

/** @file C++20 typed bounded canonical records, independent of native ROS libraries.
 * Includes use the existing roswasmcpp Publisher/Subscription codecs and do not grant
 * aliases. Custom Service/Action component codecs also accept the raw typed RPC facade. */
#pragma once
#include <doosan/c/ros2/doosan-ros2-jazzy-complete/bounded_records.h>
#include <ros/cpp/roswasm/roswasmcpp.hpp>

namespace uwvm_custom
{
    /** Complete bounded guest value for dsr_msgs2/action/JogH2r_Goal. */
    using Ros2Dsr_msgs2ActionJogH2r_Goal = roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Goal;
    /** Complete bounded guest value for dsr_msgs2/action/JogH2r_Result. */
    using Ros2Dsr_msgs2ActionJogH2r_Result = roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Result;
    /** Complete bounded guest value for dsr_msgs2/action/JogH2r_Feedback. */
    using Ros2Dsr_msgs2ActionJogH2r_Feedback = roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Feedback;
    /** Complete bounded guest value for dsr_msgs2/action/MovejH2r_Goal. */
    using Ros2Dsr_msgs2ActionMovejH2r_Goal = roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Goal;
    /** Complete bounded guest value for dsr_msgs2/action/MovejH2r_Result. */
    using Ros2Dsr_msgs2ActionMovejH2r_Result = roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Result;
    /** Complete bounded guest value for dsr_msgs2/action/MovejH2r_Feedback. */
    using Ros2Dsr_msgs2ActionMovejH2r_Feedback = roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Feedback;
    /** Complete bounded guest value for dsr_msgs2/action/MovelH2r_Goal. */
    using Ros2Dsr_msgs2ActionMovelH2r_Goal = roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Goal;
    /** Complete bounded guest value for dsr_msgs2/action/MovelH2r_Result. */
    using Ros2Dsr_msgs2ActionMovelH2r_Result = roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Result;
    /** Complete bounded guest value for dsr_msgs2/action/MovelH2r_Feedback. */
    using Ros2Dsr_msgs2ActionMovelH2r_Feedback = roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Feedback;
    /** Complete bounded guest value for dsr_msgs2/msg/AlterMotionStream. */
    using Ros2Dsr_msgs2MsgAlterMotionStream = roswasmc_bounded_2_dsr_msgs2_msg_AlterMotionStream;
    /** Complete bounded guest value for dsr_msgs2/msg/JogMultiAxis. */
    using Ros2Dsr_msgs2MsgJogMultiAxis = roswasmc_bounded_2_dsr_msgs2_msg_JogMultiAxis;
    /** Complete bounded guest value for dsr_msgs2/msg/LogAlarm. */
    using Ros2Dsr_msgs2MsgLogAlarm = roswasmc_bounded_2_dsr_msgs2_msg_LogAlarm;
    /** Complete bounded guest value for dsr_msgs2/msg/ModbusState. */
    using Ros2Dsr_msgs2MsgModbusState = roswasmc_bounded_2_dsr_msgs2_msg_ModbusState;
    /** Complete bounded guest value for dsr_msgs2/msg/RobotDisconnection. */
    using Ros2Dsr_msgs2MsgRobotDisconnection = roswasmc_bounded_2_dsr_msgs2_msg_RobotDisconnection;
    /** Complete bounded guest value for dsr_msgs2/msg/RobotError. */
    using Ros2Dsr_msgs2MsgRobotError = roswasmc_bounded_2_dsr_msgs2_msg_RobotError;
    /** Complete bounded guest value for std_msgs/msg/MultiArrayDimension. */
    using Ros2Std_msgsMsgMultiArrayDimension = roswasmc_bounded_2_std_msgs_msg_MultiArrayDimension;
    /** Complete bounded guest value for std_msgs/msg/MultiArrayLayout. */
    using Ros2Std_msgsMsgMultiArrayLayout = roswasmc_bounded_2_std_msgs_msg_MultiArrayLayout;
    /** Complete bounded guest value for std_msgs/msg/Float64MultiArray. */
    using Ros2Std_msgsMsgFloat64MultiArray = roswasmc_bounded_2_std_msgs_msg_Float64MultiArray;
    /** Complete bounded guest value for dsr_msgs2/msg/RobotState. */
    using Ros2Dsr_msgs2MsgRobotState = roswasmc_bounded_2_dsr_msgs2_msg_RobotState;
    /** Complete bounded guest value for dsr_msgs2/msg/RobotStateRt. */
    using Ros2Dsr_msgs2MsgRobotStateRt = roswasmc_bounded_2_dsr_msgs2_msg_RobotStateRt;
    /** Complete bounded guest value for dsr_msgs2/msg/RobotStop. */
    using Ros2Dsr_msgs2MsgRobotStop = roswasmc_bounded_2_dsr_msgs2_msg_RobotStop;
    /** Complete bounded guest value for dsr_msgs2/msg/ServojRtStream. */
    using Ros2Dsr_msgs2MsgServojRtStream = roswasmc_bounded_2_dsr_msgs2_msg_ServojRtStream;
    /** Complete bounded guest value for dsr_msgs2/msg/ServojStream. */
    using Ros2Dsr_msgs2MsgServojStream = roswasmc_bounded_2_dsr_msgs2_msg_ServojStream;
    /** Complete bounded guest value for dsr_msgs2/msg/ServolRtStream. */
    using Ros2Dsr_msgs2MsgServolRtStream = roswasmc_bounded_2_dsr_msgs2_msg_ServolRtStream;
    /** Complete bounded guest value for dsr_msgs2/msg/ServolStream. */
    using Ros2Dsr_msgs2MsgServolStream = roswasmc_bounded_2_dsr_msgs2_msg_ServolStream;
    /** Complete bounded guest value for dsr_msgs2/msg/SpeedjRtStream. */
    using Ros2Dsr_msgs2MsgSpeedjRtStream = roswasmc_bounded_2_dsr_msgs2_msg_SpeedjRtStream;
    /** Complete bounded guest value for dsr_msgs2/msg/SpeedjStream. */
    using Ros2Dsr_msgs2MsgSpeedjStream = roswasmc_bounded_2_dsr_msgs2_msg_SpeedjStream;
    /** Complete bounded guest value for dsr_msgs2/msg/SpeedlRtStream. */
    using Ros2Dsr_msgs2MsgSpeedlRtStream = roswasmc_bounded_2_dsr_msgs2_msg_SpeedlRtStream;
    /** Complete bounded guest value for dsr_msgs2/msg/SpeedlStream. */
    using Ros2Dsr_msgs2MsgSpeedlStream = roswasmc_bounded_2_dsr_msgs2_msg_SpeedlStream;
    /** Complete bounded guest value for dsr_msgs2/msg/TorqueRtStream. */
    using Ros2Dsr_msgs2MsgTorqueRtStream = roswasmc_bounded_2_dsr_msgs2_msg_TorqueRtStream;
    /** Complete bounded guest value for dsr_msgs2/srv/AlignAxis1_Request. */
    using Ros2Dsr_msgs2SrvAlignAxis1_Request = roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/AlignAxis1_Response. */
    using Ros2Dsr_msgs2SrvAlignAxis1_Response = roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/AlignAxis2_Request. */
    using Ros2Dsr_msgs2SrvAlignAxis2_Request = roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/AlignAxis2_Response. */
    using Ros2Dsr_msgs2SrvAlignAxis2_Response = roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/AlterMotion_Request. */
    using Ros2Dsr_msgs2SrvAlterMotion_Request = roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/AlterMotion_Response. */
    using Ros2Dsr_msgs2SrvAlterMotion_Response = roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/CalcCoord_Request. */
    using Ros2Dsr_msgs2SrvCalcCoord_Request = roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/CalcCoord_Response. */
    using Ros2Dsr_msgs2SrvCalcCoord_Response = roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/ChangeCollisionSensitivity_Request. */
    using Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request = roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/ChangeCollisionSensitivity_Response. */
    using Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response = roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/ChangeOperationSpeed_Request. */
    using Ros2Dsr_msgs2SrvChangeOperationSpeed_Request = roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/ChangeOperationSpeed_Response. */
    using Ros2Dsr_msgs2SrvChangeOperationSpeed_Response = roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/CheckForceCondition_Request. */
    using Ros2Dsr_msgs2SrvCheckForceCondition_Request = roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/CheckForceCondition_Response. */
    using Ros2Dsr_msgs2SrvCheckForceCondition_Response = roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/CheckMotion_Request. */
    using Ros2Dsr_msgs2SrvCheckMotion_Request = roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/CheckMotion_Response. */
    using Ros2Dsr_msgs2SrvCheckMotion_Response = roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/CheckOrientationCondition1_Request. */
    using Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request = roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/CheckOrientationCondition1_Response. */
    using Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response = roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/CheckOrientationCondition2_Request. */
    using Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request = roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/CheckOrientationCondition2_Response. */
    using Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response = roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/CheckPositionCondition_Request. */
    using Ros2Dsr_msgs2SrvCheckPositionCondition_Request = roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/CheckPositionCondition_Response. */
    using Ros2Dsr_msgs2SrvCheckPositionCondition_Response = roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/ConfigCreateModbus_Request. */
    using Ros2Dsr_msgs2SrvConfigCreateModbus_Request = roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/ConfigCreateModbus_Response. */
    using Ros2Dsr_msgs2SrvConfigCreateModbus_Response = roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/ConfigCreateTcp_Request. */
    using Ros2Dsr_msgs2SrvConfigCreateTcp_Request = roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/ConfigCreateTcp_Response. */
    using Ros2Dsr_msgs2SrvConfigCreateTcp_Response = roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/ConfigCreateTool_Request. */
    using Ros2Dsr_msgs2SrvConfigCreateTool_Request = roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/ConfigCreateTool_Response. */
    using Ros2Dsr_msgs2SrvConfigCreateTool_Response = roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/ConfigDeleteModbus_Request. */
    using Ros2Dsr_msgs2SrvConfigDeleteModbus_Request = roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/ConfigDeleteModbus_Response. */
    using Ros2Dsr_msgs2SrvConfigDeleteModbus_Response = roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/ConfigDeleteTcp_Request. */
    using Ros2Dsr_msgs2SrvConfigDeleteTcp_Request = roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/ConfigDeleteTcp_Response. */
    using Ros2Dsr_msgs2SrvConfigDeleteTcp_Response = roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/ConfigDeleteTool_Request. */
    using Ros2Dsr_msgs2SrvConfigDeleteTool_Request = roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/ConfigDeleteTool_Response. */
    using Ros2Dsr_msgs2SrvConfigDeleteTool_Response = roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/ConnectRtControl_Request. */
    using Ros2Dsr_msgs2SrvConnectRtControl_Request = roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/ConnectRtControl_Response. */
    using Ros2Dsr_msgs2SrvConnectRtControl_Response = roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/CoordTransform_Request. */
    using Ros2Dsr_msgs2SrvCoordTransform_Request = roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/CoordTransform_Response. */
    using Ros2Dsr_msgs2SrvCoordTransform_Response = roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/DisableAlterMotion_Request. */
    using Ros2Dsr_msgs2SrvDisableAlterMotion_Request = roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/DisableAlterMotion_Response. */
    using Ros2Dsr_msgs2SrvDisableAlterMotion_Response = roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/DisconnectRtControl_Request. */
    using Ros2Dsr_msgs2SrvDisconnectRtControl_Request = roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/DisconnectRtControl_Response. */
    using Ros2Dsr_msgs2SrvDisconnectRtControl_Response = roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/DrlPause_Request. */
    using Ros2Dsr_msgs2SrvDrlPause_Request = roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/DrlPause_Response. */
    using Ros2Dsr_msgs2SrvDrlPause_Response = roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/DrlResume_Request. */
    using Ros2Dsr_msgs2SrvDrlResume_Request = roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/DrlResume_Response. */
    using Ros2Dsr_msgs2SrvDrlResume_Response = roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/DrlStart_Request. */
    using Ros2Dsr_msgs2SrvDrlStart_Request = roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/DrlStart_Response. */
    using Ros2Dsr_msgs2SrvDrlStart_Response = roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/DrlStop_Request. */
    using Ros2Dsr_msgs2SrvDrlStop_Request = roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/DrlStop_Response. */
    using Ros2Dsr_msgs2SrvDrlStop_Response = roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/EnableAlterMotion_Request. */
    using Ros2Dsr_msgs2SrvEnableAlterMotion_Request = roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/EnableAlterMotion_Response. */
    using Ros2Dsr_msgs2SrvEnableAlterMotion_Response = roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/Fkin_Request. */
    using Ros2Dsr_msgs2SrvFkin_Request = roswasmc_bounded_2_dsr_msgs2_srv_Fkin_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/Fkin_Response. */
    using Ros2Dsr_msgs2SrvFkin_Response = roswasmc_bounded_2_dsr_msgs2_srv_Fkin_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetControlMode_Request. */
    using Ros2Dsr_msgs2SrvGetControlMode_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetControlMode_Response. */
    using Ros2Dsr_msgs2SrvGetControlMode_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetControlSpace_Request. */
    using Ros2Dsr_msgs2SrvGetControlSpace_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetControlSpace_Response. */
    using Ros2Dsr_msgs2SrvGetControlSpace_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCtrlBoxAnalogInput_Request. */
    using Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCtrlBoxAnalogInput_Response. */
    using Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCtrlBoxDigitalInput_Request. */
    using Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCtrlBoxDigitalInput_Response. */
    using Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCtrlBoxDigitalOutput_Request. */
    using Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCtrlBoxDigitalOutput_Response. */
    using Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCurrentPose_Request. */
    using Ros2Dsr_msgs2SrvGetCurrentPose_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCurrentPose_Response. */
    using Ros2Dsr_msgs2SrvGetCurrentPose_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCurrentPosj_Request. */
    using Ros2Dsr_msgs2SrvGetCurrentPosj_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCurrentPosj_Response. */
    using Ros2Dsr_msgs2SrvGetCurrentPosj_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCurrentPosx_Request. */
    using Ros2Dsr_msgs2SrvGetCurrentPosx_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCurrentPosx_Response. */
    using Ros2Dsr_msgs2SrvGetCurrentPosx_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCurrentRotm_Request. */
    using Ros2Dsr_msgs2SrvGetCurrentRotm_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCurrentRotm_Response. */
    using Ros2Dsr_msgs2SrvGetCurrentRotm_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCurrentSolutionSpace_Request. */
    using Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCurrentSolutionSpace_Response. */
    using Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCurrentTcp_Request. */
    using Ros2Dsr_msgs2SrvGetCurrentTcp_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCurrentTcp_Response. */
    using Ros2Dsr_msgs2SrvGetCurrentTcp_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCurrentTool_Request. */
    using Ros2Dsr_msgs2SrvGetCurrentTool_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCurrentTool_Response. */
    using Ros2Dsr_msgs2SrvGetCurrentTool_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCurrentToolFlangePosx_Request. */
    using Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCurrentToolFlangePosx_Response. */
    using Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCurrentVelj_Request. */
    using Ros2Dsr_msgs2SrvGetCurrentVelj_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCurrentVelj_Response. */
    using Ros2Dsr_msgs2SrvGetCurrentVelj_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCurrentVelx_Request. */
    using Ros2Dsr_msgs2SrvGetCurrentVelx_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetCurrentVelx_Response. */
    using Ros2Dsr_msgs2SrvGetCurrentVelx_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetDesiredPosj_Request. */
    using Ros2Dsr_msgs2SrvGetDesiredPosj_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetDesiredPosj_Response. */
    using Ros2Dsr_msgs2SrvGetDesiredPosj_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetDesiredPosx_Request. */
    using Ros2Dsr_msgs2SrvGetDesiredPosx_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetDesiredPosx_Response. */
    using Ros2Dsr_msgs2SrvGetDesiredPosx_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetDesiredVelj_Request. */
    using Ros2Dsr_msgs2SrvGetDesiredVelj_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetDesiredVelj_Response. */
    using Ros2Dsr_msgs2SrvGetDesiredVelj_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetDesiredVelx_Request. */
    using Ros2Dsr_msgs2SrvGetDesiredVelx_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetDesiredVelx_Response. */
    using Ros2Dsr_msgs2SrvGetDesiredVelx_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetDrlState_Request. */
    using Ros2Dsr_msgs2SrvGetDrlState_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetDrlState_Response. */
    using Ros2Dsr_msgs2SrvGetDrlState_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetExternalTorque_Request. */
    using Ros2Dsr_msgs2SrvGetExternalTorque_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetExternalTorque_Response. */
    using Ros2Dsr_msgs2SrvGetExternalTorque_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetInputRegisterBit_Request. */
    using Ros2Dsr_msgs2SrvGetInputRegisterBit_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetInputRegisterBit_Response. */
    using Ros2Dsr_msgs2SrvGetInputRegisterBit_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetInputRegisterFloat_Request. */
    using Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetInputRegisterFloat_Response. */
    using Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetInputRegisterInt_Request. */
    using Ros2Dsr_msgs2SrvGetInputRegisterInt_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetInputRegisterInt_Response. */
    using Ros2Dsr_msgs2SrvGetInputRegisterInt_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetJointTorque_Request. */
    using Ros2Dsr_msgs2SrvGetJointTorque_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetJointTorque_Response. */
    using Ros2Dsr_msgs2SrvGetJointTorque_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetLastAlarm_Request. */
    using Ros2Dsr_msgs2SrvGetLastAlarm_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetLastAlarm_Response. */
    using Ros2Dsr_msgs2SrvGetLastAlarm_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetModbusInput_Request. */
    using Ros2Dsr_msgs2SrvGetModbusInput_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetModbusInput_Response. */
    using Ros2Dsr_msgs2SrvGetModbusInput_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetOrientationError_Request. */
    using Ros2Dsr_msgs2SrvGetOrientationError_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetOrientationError_Response. */
    using Ros2Dsr_msgs2SrvGetOrientationError_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetOutputRegisterBit_Request. */
    using Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetOutputRegisterBit_Response. */
    using Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetOutputRegisterFloat_Request. */
    using Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetOutputRegisterFloat_Response. */
    using Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetOutputRegisterInt_Request. */
    using Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetOutputRegisterInt_Response. */
    using Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetRobotLinkInfo_Request. */
    using Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetRobotLinkInfo_Response. */
    using Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetRobotMode_Request. */
    using Ros2Dsr_msgs2SrvGetRobotMode_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetRobotMode_Response. */
    using Ros2Dsr_msgs2SrvGetRobotMode_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetRobotSpeedMode_Request. */
    using Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetRobotSpeedMode_Response. */
    using Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetRobotState_Request. */
    using Ros2Dsr_msgs2SrvGetRobotState_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetRobotState_Response. */
    using Ros2Dsr_msgs2SrvGetRobotState_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetRobotSystem_Request. */
    using Ros2Dsr_msgs2SrvGetRobotSystem_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetRobotSystem_Response. */
    using Ros2Dsr_msgs2SrvGetRobotSystem_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetRtControlInputDataList_Request. */
    using Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetRtControlInputDataList_Response. */
    using Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetRtControlInputVersionList_Request. */
    using Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetRtControlInputVersionList_Response. */
    using Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetRtControlOutputDataList_Request. */
    using Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetRtControlOutputDataList_Response. */
    using Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetRtControlOutputVersionList_Request. */
    using Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetRtControlOutputVersionList_Response. */
    using Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetSolutionSpace_Request. */
    using Ros2Dsr_msgs2SrvGetSolutionSpace_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetSolutionSpace_Response. */
    using Ros2Dsr_msgs2SrvGetSolutionSpace_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetToolDigitalInput_Request. */
    using Ros2Dsr_msgs2SrvGetToolDigitalInput_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetToolDigitalInput_Response. */
    using Ros2Dsr_msgs2SrvGetToolDigitalInput_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetToolDigitalOutput_Request. */
    using Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetToolDigitalOutput_Response. */
    using Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetToolForce_Request. */
    using Ros2Dsr_msgs2SrvGetToolForce_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetToolForce_Response. */
    using Ros2Dsr_msgs2SrvGetToolForce_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetUserCartCoord_Request. */
    using Ros2Dsr_msgs2SrvGetUserCartCoord_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetUserCartCoord_Response. */
    using Ros2Dsr_msgs2SrvGetUserCartCoord_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/GetWorkpieceWeight_Request. */
    using Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request = roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/GetWorkpieceWeight_Response. */
    using Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response = roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/Ikin_Request. */
    using Ros2Dsr_msgs2SrvIkin_Request = roswasmc_bounded_2_dsr_msgs2_srv_Ikin_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/Ikin_Response. */
    using Ros2Dsr_msgs2SrvIkin_Response = roswasmc_bounded_2_dsr_msgs2_srv_Ikin_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/IsDoneBoltTightening_Request. */
    using Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request = roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/IsDoneBoltTightening_Response. */
    using Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response = roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/Jog_Request. */
    using Ros2Dsr_msgs2SrvJog_Request = roswasmc_bounded_2_dsr_msgs2_srv_Jog_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/Jog_Response. */
    using Ros2Dsr_msgs2SrvJog_Response = roswasmc_bounded_2_dsr_msgs2_srv_Jog_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/JogMulti_Request. */
    using Ros2Dsr_msgs2SrvJogMulti_Request = roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/JogMulti_Response. */
    using Ros2Dsr_msgs2SrvJogMulti_Response = roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveBlending_Request. */
    using Ros2Dsr_msgs2SrvMoveBlending_Request = roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveBlending_Response. */
    using Ros2Dsr_msgs2SrvMoveBlending_Response = roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveCircle_Request. */
    using Ros2Dsr_msgs2SrvMoveCircle_Request = roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveCircle_Response. */
    using Ros2Dsr_msgs2SrvMoveCircle_Response = roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveHome_Request. */
    using Ros2Dsr_msgs2SrvMoveHome_Request = roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveHome_Response. */
    using Ros2Dsr_msgs2SrvMoveHome_Response = roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveJoint_Request. */
    using Ros2Dsr_msgs2SrvMoveJoint_Request = roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveJoint_Response. */
    using Ros2Dsr_msgs2SrvMoveJoint_Response = roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveJointx_Request. */
    using Ros2Dsr_msgs2SrvMoveJointx_Request = roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveJointx_Response. */
    using Ros2Dsr_msgs2SrvMoveJointx_Response = roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveLine_Request. */
    using Ros2Dsr_msgs2SrvMoveLine_Request = roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveLine_Response. */
    using Ros2Dsr_msgs2SrvMoveLine_Response = roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/MovePause_Request. */
    using Ros2Dsr_msgs2SrvMovePause_Request = roswasmc_bounded_2_dsr_msgs2_srv_MovePause_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/MovePause_Response. */
    using Ros2Dsr_msgs2SrvMovePause_Response = roswasmc_bounded_2_dsr_msgs2_srv_MovePause_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/MovePeriodic_Request. */
    using Ros2Dsr_msgs2SrvMovePeriodic_Request = roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/MovePeriodic_Response. */
    using Ros2Dsr_msgs2SrvMovePeriodic_Response = roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveResume_Request. */
    using Ros2Dsr_msgs2SrvMoveResume_Request = roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveResume_Response. */
    using Ros2Dsr_msgs2SrvMoveResume_Response = roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveSpiral_Request. */
    using Ros2Dsr_msgs2SrvMoveSpiral_Request = roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveSpiral_Response. */
    using Ros2Dsr_msgs2SrvMoveSpiral_Response = roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveSplineJoint_Request. */
    using Ros2Dsr_msgs2SrvMoveSplineJoint_Request = roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveSplineJoint_Response. */
    using Ros2Dsr_msgs2SrvMoveSplineJoint_Response = roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveSplineTask_Request. */
    using Ros2Dsr_msgs2SrvMoveSplineTask_Request = roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveSplineTask_Response. */
    using Ros2Dsr_msgs2SrvMoveSplineTask_Response = roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveStop_Request. */
    using Ros2Dsr_msgs2SrvMoveStop_Request = roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveStop_Response. */
    using Ros2Dsr_msgs2SrvMoveStop_Response = roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveWait_Request. */
    using Ros2Dsr_msgs2SrvMoveWait_Request = roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/MoveWait_Response. */
    using Ros2Dsr_msgs2SrvMoveWait_Response = roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/OverwriteUserCartCoord_Request. */
    using Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request = roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/OverwriteUserCartCoord_Response. */
    using Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response = roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/ParallelAxis1_Request. */
    using Ros2Dsr_msgs2SrvParallelAxis1_Request = roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/ParallelAxis1_Response. */
    using Ros2Dsr_msgs2SrvParallelAxis1_Response = roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/ParallelAxis2_Request. */
    using Ros2Dsr_msgs2SrvParallelAxis2_Request = roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/ParallelAxis2_Response. */
    using Ros2Dsr_msgs2SrvParallelAxis2_Response = roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/ReadDataRt_Request. */
    using Ros2Dsr_msgs2SrvReadDataRt_Request = roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/ReadDataRt_Response. */
    using Ros2Dsr_msgs2SrvReadDataRt_Response = roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/ReleaseComplianceCtrl_Request. */
    using Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request = roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/ReleaseComplianceCtrl_Response. */
    using Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response = roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/ReleaseForce_Request. */
    using Ros2Dsr_msgs2SrvReleaseForce_Request = roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/ReleaseForce_Response. */
    using Ros2Dsr_msgs2SrvReleaseForce_Response = roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/ResetWorkpieceWeight_Request. */
    using Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request = roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/ResetWorkpieceWeight_Response. */
    using Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response = roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/Robotiq2FClose_Request. */
    using Ros2Dsr_msgs2SrvRobotiq2FClose_Request = roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/Robotiq2FClose_Response. */
    using Ros2Dsr_msgs2SrvRobotiq2FClose_Response = roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/Robotiq2FMove_Request. */
    using Ros2Dsr_msgs2SrvRobotiq2FMove_Request = roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/Robotiq2FMove_Response. */
    using Ros2Dsr_msgs2SrvRobotiq2FMove_Response = roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/Robotiq2FOpen_Request. */
    using Ros2Dsr_msgs2SrvRobotiq2FOpen_Request = roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/Robotiq2FOpen_Response. */
    using Ros2Dsr_msgs2SrvRobotiq2FOpen_Response = roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SerialSendData_Request. */
    using Ros2Dsr_msgs2SrvSerialSendData_Request = roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SerialSendData_Response. */
    using Ros2Dsr_msgs2SrvSerialSendData_Response = roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/ServoOff_Request. */
    using Ros2Dsr_msgs2SrvServoOff_Request = roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/ServoOff_Response. */
    using Ros2Dsr_msgs2SrvServoOff_Response = roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetAccjRt_Request. */
    using Ros2Dsr_msgs2SrvSetAccjRt_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetAccjRt_Response. */
    using Ros2Dsr_msgs2SrvSetAccjRt_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetAccxRt_Request. */
    using Ros2Dsr_msgs2SrvSetAccxRt_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetAccxRt_Response. */
    using Ros2Dsr_msgs2SrvSetAccxRt_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetCtrlBoxAnalogInputType_Request. */
    using Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetCtrlBoxAnalogInputType_Response. */
    using Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetCtrlBoxAnalogOutput_Request. */
    using Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetCtrlBoxAnalogOutput_Response. */
    using Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetCtrlBoxAnalogOutputType_Request. */
    using Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetCtrlBoxAnalogOutputType_Response. */
    using Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetCtrlBoxDigitalOutput_Request. */
    using Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetCtrlBoxDigitalOutput_Response. */
    using Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetCurrentTcp_Request. */
    using Ros2Dsr_msgs2SrvSetCurrentTcp_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetCurrentTcp_Response. */
    using Ros2Dsr_msgs2SrvSetCurrentTcp_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetCurrentTool_Request. */
    using Ros2Dsr_msgs2SrvSetCurrentTool_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetCurrentTool_Response. */
    using Ros2Dsr_msgs2SrvSetCurrentTool_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetDesiredForce_Request. */
    using Ros2Dsr_msgs2SrvSetDesiredForce_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetDesiredForce_Response. */
    using Ros2Dsr_msgs2SrvSetDesiredForce_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetModbusOutput_Request. */
    using Ros2Dsr_msgs2SrvSetModbusOutput_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetModbusOutput_Response. */
    using Ros2Dsr_msgs2SrvSetModbusOutput_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetOutputRegisterBit_Request. */
    using Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetOutputRegisterBit_Response. */
    using Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetOutputRegisterFloat_Request. */
    using Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetOutputRegisterFloat_Response. */
    using Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetOutputRegisterInt_Request. */
    using Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetOutputRegisterInt_Response. */
    using Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetRefCoord_Request. */
    using Ros2Dsr_msgs2SrvSetRefCoord_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetRefCoord_Response. */
    using Ros2Dsr_msgs2SrvSetRefCoord_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetRobotControl_Request. */
    using Ros2Dsr_msgs2SrvSetRobotControl_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetRobotControl_Response. */
    using Ros2Dsr_msgs2SrvSetRobotControl_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetRobotMode_Request. */
    using Ros2Dsr_msgs2SrvSetRobotMode_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetRobotMode_Response. */
    using Ros2Dsr_msgs2SrvSetRobotMode_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetRobotSpeedMode_Request. */
    using Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetRobotSpeedMode_Response. */
    using Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetRobotSystem_Request. */
    using Ros2Dsr_msgs2SrvSetRobotSystem_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetRobotSystem_Response. */
    using Ros2Dsr_msgs2SrvSetRobotSystem_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetRtControlInput_Request. */
    using Ros2Dsr_msgs2SrvSetRtControlInput_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetRtControlInput_Response. */
    using Ros2Dsr_msgs2SrvSetRtControlInput_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetRtControlOutput_Request. */
    using Ros2Dsr_msgs2SrvSetRtControlOutput_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetRtControlOutput_Response. */
    using Ros2Dsr_msgs2SrvSetRtControlOutput_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetSafeStopResetType_Request. */
    using Ros2Dsr_msgs2SrvSetSafeStopResetType_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetSafeStopResetType_Response. */
    using Ros2Dsr_msgs2SrvSetSafeStopResetType_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetSafetyMode_Request. */
    using Ros2Dsr_msgs2SrvSetSafetyMode_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetSafetyMode_Response. */
    using Ros2Dsr_msgs2SrvSetSafetyMode_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetSingularHandlingForce_Request. */
    using Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetSingularHandlingForce_Response. */
    using Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetSingularityHandling_Request. */
    using Ros2Dsr_msgs2SrvSetSingularityHandling_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetSingularityHandling_Response. */
    using Ros2Dsr_msgs2SrvSetSingularityHandling_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetStiffnessx_Request. */
    using Ros2Dsr_msgs2SrvSetStiffnessx_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetStiffnessx_Response. */
    using Ros2Dsr_msgs2SrvSetStiffnessx_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetToolDigitalOutput_Request. */
    using Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetToolDigitalOutput_Response. */
    using Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetToolShape_Request. */
    using Ros2Dsr_msgs2SrvSetToolShape_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetToolShape_Response. */
    using Ros2Dsr_msgs2SrvSetToolShape_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetUserCartCoord1_Request. */
    using Ros2Dsr_msgs2SrvSetUserCartCoord1_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetUserCartCoord1_Response. */
    using Ros2Dsr_msgs2SrvSetUserCartCoord1_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetUserCartCoord2_Request. */
    using Ros2Dsr_msgs2SrvSetUserCartCoord2_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetUserCartCoord2_Response. */
    using Ros2Dsr_msgs2SrvSetUserCartCoord2_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetUserCartCoord3_Request. */
    using Ros2Dsr_msgs2SrvSetUserCartCoord3_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetUserCartCoord3_Response. */
    using Ros2Dsr_msgs2SrvSetUserCartCoord3_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetVeljRt_Request. */
    using Ros2Dsr_msgs2SrvSetVeljRt_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetVeljRt_Response. */
    using Ros2Dsr_msgs2SrvSetVeljRt_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/SetVelxRt_Request. */
    using Ros2Dsr_msgs2SrvSetVelxRt_Request = roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/SetVelxRt_Response. */
    using Ros2Dsr_msgs2SrvSetVelxRt_Response = roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/StartRtControl_Request. */
    using Ros2Dsr_msgs2SrvStartRtControl_Request = roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/StartRtControl_Response. */
    using Ros2Dsr_msgs2SrvStartRtControl_Response = roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/StopRtControl_Request. */
    using Ros2Dsr_msgs2SrvStopRtControl_Request = roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/StopRtControl_Response. */
    using Ros2Dsr_msgs2SrvStopRtControl_Response = roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/TaskComplianceCtrl_Request. */
    using Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request = roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/TaskComplianceCtrl_Response. */
    using Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response = roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/Trans_Request. */
    using Ros2Dsr_msgs2SrvTrans_Request = roswasmc_bounded_2_dsr_msgs2_srv_Trans_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/Trans_Response. */
    using Ros2Dsr_msgs2SrvTrans_Response = roswasmc_bounded_2_dsr_msgs2_srv_Trans_Response;
    /** Complete bounded guest value for dsr_msgs2/srv/WriteDataRt_Request. */
    using Ros2Dsr_msgs2SrvWriteDataRt_Request = roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_Request;
    /** Complete bounded guest value for dsr_msgs2/srv/WriteDataRt_Response. */
    using Ros2Dsr_msgs2SrvWriteDataRt_Response = roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_Response;
}  // namespace uwvm_custom

namespace roswasmcpp
{
    /** Checked codec for dsr_msgs2/action/JogH2r_Goal; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2ActionJogH2r_Goal>
    {
        static constexpr size_t max_wire_bytes = 10;
        static constexpr char const* codec_identity = "UWVMROS1_06245e203e3de9eab0c11ee37506291cbdfc285518b044d9874412a55a948031";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2ActionJogH2r_Goal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Goal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Goal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Goal_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2ActionJogH2r_Goal& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Goal_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/action/JogH2r_Result; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2ActionJogH2r_Result>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_79b337d3246b2761333d4d9538c137e41a9b795b9ae0fcf8a3a95f9919cd9f32";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2ActionJogH2r_Result const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Result_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Result_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Result_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2ActionJogH2r_Result& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Result_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/action/JogH2r_Feedback; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2ActionJogH2r_Feedback>
    {
        static constexpr size_t max_wire_bytes = 48;
        static constexpr char const* codec_identity = "UWVMROS1_ec4a775b8e986378d1064390512a267cc4ee1a43489b64ab3faed57a88184c8b";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2ActionJogH2r_Feedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Feedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Feedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Feedback_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2ActionJogH2r_Feedback& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_action_JogH2r_Feedback_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/action/MovejH2r_Goal; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2ActionMovejH2r_Goal>
    {
        static constexpr size_t max_wire_bytes = 144;
        static constexpr char const* codec_identity = "UWVMROS1_1f500b1d55e67e54b564236307f6761a74d79887ab35c4733cd741f480d7d0dc";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2ActionMovejH2r_Goal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Goal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Goal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Goal_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2ActionMovejH2r_Goal& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Goal_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/action/MovejH2r_Result; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2ActionMovejH2r_Result>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_9055b94a2148571ab9cf3edd50625e2c49697bcab7827d3d6520281e3af3fc51";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2ActionMovejH2r_Result const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Result_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Result_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Result_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2ActionMovejH2r_Result& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Result_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/action/MovejH2r_Feedback; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2ActionMovejH2r_Feedback>
    {
        static constexpr size_t max_wire_bytes = 48;
        static constexpr char const* codec_identity = "UWVMROS1_a300a02e724a0d402966787cd8ce0fc3bef26d8d2e53157d2a29cad55406fd9e";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2ActionMovejH2r_Feedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Feedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Feedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Feedback_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2ActionMovejH2r_Feedback& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_action_MovejH2r_Feedback_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/action/MovelH2r_Goal; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2ActionMovelH2r_Goal>
    {
        static constexpr size_t max_wire_bytes = 80;
        static constexpr char const* codec_identity = "UWVMROS1_e1e2a6cd46247b347002d41f062949ab869c6bd84c305cd951cb5fb32ffe7d9c";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2ActionMovelH2r_Goal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Goal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Goal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Goal_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2ActionMovelH2r_Goal& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Goal_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/action/MovelH2r_Result; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2ActionMovelH2r_Result>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_0daf4123fb4d7b06d11b3d47f1b5881357aa840e37e2adc84e46dd97d2c062dd";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2ActionMovelH2r_Result const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Result_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Result_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Result_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2ActionMovelH2r_Result& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Result_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/action/MovelH2r_Feedback; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2ActionMovelH2r_Feedback>
    {
        static constexpr size_t max_wire_bytes = 48;
        static constexpr char const* codec_identity = "UWVMROS1_e67cb580a7c20e9f69813a44eeb8cce45cffc8292dbd895c210b3a46937e745a";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2ActionMovelH2r_Feedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Feedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Feedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Feedback_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2ActionMovelH2r_Feedback& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_action_MovelH2r_Feedback_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/msg/AlterMotionStream; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2MsgAlterMotionStream>
    {
        static constexpr size_t max_wire_bytes = 48;
        static constexpr char const* codec_identity = "UWVMROS1_42cda028849d2f3c24dddf69907122eeaccc19ab595150b0c4bfa9a6c4b37200";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2MsgAlterMotionStream const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_msg_AlterMotionStream_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_msg_AlterMotionStream_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_msg_AlterMotionStream_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2MsgAlterMotionStream& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_msg_AlterMotionStream_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/msg/JogMultiAxis; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2MsgJogMultiAxis>
    {
        static constexpr size_t max_wire_bytes = 57;
        static constexpr char const* codec_identity = "UWVMROS1_1abbca14f7ca912b0d1a3ff2eac2414268b78e10380d8eac9e231f79f26ce07e";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2MsgJogMultiAxis const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_msg_JogMultiAxis_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_msg_JogMultiAxis_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_msg_JogMultiAxis_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2MsgJogMultiAxis& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_msg_JogMultiAxis_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/msg/LogAlarm; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2MsgLogAlarm>
    {
        static constexpr size_t max_wire_bytes = 792;
        static constexpr char const* codec_identity = "UWVMROS1_d35d6f6098edff03d2568f14471db88ea998873ba4a04794750f7134825e2bfe";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2MsgLogAlarm const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_msg_LogAlarm_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_msg_LogAlarm_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_msg_LogAlarm_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2MsgLogAlarm& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_msg_LogAlarm_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/msg/ModbusState; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2MsgModbusState>
    {
        static constexpr size_t max_wire_bytes = 264;
        static constexpr char const* codec_identity = "UWVMROS1_b5648e70b313800a6b18e809d0950f53c538d2647ff67fd3884cce728f3be765";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2MsgModbusState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_msg_ModbusState_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_msg_ModbusState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_msg_ModbusState_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2MsgModbusState& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_msg_ModbusState_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/msg/RobotDisconnection; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2MsgRobotDisconnection>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_d686889739e672509dee7fc8538cddd634e536f392709b7bdcc0572c755c65c4";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2MsgRobotDisconnection const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_msg_RobotDisconnection_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_msg_RobotDisconnection_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_msg_RobotDisconnection_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2MsgRobotDisconnection& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_msg_RobotDisconnection_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/msg/RobotError; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2MsgRobotError>
    {
        static constexpr size_t max_wire_bytes = 792;
        static constexpr char const* codec_identity = "UWVMROS1_5c628814ad82c181ce0eae34fe89fb384169bfecbdeed07bddb2318a4e3c5a67";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2MsgRobotError const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_msg_RobotError_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_msg_RobotError_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_msg_RobotError_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2MsgRobotError& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_msg_RobotError_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for std_msgs/msg/MultiArrayDimension; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Std_msgsMsgMultiArrayDimension>
    {
        static constexpr size_t max_wire_bytes = 76;
        static constexpr char const* codec_identity = "UWVMROS1_be0694d8fef4d71a5afd7072b14b9f246464e4c3a8dbbfb21ef22c32296c2f73";

        static bool encode(uwvm_custom::Ros2Std_msgsMsgMultiArrayDimension const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_std_msgs_msg_MultiArrayDimension_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_std_msgs_msg_MultiArrayDimension_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_std_msgs_msg_MultiArrayDimension_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Std_msgsMsgMultiArrayDimension& out)
        {
            return !roswasmc_bounded_2_std_msgs_msg_MultiArrayDimension_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for std_msgs/msg/MultiArrayLayout; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Std_msgsMsgMultiArrayLayout>
    {
        static constexpr size_t max_wire_bytes = 236;
        static constexpr char const* codec_identity = "UWVMROS1_d1b6f03846800e7c6672b48f3585ad43cbccb4f2d892a4bc986e2df00667b392";

        static bool encode(uwvm_custom::Ros2Std_msgsMsgMultiArrayLayout const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_std_msgs_msg_MultiArrayLayout_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_std_msgs_msg_MultiArrayLayout_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_std_msgs_msg_MultiArrayLayout_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Std_msgsMsgMultiArrayLayout& out)
        {
            return !roswasmc_bounded_2_std_msgs_msg_MultiArrayLayout_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for std_msgs/msg/Float64MultiArray; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Std_msgsMsgFloat64MultiArray>
    {
        static constexpr size_t max_wire_bytes = 368;
        static constexpr char const* codec_identity = "UWVMROS1_9a214c31604613d6d1ebba644301f686ad3dff1a7a6c1005540ae0062d924f95";

        static bool encode(uwvm_custom::Ros2Std_msgsMsgFloat64MultiArray const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_std_msgs_msg_Float64MultiArray_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_std_msgs_msg_Float64MultiArray_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_std_msgs_msg_Float64MultiArray_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Std_msgsMsgFloat64MultiArray& out)
        {
            return !roswasmc_bounded_2_std_msgs_msg_Float64MultiArray_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/msg/RobotState; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2MsgRobotState>
    {
        static constexpr size_t max_wire_bytes = 17004;
        static constexpr char const* codec_identity = "UWVMROS1_e705618c8be95896187c604e77324a4e8373df20b89819a7f94abf995eb93942";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2MsgRobotState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_msg_RobotState_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_msg_RobotState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_msg_RobotState_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2MsgRobotState& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_msg_RobotState_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/msg/RobotStateRt; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2MsgRobotStateRt>
    {
        static constexpr size_t max_wire_bytes = 8154;
        static constexpr char const* codec_identity = "UWVMROS1_13d507971439fe6ba5458b55545edfcf1ead10ce7e603365cffa5f894657be93";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2MsgRobotStateRt const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_msg_RobotStateRt_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_msg_RobotStateRt_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_msg_RobotStateRt_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2MsgRobotStateRt& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_msg_RobotStateRt_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/msg/RobotStop; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2MsgRobotStop>
    {
        static constexpr size_t max_wire_bytes = 4;
        static constexpr char const* codec_identity = "UWVMROS1_f3307dbbe0c0c842659c2db436d1c3d6f032157979c5b6178103319bb5eeda37";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2MsgRobotStop const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_msg_RobotStop_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_msg_RobotStop_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_msg_RobotStop_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2MsgRobotStop& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_msg_RobotStop_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/msg/ServojRtStream; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2MsgServojRtStream>
    {
        static constexpr size_t max_wire_bytes = 152;
        static constexpr char const* codec_identity = "UWVMROS1_4321e707fa63a57b66eb3754deca45fe0c108c52565a0e0f62749deae95726a9";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2MsgServojRtStream const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_msg_ServojRtStream_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_msg_ServojRtStream_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_msg_ServojRtStream_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2MsgServojRtStream& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_msg_ServojRtStream_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/msg/ServojStream; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2MsgServojStream>
    {
        static constexpr size_t max_wire_bytes = 153;
        static constexpr char const* codec_identity = "UWVMROS1_bbd465cf407d444db1d536bf464b3e3939b18aa904c4ce99aac2fb2d918259a9";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2MsgServojStream const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_msg_ServojStream_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_msg_ServojStream_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_msg_ServojStream_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2MsgServojStream& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_msg_ServojStream_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/msg/ServolRtStream; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2MsgServolRtStream>
    {
        static constexpr size_t max_wire_bytes = 152;
        static constexpr char const* codec_identity = "UWVMROS1_052d62a9865376150ca907ac85216a91f19dd81ed7bbe943ed53e74b6e511763";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2MsgServolRtStream const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_msg_ServolRtStream_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_msg_ServolRtStream_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_msg_ServolRtStream_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2MsgServolRtStream& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_msg_ServolRtStream_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/msg/ServolStream; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2MsgServolStream>
    {
        static constexpr size_t max_wire_bytes = 88;
        static constexpr char const* codec_identity = "UWVMROS1_7d3d948e15e7dcc96f21f17d0c6a1981859ea8002234ea93877919fa961c2a96";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2MsgServolStream const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_msg_ServolStream_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_msg_ServolStream_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_msg_ServolStream_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2MsgServolStream& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_msg_ServolStream_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/msg/SpeedjRtStream; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2MsgSpeedjRtStream>
    {
        static constexpr size_t max_wire_bytes = 104;
        static constexpr char const* codec_identity = "UWVMROS1_d6f75878c6dd397b261ede489ca0b3c2e7f26c44908a16d809303a77ca4791aa";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2MsgSpeedjRtStream const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_msg_SpeedjRtStream_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_msg_SpeedjRtStream_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_msg_SpeedjRtStream_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2MsgSpeedjRtStream& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_msg_SpeedjRtStream_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/msg/SpeedjStream; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2MsgSpeedjStream>
    {
        static constexpr size_t max_wire_bytes = 104;
        static constexpr char const* codec_identity = "UWVMROS1_c37473b30f0e49db847342eb9b0e27606010710a43de7b94c8589707bceacbf5";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2MsgSpeedjStream const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_msg_SpeedjStream_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_msg_SpeedjStream_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_msg_SpeedjStream_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2MsgSpeedjStream& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_msg_SpeedjStream_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/msg/SpeedlRtStream; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2MsgSpeedlRtStream>
    {
        static constexpr size_t max_wire_bytes = 104;
        static constexpr char const* codec_identity = "UWVMROS1_0e85422a682aef2c639f5e8a44b883e7c9b3491c95bf352c34ba23e9fb789b92";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2MsgSpeedlRtStream const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_msg_SpeedlRtStream_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_msg_SpeedlRtStream_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_msg_SpeedlRtStream_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2MsgSpeedlRtStream& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_msg_SpeedlRtStream_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/msg/SpeedlStream; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2MsgSpeedlStream>
    {
        static constexpr size_t max_wire_bytes = 72;
        static constexpr char const* codec_identity = "UWVMROS1_8ae5704395fff21a33153589b6a32a41e8687cee0607a7085156c42a2f087ef2";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2MsgSpeedlStream const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_msg_SpeedlStream_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_msg_SpeedlStream_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_msg_SpeedlStream_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2MsgSpeedlStream& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_msg_SpeedlStream_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/msg/TorqueRtStream; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2MsgTorqueRtStream>
    {
        static constexpr size_t max_wire_bytes = 56;
        static constexpr char const* codec_identity = "UWVMROS1_81cb4c6d445c6869b94baca87ce997c96964b7e189598b0adfdcc227a295fd73";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2MsgTorqueRtStream const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_msg_TorqueRtStream_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_msg_TorqueRtStream_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_msg_TorqueRtStream_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2MsgTorqueRtStream& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_msg_TorqueRtStream_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/AlignAxis1_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvAlignAxis1_Request>
    {
        static constexpr size_t max_wire_bytes = 170;
        static constexpr char const* codec_identity = "UWVMROS1_1ddf70ffd434db95044523b5778f518ec204aed4e315293ecb474e1ec1b1267d";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvAlignAxis1_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvAlignAxis1_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/AlignAxis1_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvAlignAxis1_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_f767cbca9c94fc07d10cff7cdbc4125f6d657f4362335ce968dcbd560a75a537";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvAlignAxis1_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvAlignAxis1_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis1_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/AlignAxis2_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvAlignAxis2_Request>
    {
        static constexpr size_t max_wire_bytes = 50;
        static constexpr char const* codec_identity = "UWVMROS1_102ba03a00114a9c5314e5f947050c88791c1abffcff3d9b3163f06557c9d1ca";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvAlignAxis2_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvAlignAxis2_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/AlignAxis2_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvAlignAxis2_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_59a69f0d266c31bbd9ab278249d358fb0edb0cc2c5f57a684069653548b88400";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvAlignAxis2_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvAlignAxis2_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_AlignAxis2_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/AlterMotion_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvAlterMotion_Request>
    {
        static constexpr size_t max_wire_bytes = 48;
        static constexpr char const* codec_identity = "UWVMROS1_ede1eb26161bfe42b29411347ef4752a6454baf86ba04afc5f2f11149895b000";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvAlterMotion_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvAlterMotion_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/AlterMotion_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvAlterMotion_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_edd6fac42f9f148dc508948ebf7b7bfe09fda09ab6ba66df3a56505b10829557";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvAlterMotion_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvAlterMotion_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_AlterMotion_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/CalcCoord_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvCalcCoord_Request>
    {
        static constexpr size_t max_wire_bytes = 195;
        static constexpr char const* codec_identity = "UWVMROS1_7fda8163d3f25429c387f6456df77bbfcf30c1aee93bb08ac27d50950a56ac7f";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvCalcCoord_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvCalcCoord_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/CalcCoord_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvCalcCoord_Response>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_d5d79d4593bf040421c1b8570c86d021db50de736ab114ec13623e4982168371";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvCalcCoord_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvCalcCoord_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_CalcCoord_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ChangeCollisionSensitivity_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_69c9183fb3a1a5e619cb2537da31e73aa9c490b2022db5281931d353676efc7f";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ChangeCollisionSensitivity_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_d0660dd8ed26aba09d9aaa3444daae0abca31e415b24a39ab05c012fb9909aa0";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvChangeCollisionSensitivity_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ChangeCollisionSensitivity_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ChangeOperationSpeed_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvChangeOperationSpeed_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_63eed536f4862ee6571ea76f40342def3598466057cc09aa45b0ea159c9a4fa7";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvChangeOperationSpeed_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvChangeOperationSpeed_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ChangeOperationSpeed_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvChangeOperationSpeed_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_6514284e5a0739b16cd9df8dab9939c8e3aa9b47567741389bcc3fe54e9f0cbf";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvChangeOperationSpeed_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvChangeOperationSpeed_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ChangeOperationSpeed_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/CheckForceCondition_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvCheckForceCondition_Request>
    {
        static constexpr size_t max_wire_bytes = 18;
        static constexpr char const* codec_identity = "UWVMROS1_e996cea9f24a1967a4591fdb072ccb87fe1e684dfe19cdcbb5cf65afa22cd0e4";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvCheckForceCondition_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvCheckForceCondition_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/CheckForceCondition_Response; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvCheckForceCondition_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_ed5a27b7b1daf8a668998d4da7f7ac5d1f7a71caea35a37c51db07058a373343";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvCheckForceCondition_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvCheckForceCondition_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_CheckForceCondition_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/CheckMotion_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvCheckMotion_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_64c44932b5afc38a3bd1cfb306c018616656793b0c6e5bf0e04f557a0b5f48a5";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvCheckMotion_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvCheckMotion_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/CheckMotion_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvCheckMotion_Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_9c8ac8ada140000e2bd6588a92871d699a924ce9b1011d3e98dec98e0aa84379";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvCheckMotion_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvCheckMotion_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_CheckMotion_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/CheckOrientationCondition1_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request>
    {
        static constexpr size_t max_wire_bytes = 99;
        static constexpr char const* codec_identity = "UWVMROS1_b70860c0e9fe5ae7904923bbf2ad9077a5009ae37a644118d5b8f4dc3383c1ef";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvCheckOrientationCondition1_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/CheckOrientationCondition1_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_eff9abfb058f98ef8addce0c226a0c35bfc84f24d96b611cd151be384be24ee4";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvCheckOrientationCondition1_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition1_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/CheckOrientationCondition2_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request>
    {
        static constexpr size_t max_wire_bytes = 67;
        static constexpr char const* codec_identity = "UWVMROS1_af9ed5881dde0e06efb1c97e8c9571dd2de85b35188cbdcbed5a902ca30d5ddb";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvCheckOrientationCondition2_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/CheckOrientationCondition2_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_23b06042946d1e27459ce70b73d265a7fda95dc1bf688091c14b5330c76d6e90";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvCheckOrientationCondition2_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_CheckOrientationCondition2_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/CheckPositionCondition_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvCheckPositionCondition_Request>
    {
        static constexpr size_t max_wire_bytes = 67;
        static constexpr char const* codec_identity = "UWVMROS1_3844a1011d8c4dfcbe048e683d0b3c747ce2984c937c477c868b1d7d53a7b0cc";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvCheckPositionCondition_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvCheckPositionCondition_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/CheckPositionCondition_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvCheckPositionCondition_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_aeac1f373359103389fae072461c92f810252c8abf63f31522582b7724d33334";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvCheckPositionCondition_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvCheckPositionCondition_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_CheckPositionCondition_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ConfigCreateModbus_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvConfigCreateModbus_Request>
    {
        static constexpr size_t max_wire_bytes = 531;
        static constexpr char const* codec_identity = "UWVMROS1_fa23c864844a6d81712b1c28261505a4dfce7e679a25e621bf80cef0a75ff1f5";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvConfigCreateModbus_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvConfigCreateModbus_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ConfigCreateModbus_Response; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvConfigCreateModbus_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_e3316b3da7d0c79293173a37fe9830de831cf1d4152999f56f7f5f01ff63215c";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvConfigCreateModbus_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvConfigCreateModbus_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateModbus_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ConfigCreateTcp_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvConfigCreateTcp_Request>
    {
        static constexpr size_t max_wire_bytes = 308;
        static constexpr char const* codec_identity = "UWVMROS1_e45840cd5a1966ba8cf7a7bf660ab0a467132b03cd69f00fb62043afb9b30c49";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvConfigCreateTcp_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvConfigCreateTcp_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ConfigCreateTcp_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvConfigCreateTcp_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_3091184aefaedc2fb8fd9b4f3c87769e8f87ebba4f14623355ef09fce4932f3b";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvConfigCreateTcp_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvConfigCreateTcp_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTcp_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ConfigCreateTool_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvConfigCreateTool_Request>
    {
        static constexpr size_t max_wire_bytes = 340;
        static constexpr char const* codec_identity = "UWVMROS1_ca28549f6644d735882d0400c2635380dde1139d17c17818d49d023ec73566e2";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvConfigCreateTool_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvConfigCreateTool_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ConfigCreateTool_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvConfigCreateTool_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_105629d8e968ac2511b73b3fe21ed9529b1dab9365d992281a02d72e1b4a90d0";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvConfigCreateTool_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvConfigCreateTool_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ConfigCreateTool_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ConfigDeleteModbus_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvConfigDeleteModbus_Request>
    {
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_f16519f6118316f20a9ab9e76dc37704e0d464632d31ed383a8bb55af6b25369";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvConfigDeleteModbus_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvConfigDeleteModbus_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ConfigDeleteModbus_Response; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvConfigDeleteModbus_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_a0a28657707c302b7dbb87039a36951cc97a5335cb473523002884453125829f";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvConfigDeleteModbus_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvConfigDeleteModbus_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteModbus_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ConfigDeleteTcp_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvConfigDeleteTcp_Request>
    {
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_a865fbd071a0e1717d54ab3523a5dd637f22745724ed41483991c2f58aa85abf";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvConfigDeleteTcp_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvConfigDeleteTcp_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ConfigDeleteTcp_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvConfigDeleteTcp_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_c8285c592d6839812e366d8271a9020f2e6213f7d3194896306f55bf69bb83d2";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvConfigDeleteTcp_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvConfigDeleteTcp_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTcp_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ConfigDeleteTool_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvConfigDeleteTool_Request>
    {
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_7d6b749f7151dfc84e52fc39f3a32c88d5570efb2fb721c234c2d91405d9a37b";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvConfigDeleteTool_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvConfigDeleteTool_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ConfigDeleteTool_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvConfigDeleteTool_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_2618f58ba0b4e9f585b2635de087a5d203b019e3732ab579e94fcb44e2ee9a6e";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvConfigDeleteTool_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvConfigDeleteTool_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ConfigDeleteTool_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ConnectRtControl_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvConnectRtControl_Request>
    {
        static constexpr size_t max_wire_bytes = 264;
        static constexpr char const* codec_identity = "UWVMROS1_a207438503e0a6769dbdc07c87487b0435066ba9773c19f2874241c8c1b4d761";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvConnectRtControl_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvConnectRtControl_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ConnectRtControl_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvConnectRtControl_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_6a7cce9aae60cdadc75425b22f7a8b429b95bc607e969605ab477c2eb1461815";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvConnectRtControl_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvConnectRtControl_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ConnectRtControl_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/CoordTransform_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvCoordTransform_Request>
    {
        static constexpr size_t max_wire_bytes = 50;
        static constexpr char const* codec_identity = "UWVMROS1_a3996948d541acf82a920927a76293455965c48d4a2f1c3307854193104b2223";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvCoordTransform_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvCoordTransform_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/CoordTransform_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvCoordTransform_Response>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_8ab16c946ef4cce7da6ccb8b0d3b4940195d0b29841007de569d1ea503b6cc72";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvCoordTransform_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvCoordTransform_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_CoordTransform_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/DisableAlterMotion_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvDisableAlterMotion_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_dc5d3ed630e183152040506dfe7dd28e5ff236a79ac75ec2d48d824446e97152";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvDisableAlterMotion_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvDisableAlterMotion_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/DisableAlterMotion_Response; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvDisableAlterMotion_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_1bc0f75aa3e09ead2882ae862e0af520dd291c5d9f96414f98fa4a07f48a16e5";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvDisableAlterMotion_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvDisableAlterMotion_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_DisableAlterMotion_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/DisconnectRtControl_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvDisconnectRtControl_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_7745a5c8acbb39607c2eb275e9257608d928fb98a7a5a72c0a64d03980ba5524";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvDisconnectRtControl_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvDisconnectRtControl_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/DisconnectRtControl_Response; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvDisconnectRtControl_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_e57ab63199570ab8d114a9f778cb307cedf0775f6ce96ae1edeade39f9a259a5";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvDisconnectRtControl_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvDisconnectRtControl_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_DisconnectRtControl_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/DrlPause_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvDrlPause_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_d3a522d19d07bf80ce8b3722d43c382b8d55693b9364d995f968b952335d35a6";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvDrlPause_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvDrlPause_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/DrlPause_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvDrlPause_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_43cc42f101181691ed6046767d35f623fd8c3b7ca2fff5244a2b832cd1906ab7";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvDrlPause_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvDrlPause_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_DrlPause_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/DrlResume_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvDrlResume_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_19bfb89dfedd6470fd3e2054556e20cdd15f430c93a563557d6240c81243eb05";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvDrlResume_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvDrlResume_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/DrlResume_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvDrlResume_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_a0447aaaaab43fe0287ff4aa85cc6d182320a036cf49f75e6552b9cf997de5ca";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvDrlResume_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvDrlResume_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_DrlResume_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/DrlStart_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvDrlStart_Request>
    {
        static constexpr size_t max_wire_bytes = 261;
        static constexpr char const* codec_identity = "UWVMROS1_0bcd9b44a5bc387dd9fa6257a42d2cbdc0c0d5cc373e56abd50345520304395d";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvDrlStart_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvDrlStart_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/DrlStart_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvDrlStart_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_c693ddb4d3cb430442fd669f4506d751a58c2f6aacd84b5f547bb498140f306f";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvDrlStart_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvDrlStart_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_DrlStart_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/DrlStop_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvDrlStop_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_a0b7682dc86c427b9b16a40a6d4e358bb3be307190bd02ae41d9e88af40ec6cd";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvDrlStop_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvDrlStop_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/DrlStop_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvDrlStop_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_156eed5dd85047a2830dcfdeba5327f1836606bda78d45f379f6ec0542ff1c24";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvDrlStop_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvDrlStop_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_DrlStop_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/EnableAlterMotion_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvEnableAlterMotion_Request>
    {
        static constexpr size_t max_wire_bytes = 38;
        static constexpr char const* codec_identity = "UWVMROS1_7615d1d9c40d8a6aed080f6185b80a7c6124db6aa979d7f670e81019c7633ffc";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvEnableAlterMotion_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvEnableAlterMotion_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/EnableAlterMotion_Response; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvEnableAlterMotion_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_5378b5727bd63d42483a26d7bf5df1aaad836ed6d0456806c7d6cb1f851e8f7f";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvEnableAlterMotion_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvEnableAlterMotion_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_EnableAlterMotion_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/Fkin_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvFkin_Request>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_f068464c2b4970811378456c7d036a2697c43d38736447fbbdbf4b1fafe2625f";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvFkin_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_Fkin_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_Fkin_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_Fkin_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvFkin_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_Fkin_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/Fkin_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvFkin_Response>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_b373f093b247590ca30d22f0cc8bd5104267b03ac14301795a5aa8796b5e7d1b";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvFkin_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_Fkin_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_Fkin_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_Fkin_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvFkin_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_Fkin_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetControlMode_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetControlMode_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_d80c98c4bc5b2426b9842f3dc9e9d282449cffd222efaacdc23a09205c3c69ea";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetControlMode_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetControlMode_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetControlMode_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetControlMode_Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_56a3a864dffea1761165081f90a8303246177905522e84e0f30a12526117e824";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetControlMode_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetControlMode_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetControlMode_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetControlSpace_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetControlSpace_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_ea6654e3794c2b36c3d10311e407b6d4e12bca59b9a9b763880917e762e6dfaa";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetControlSpace_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetControlSpace_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetControlSpace_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetControlSpace_Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_546ae346425d48252237f4b3f129145e5190dda43e29bf4080bc17a489deef41";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetControlSpace_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetControlSpace_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetControlSpace_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCtrlBoxAnalogInput_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_08335af395bc5602dfc0ed599a45d1a0e315a404729bc430fcf1e2c8f7b815e7";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCtrlBoxAnalogInput_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response>
    {
        static constexpr size_t max_wire_bytes = 9;
        static constexpr char const* codec_identity = "UWVMROS1_e6980a35668e6e96dc588b8e47aa0b5b33235f1e7f36aa9503378749ce707d09";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCtrlBoxAnalogInput_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxAnalogInput_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCtrlBoxDigitalInput_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_d4a390f79cd4ec51ae40899d9f2253f49a9d589029a03625f4078e7c5d511e4e";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCtrlBoxDigitalInput_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_1ff53e438120200e50511d0ddbae9498084bb690292d45a46701e9efe915e03d";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCtrlBoxDigitalInput_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalInput_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCtrlBoxDigitalOutput_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_ef4e865a9b5c7402332ec14ed19177cdb88503352a0a53b2746045dadac02e55";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCtrlBoxDigitalOutput_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_d5048e8f272eda1d8c034f65d357ff49b5a0407f7ec0c6255b4919c7e41dce02";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCtrlBoxDigitalOutput_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCtrlBoxDigitalOutput_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCurrentPose_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentPose_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_d5b0aeb2f72918c086d24e32685fb17be635849416d2dc9a440dd51b409af06c";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentPose_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentPose_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCurrentPose_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentPose_Response>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_296fc33e4b04d2c770600842339bd545bbe72b8ba700a2236c3983c80124dcf1";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentPose_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentPose_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPose_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCurrentPosj_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentPosj_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_1cf038d6627d1a5ddcf3ffbce7cfd1416e9d3e8c63dc13c38dfa139050544f44";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentPosj_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentPosj_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCurrentPosj_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentPosj_Response>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_f1b5d0285e81567ee77f3b688de5f6eb3c1340e2e99f6d5030d0ac77b7088e13";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentPosj_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentPosj_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosj_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCurrentPosx_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentPosx_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_57fc5ddeafbed4d32ed4ba322abf43b4ffbe73c3b737f0529b3e60ef01ce9943";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentPosx_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentPosx_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCurrentPosx_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentPosx_Response>
    {
        static constexpr size_t max_wire_bytes = 2213;
        static constexpr char const* codec_identity = "UWVMROS1_cb48d05f4193cfb0a70d674a2f4845edca145c1ec2df8f76e3776a75fa0254a8";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentPosx_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentPosx_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentPosx_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCurrentRotm_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentRotm_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_c691d82e22924caeb734c965ee15cf46ea206aabd4621b14bde07833b661971c";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentRotm_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentRotm_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCurrentRotm_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentRotm_Response>
    {
        static constexpr size_t max_wire_bytes = 2213;
        static constexpr char const* codec_identity = "UWVMROS1_07665bca70c62297a983ff28a353b8dc3e25a55b938d1e8a7d00f7b99fe659ca";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentRotm_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentRotm_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentRotm_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCurrentSolutionSpace_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_7cd7c65658f1063c1ef9af93d72f1414d547179bd00310cb70301e6f93029a96";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCurrentSolutionSpace_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_f414cb291de9891680fd80e6173f5026cc105fb4d0a84781a65a44f8104fa34a";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentSolutionSpace_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentSolutionSpace_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCurrentTcp_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentTcp_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_4324587d3246a8127cd50048c55cd3c472eed6d4c3af4aefa3216a8936a06ee4";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentTcp_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentTcp_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCurrentTcp_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentTcp_Response>
    {
        static constexpr size_t max_wire_bytes = 261;
        static constexpr char const* codec_identity = "UWVMROS1_f1cf522c9008d5c97f5fa8616d2baef9aef355350189c2ca77a22189a235c596";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentTcp_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentTcp_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTcp_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCurrentTool_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentTool_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_59737c01f8da615dc929190326bddd2d2e65b813f2407770c04b8d7afc915351";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentTool_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentTool_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCurrentTool_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentTool_Response>
    {
        static constexpr size_t max_wire_bytes = 261;
        static constexpr char const* codec_identity = "UWVMROS1_6be3858c1b239a883173227e0b498af9123c7e23f76db6024275dbc7e1b5aa5b";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentTool_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentTool_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentTool_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCurrentToolFlangePosx_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_e029ff9167245532d66a76380ba9ab1753d56b402ab1242ac13a91ede1350d02";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCurrentToolFlangePosx_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_be24b0c65aa81bdfa3b349ca08b207b8cbb9f8622dd97559c160c92ce93e16c6";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentToolFlangePosx_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentToolFlangePosx_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCurrentVelj_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentVelj_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_d4bef08af9d4ed3e0b44b015c85c70f8c687871846818a46b97db4351b8ad876";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentVelj_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentVelj_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCurrentVelj_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentVelj_Response>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_d07a760d106d768184e69426ef5e23d6ffd7569a0ae6c30fdc7e627ecdba494d";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentVelj_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentVelj_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelj_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCurrentVelx_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentVelx_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_f14760f7a2387ae587c28c05ec130e4728e85c38961813d9932adf037c353e83";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentVelx_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentVelx_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetCurrentVelx_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentVelx_Response>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_2f9645de7b8fec40b7dbcf9d572404009d9ff7f96ef3692ca7bc8fbfc5188aef";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentVelx_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetCurrentVelx_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetCurrentVelx_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetDesiredPosj_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredPosj_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_9c8b229eb0bd52e826fdc03e6826b532897aae952e841e35b31c866edf0b3cd5";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredPosj_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredPosj_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetDesiredPosj_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredPosj_Response>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_0a725b8def984030fb01a2847d7e792b77e7d49007bd996b990671ceaa5facc0";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredPosj_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredPosj_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosj_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetDesiredPosx_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredPosx_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_6f9016a247e3c8c489ffbf4fc16c4c457e21220294e6859496ec3015441dc069";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredPosx_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredPosx_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetDesiredPosx_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredPosx_Response>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_cc1f5ad8fd61a77b2c0dbdb1f9e0c7b899b1bdfdbf535308bbd160d001ad1c09";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredPosx_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredPosx_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredPosx_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetDesiredVelj_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredVelj_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_56535748a42f6d003d24c5e176ca34bb960e9d112f209080178a55450e52d281";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredVelj_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredVelj_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetDesiredVelj_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredVelj_Response>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_709f364917c007a6561766e576cdfb7c1e39e72b1852f83c9bec61721dd3b936";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredVelj_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredVelj_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelj_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetDesiredVelx_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredVelx_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_754325c879930a58938d2acd7433605cc148cf57341fe9b0ef1870653a9fae12";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredVelx_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredVelx_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetDesiredVelx_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredVelx_Response>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_55addb1448eb568ef90aa85cdeeee8044d9b37544a7ca4d208e91ba3aefe16bc";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredVelx_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetDesiredVelx_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetDesiredVelx_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetDrlState_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetDrlState_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_19a78a7cf9b010009bc481194271904a47cad587fa2e46fcc01e9e3f94c65e3e";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetDrlState_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetDrlState_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetDrlState_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetDrlState_Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_58b6574dd8d3006509e0e7c98a4d64f32fc1a3fa5e8a8efcb567e9c34b102699";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetDrlState_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetDrlState_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetDrlState_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetExternalTorque_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetExternalTorque_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_90ea09af03677cd42016abf4e88e4ef73e7aad43c5bf37804c7f50918ad71f3a";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetExternalTorque_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetExternalTorque_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetExternalTorque_Response; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetExternalTorque_Response>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_617665ff9f0817f3426b8fb61409061d5f7cde6603c61993e1aec013b3021f6d";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetExternalTorque_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetExternalTorque_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetExternalTorque_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetInputRegisterBit_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetInputRegisterBit_Request>
    {
        static constexpr size_t max_wire_bytes = 6;
        static constexpr char const* codec_identity = "UWVMROS1_357c348741cb21e92bd0e4962361dd84ed11db8f6868d84e4cdfd535fc215cae";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetInputRegisterBit_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetInputRegisterBit_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetInputRegisterBit_Response; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetInputRegisterBit_Response>
    {
        static constexpr size_t max_wire_bytes = 5;
        static constexpr char const* codec_identity = "UWVMROS1_a47c01d50519e552cfedf4ecaf6d52febaa0a4eb846ebc73256fe88219b647aa";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetInputRegisterBit_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetInputRegisterBit_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterBit_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetInputRegisterFloat_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request>
    {
        static constexpr size_t max_wire_bytes = 6;
        static constexpr char const* codec_identity = "UWVMROS1_88a6866efcf1e3620b98a77d2bc65cbf2dc9e3fb6e00b3e06fdc84ee8b5a2f3b";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetInputRegisterFloat_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetInputRegisterFloat_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response>
    {
        static constexpr size_t max_wire_bytes = 9;
        static constexpr char const* codec_identity = "UWVMROS1_db86cc9f47469a5d595a6df3b10e546d227dca5dbad7a381ed600acc33e5d769";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetInputRegisterFloat_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterFloat_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetInputRegisterInt_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetInputRegisterInt_Request>
    {
        static constexpr size_t max_wire_bytes = 6;
        static constexpr char const* codec_identity = "UWVMROS1_6fd37a43a6ff9f007ab73847710554a1a594bc14722c9d3223dbaae55a4c073e";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetInputRegisterInt_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetInputRegisterInt_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetInputRegisterInt_Response; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetInputRegisterInt_Response>
    {
        static constexpr size_t max_wire_bytes = 5;
        static constexpr char const* codec_identity = "UWVMROS1_4a10e84cb1cc84e780ea1bf19a94fcf1e09e45da33805f631fa0e455447587f0";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetInputRegisterInt_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetInputRegisterInt_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetInputRegisterInt_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetJointTorque_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetJointTorque_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_a64a36840ca8a9251b84fed17cea36d2f1ce027543af9ed22e05231e2765957a";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetJointTorque_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetJointTorque_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetJointTorque_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetJointTorque_Response>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_7d229e0af82b76fe9f92601976226517ee3a47fd36bf251f6190527ec2e2dc2a";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetJointTorque_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetJointTorque_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetJointTorque_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetLastAlarm_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetLastAlarm_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_6569afb5dceb62e7ee95948c1140bdf5d9dcfe8532b75922722be2b02f016fcf";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetLastAlarm_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetLastAlarm_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetLastAlarm_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetLastAlarm_Response>
    {
        static constexpr size_t max_wire_bytes = 793;
        static constexpr char const* codec_identity = "UWVMROS1_fa52a4735e3553d57e209a9307e120bd1731375d7b6864bf9b0415241527ee75";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetLastAlarm_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetLastAlarm_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetLastAlarm_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetModbusInput_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetModbusInput_Request>
    {
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_d2d8933898289af4b6c70b9ed412b435e3cbcfe3d2dd7675ff743a8f122fb32d";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetModbusInput_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetModbusInput_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetModbusInput_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetModbusInput_Response>
    {
        static constexpr size_t max_wire_bytes = 5;
        static constexpr char const* codec_identity = "UWVMROS1_de8c061ac9312f7d708a3419b0f191d2e11f1727c777b0eecf9b2c3d36253c4f";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetModbusInput_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetModbusInput_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetModbusInput_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetOrientationError_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetOrientationError_Request>
    {
        static constexpr size_t max_wire_bytes = 97;
        static constexpr char const* codec_identity = "UWVMROS1_ed52ab6a577110781d73a51700a5617cf94898921e5bab39cb64e66b84a6781f";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetOrientationError_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetOrientationError_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetOrientationError_Response; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetOrientationError_Response>
    {
        static constexpr size_t max_wire_bytes = 5;
        static constexpr char const* codec_identity = "UWVMROS1_ac13995c7c96b9dd8bc2c3ccc6eabfa4347c9e78872c16a6e6388f18d36c6983";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetOrientationError_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetOrientationError_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetOrientationError_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetOutputRegisterBit_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request>
    {
        static constexpr size_t max_wire_bytes = 6;
        static constexpr char const* codec_identity = "UWVMROS1_6cd40872bca1d3fa7d7b84ead3e343ca62d7a5b60cdbf963e77f6078d8c98083";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetOutputRegisterBit_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetOutputRegisterBit_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response>
    {
        static constexpr size_t max_wire_bytes = 5;
        static constexpr char const* codec_identity = "UWVMROS1_b877098bff97ac0e198a657581e4a76da6c2f2eeb46969fcd26ad447f1e19efa";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetOutputRegisterBit_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterBit_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetOutputRegisterFloat_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request>
    {
        static constexpr size_t max_wire_bytes = 6;
        static constexpr char const* codec_identity = "UWVMROS1_3f94d068d679b118d2b59fa33f60f189341c0ecd92bf11425d87807b2fde96d6";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetOutputRegisterFloat_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response>
    {
        static constexpr size_t max_wire_bytes = 9;
        static constexpr char const* codec_identity = "UWVMROS1_3000a283d591bd17a2303bdf11aea290c034c1fd7117988e66c88f592e721e68";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetOutputRegisterFloat_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterFloat_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetOutputRegisterInt_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request>
    {
        static constexpr size_t max_wire_bytes = 6;
        static constexpr char const* codec_identity = "UWVMROS1_4607112e6d1de21f44ba61b1af7d51446414259a2ef365abdd37d4ff3bdff7f6";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetOutputRegisterInt_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetOutputRegisterInt_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response>
    {
        static constexpr size_t max_wire_bytes = 5;
        static constexpr char const* codec_identity = "UWVMROS1_4d2643dccba189da62bfaf4103f670af774170b1c18e28a2ae112312df6ad691";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetOutputRegisterInt_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetOutputRegisterInt_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetRobotLinkInfo_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_50bc4a4885829a821fa2a5bd1ad8b223f7b595344448fbdbb2fddf5ee75e17e1";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetRobotLinkInfo_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetRobotLinkInfo_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response>
    {
        static constexpr size_t max_wire_bytes = 129;
        static constexpr char const* codec_identity = "UWVMROS1_aaf1a964ea2e5d6a049a074bd4b01538ef0b43b234da9de6b034a67524087641";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetRobotLinkInfo_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetRobotLinkInfo_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetRobotMode_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetRobotMode_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_945dc18b9de1cec15d388179c6a4abf95a653770164dcac30828f15912ea0136";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetRobotMode_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetRobotMode_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetRobotMode_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetRobotMode_Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_91dc6499a4e962f46b46fea554ae304a47ecb4095b47c6d480c866059850aa26";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetRobotMode_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetRobotMode_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetRobotMode_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetRobotSpeedMode_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_1b6760ed64ce308e6189122e754bab03208f5e19a6e4704acf21952abdf37e7e";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetRobotSpeedMode_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetRobotSpeedMode_Response; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_6eff9e2138055e3845f351abdba3189c47452903dadeaf6760f781a071543947";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetRobotSpeedMode_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSpeedMode_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetRobotState_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetRobotState_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_b4e5f89f15b92b48be3a1282f4002b7abafeb141658eac1c0b804c9232062b50";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetRobotState_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetRobotState_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetRobotState_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetRobotState_Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_d5bf5bb656a0ac4a621e7e50f40b6fb41ae89cbb4d5b04bc1275815bbb0ab257";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetRobotState_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetRobotState_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetRobotState_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetRobotSystem_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetRobotSystem_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_6d6d5428b67062be616f12385ede2568624ac78d83a1b6e430763dc2f0710829";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetRobotSystem_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetRobotSystem_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetRobotSystem_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetRobotSystem_Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_faf6022901539dd3edd6b53d4a0c6d3eea0a210f2c795bf46a67e0243a0d8dd0";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetRobotSystem_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetRobotSystem_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetRobotSystem_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetRtControlInputDataList_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request>
    {
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_016df21af56e6e0e76c5f9f24c851caee712b5af235bda04adde82eef33f6a60";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlInputDataList_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetRtControlInputDataList_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response>
    {
        static constexpr size_t max_wire_bytes = 261;
        static constexpr char const* codec_identity = "UWVMROS1_dad3b9ec5d048ea97669bd52fa94e60abd794f44150599c3b38179e7f3425831";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlInputDataList_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputDataList_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetRtControlInputVersionList_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_e25f15b810ebadb6eceb8e90bd8aedc9f47b177f5ccd16a6d824cac69e612a96";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetRtControlInputVersionList_Response; canonical maximum is not an actual
     * message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response>
    {
        static constexpr size_t max_wire_bytes = 261;
        static constexpr char const* codec_identity = "UWVMROS1_39f873a075b2571286ea652cbbc47696b8636138362ba898ce1f06c8fa0a368b";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlInputVersionList_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlInputVersionList_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetRtControlOutputDataList_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request>
    {
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_b7d3952dd7afa1da9b2a17959d25d20c570eb6195eab0fa4f181fd087555869c";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetRtControlOutputDataList_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response>
    {
        static constexpr size_t max_wire_bytes = 261;
        static constexpr char const* codec_identity = "UWVMROS1_a8663675cd68ff265c06580f16d46a9adaf36be969639c9df85110183eb7a14d";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlOutputDataList_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputDataList_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetRtControlOutputVersionList_Request; canonical maximum is not an actual
     * message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_401ad45a4fa41515c9aef3432ec08cb280885d54582e8c1c81f9f079352cb5e6";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetRtControlOutputVersionList_Response; canonical maximum is not an actual
     * message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response>
    {
        static constexpr size_t max_wire_bytes = 261;
        static constexpr char const* codec_identity = "UWVMROS1_a87c62fbcee2779427d535be08b8b30ebeaecc4450ee18208def8c19fbdd42b8";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetRtControlOutputVersionList_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetRtControlOutputVersionList_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetSolutionSpace_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetSolutionSpace_Request>
    {
        static constexpr size_t max_wire_bytes = 48;
        static constexpr char const* codec_identity = "UWVMROS1_7893e38212d85c4a6f9937711ca0209c069691b09616e08462b60253a0c75ef3";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetSolutionSpace_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetSolutionSpace_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetSolutionSpace_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetSolutionSpace_Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_b112e71516effa144d0c8857a21a18fa0355208ea4980f8b941190c070c0243a";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetSolutionSpace_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetSolutionSpace_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetSolutionSpace_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetToolDigitalInput_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetToolDigitalInput_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_13280849feec7050bd6edcf5a966a42315524727ff31694af91fa240a9224603";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetToolDigitalInput_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetToolDigitalInput_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetToolDigitalInput_Response; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetToolDigitalInput_Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_109edb5c9f363f7ca1558958cde4c402e30ba4875d2845db5ae1f5c2b2c5356e";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetToolDigitalInput_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetToolDigitalInput_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalInput_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetToolDigitalOutput_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_62cc891eb1bc8b7657996a2a9c5ff11a20a53bb1d38c83080936d0ec0a41c641";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetToolDigitalOutput_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetToolDigitalOutput_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_7178715d835fca1f2f77ffed810b4f85ecd661168704df869a9ce4dffeb9c1a8";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetToolDigitalOutput_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetToolDigitalOutput_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetToolForce_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetToolForce_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_278119e0f7e346752ee4ccc233b133a9700cf8d2e2454c72c876cf4415dccd30";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetToolForce_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetToolForce_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetToolForce_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetToolForce_Response>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_d8bb3201f41aa221981e773657e8fa4d02b37a0d9d7f6da557aa6027ffeec41e";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetToolForce_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetToolForce_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetToolForce_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetUserCartCoord_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetUserCartCoord_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_ab137f363d6067680f0f9e60e436eb9c104c2aa1d3b0f2b4db423303944fea9b";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetUserCartCoord_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetUserCartCoord_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetUserCartCoord_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetUserCartCoord_Response>
    {
        static constexpr size_t max_wire_bytes = 50;
        static constexpr char const* codec_identity = "UWVMROS1_41c0a3cb26e9456c439813e957d3ea539dddf492f00c601c101cf86f0589d6e0";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetUserCartCoord_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetUserCartCoord_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetUserCartCoord_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetWorkpieceWeight_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_e333d0d31ad7dd33a4eaf20b891e1c6a949e8518ca689b6aef5b14fbc050fde7";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetWorkpieceWeight_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/GetWorkpieceWeight_Response; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response>
    {
        static constexpr size_t max_wire_bytes = 5;
        static constexpr char const* codec_identity = "UWVMROS1_c7c33e15041c362b692a24f6462fd1838c92cb8a74410ab62eb0593290f2da15";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvGetWorkpieceWeight_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_GetWorkpieceWeight_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/Ikin_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvIkin_Request>
    {
        static constexpr size_t max_wire_bytes = 50;
        static constexpr char const* codec_identity = "UWVMROS1_a088cb4739b4e871d281ffd7ca30d2a6afcb7a2cd2ed536fe959ba3efc01a558";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvIkin_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_Ikin_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_Ikin_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_Ikin_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvIkin_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_Ikin_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/Ikin_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvIkin_Response>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_fec5d910aaa9200c82c11887901062077572ce9d23f9e69114cbf395e469be6f";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvIkin_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_Ikin_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_Ikin_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_Ikin_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvIkin_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_Ikin_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/IsDoneBoltTightening_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request>
    {
        static constexpr size_t max_wire_bytes = 17;
        static constexpr char const* codec_identity = "UWVMROS1_021ebebd272f07623b139347486e9577a92febeec9ba2822ea42be99379365dc";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvIsDoneBoltTightening_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/IsDoneBoltTightening_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_facd1f150c53d2fa30991435796a03f28027ca54b1da367b259a3e9226c56d2d";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvIsDoneBoltTightening_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_IsDoneBoltTightening_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/Jog_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvJog_Request>
    {
        static constexpr size_t max_wire_bytes = 10;
        static constexpr char const* codec_identity = "UWVMROS1_c8c738720a1def086dcb2bf4364e43b0bbeadf0bd104760ca4ddd629ec9faa72";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvJog_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_Jog_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_Jog_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_Jog_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvJog_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_Jog_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/Jog_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvJog_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_feb4da140ea11a715abe3f3ee635bdc384cd12105c397c1fb0ce2cfdf631542c";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvJog_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_Jog_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_Jog_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_Jog_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvJog_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_Jog_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/JogMulti_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvJogMulti_Request>
    {
        static constexpr size_t max_wire_bytes = 57;
        static constexpr char const* codec_identity = "UWVMROS1_df4ba03cc80e22e4f9e384c38cd1994750a8c875798dc4887019745a26ee2f29";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvJogMulti_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvJogMulti_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/JogMulti_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvJogMulti_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_9cf76f60dbb1d7330297d5bacad15e29810ef7088ae83c3ad82c561c4e277d1a";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvJogMulti_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvJogMulti_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_JogMulti_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveBlending_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveBlending_Request>
    {
        static constexpr size_t max_wire_bytes = 2256;
        static constexpr char const* codec_identity = "UWVMROS1_74b4ab52745fa3028c9154c373850897fac7ecdaf986822e5dc2698580de1f20";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveBlending_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveBlending_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveBlending_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveBlending_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_2c09a8f39ab887063b890f935bc4319f4c0566fc2ccb5f612e696728a2ea3805";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveBlending_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveBlending_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveBlending_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveCircle_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveCircle_Request>
    {
        static constexpr size_t max_wire_bytes = 2280;
        static constexpr char const* codec_identity = "UWVMROS1_27ebd12c2a2c30f8e20b505923344b00f2d2ad097e04ee533093144dbc58a09e";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveCircle_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveCircle_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveCircle_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveCircle_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_4df4f4552161320d2b939e096b5ff54c102c668cab1efa1e59a8f12757ebe307";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveCircle_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveCircle_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveCircle_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveHome_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveHome_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_9f36ef8e03e895db2b8c588ad52dcc370ce37532974879c3280da68202643a67";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveHome_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveHome_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveHome_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveHome_Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_d28c2d8d4dc2c97fbab5e531b235830d68fc46754fd7921993e05c8d33df0edf";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveHome_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveHome_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveHome_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveJoint_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveJoint_Request>
    {
        static constexpr size_t max_wire_bytes = 83;
        static constexpr char const* codec_identity = "UWVMROS1_80e0a74b2781d091fc847f5f2d4a0a56bdd974e62f9a80cc7382118f5d6e4952";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveJoint_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveJoint_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveJoint_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveJoint_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_57c54f467487b7b7f0966a484e6777b4cb48fedd5790ec8f0e3c88979ce4c238";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveJoint_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveJoint_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveJoint_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveJointx_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveJointx_Request>
    {
        static constexpr size_t max_wire_bytes = 85;
        static constexpr char const* codec_identity = "UWVMROS1_c63a6822f6b03a2380d740995b12b4889e38d46a48fa8f74a85c2eccde1712be";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveJointx_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveJointx_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveJointx_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveJointx_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_4b04129715b754766e2971a38b170681e1055cc121bf56d7b542594ac9986d0a";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveJointx_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveJointx_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveJointx_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveLine_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveLine_Request>
    {
        static constexpr size_t max_wire_bytes = 100;
        static constexpr char const* codec_identity = "UWVMROS1_104cb9b617f4f5f9596aa648cd5d1cd55bad832e0709e46c2e19be17d94f384a";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveLine_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveLine_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveLine_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveLine_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_6c0632d3a0aa1476b0cfc9adeb8eb5ef5e3b718eccdbb3f24d942315bd287ef6";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveLine_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveLine_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveLine_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MovePause_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMovePause_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_89602d9445236b0796a0628a3eecd1d57cd298135759330f7c1927d451beac80";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMovePause_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MovePause_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MovePause_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MovePause_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMovePause_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MovePause_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MovePause_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMovePause_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_9d8e0eabfff65e2d80132a9586cffd61f9989e2b39842cc3af2f7b77b01a0dd2";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMovePause_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MovePause_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MovePause_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MovePause_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMovePause_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MovePause_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MovePeriodic_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMovePeriodic_Request>
    {
        static constexpr size_t max_wire_bytes = 107;
        static constexpr char const* codec_identity = "UWVMROS1_f05e9629ebcf086ef97e02f28c9b97f4604d53e15b348e76556dc9eef7791f41";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMovePeriodic_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMovePeriodic_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MovePeriodic_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMovePeriodic_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_99a58c09b66846d82e1e50451c7663fc2f8bfb6564181a737c37a0296a8bf022";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMovePeriodic_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMovePeriodic_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MovePeriodic_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveResume_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveResume_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_7cb93befc32b7fb62279f8be0e6aa9f0075274375304afa5a438dea13588879e";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveResume_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveResume_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveResume_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveResume_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_1b8d38ecbb26dc9311cd7dbc35e397eabae2f8fc308f7f3ada8afaeee15ec956";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveResume_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveResume_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveResume_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveSpiral_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveSpiral_Request>
    {
        static constexpr size_t max_wire_bytes = 94;
        static constexpr char const* codec_identity = "UWVMROS1_4720da9e9607f7a2df71d51cbc568ca08e85f9cf8b335f5ed3128844b3ab66a1";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveSpiral_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveSpiral_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveSpiral_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveSpiral_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_8f8f8c5ebb9288d4414bd64ac2bbcaac7c459dd187c149a2424d2ca426dd51fc";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveSpiral_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveSpiral_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveSpiral_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveSplineJoint_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveSplineJoint_Request>
    {
        static constexpr size_t max_wire_bytes = 2319;
        static constexpr char const* codec_identity = "UWVMROS1_3e37f3aa8318b9dffd0d72754d6f8f6db4c6af7fed79a20cba019e6dd3535fe2";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveSplineJoint_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveSplineJoint_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveSplineJoint_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveSplineJoint_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_90acb8d4656b1cd6c5be0eb0693e2718e1ad96d10cf8cbb53738a7efd2898444";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveSplineJoint_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveSplineJoint_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineJoint_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveSplineTask_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveSplineTask_Request>
    {
        static constexpr size_t max_wire_bytes = 2257;
        static constexpr char const* codec_identity = "UWVMROS1_9ec113186666b39b1c4a27b1a0f9e8c9a8d5e18e0d0d773103b37811d5c613ff";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveSplineTask_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveSplineTask_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveSplineTask_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveSplineTask_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_e1991eb0d0b76ea783f3a410df208c432b09dd0bb5dc595c9aad74e5da147fb5";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveSplineTask_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveSplineTask_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveSplineTask_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveStop_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveStop_Request>
    {
        static constexpr size_t max_wire_bytes = 4;
        static constexpr char const* codec_identity = "UWVMROS1_51bb66de3739f7fc873f36d78fc6b3fe70f28e788f4b5b4359768491074d1efd";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveStop_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveStop_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveStop_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveStop_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_ce670f48f010badbcafa3e96d05af25a02a018b41e75544a6d183fe89ceafbeb";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveStop_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveStop_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveStop_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveWait_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveWait_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_7c0de129d63ef3142044c481392ba437362245e6643ba1bd0f87f90b9b377d61";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveWait_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveWait_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/MoveWait_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvMoveWait_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_1e235c22c0e493e309e8f53be1043ce1b425c52910358c7b34496c1291d61486";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvMoveWait_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvMoveWait_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_MoveWait_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/OverwriteUserCartCoord_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request>
    {
        static constexpr size_t max_wire_bytes = 50;
        static constexpr char const* codec_identity = "UWVMROS1_772207f58ed8dc8dbef23f5ab3161a4289f378eed9ae9b960e15e380c5efcb8d";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/OverwriteUserCartCoord_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_93cc941737dc373f7b97a044a9b675cf220a511bbbde19b6d98fb9ac8f33dc05";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvOverwriteUserCartCoord_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_OverwriteUserCartCoord_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ParallelAxis1_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvParallelAxis1_Request>
    {
        static constexpr size_t max_wire_bytes = 146;
        static constexpr char const* codec_identity = "UWVMROS1_97ed9f4649879d56a9bdabbb2040b1779be4ac7156292b27f6ca04a82290e1fd";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvParallelAxis1_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvParallelAxis1_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ParallelAxis1_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvParallelAxis1_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_f748471d4492dbd0db21a6417a12eedbbc1d23920abe712af5ac3099a1b4a37c";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvParallelAxis1_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvParallelAxis1_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis1_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ParallelAxis2_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvParallelAxis2_Request>
    {
        static constexpr size_t max_wire_bytes = 26;
        static constexpr char const* codec_identity = "UWVMROS1_742f664642630b1c2fa965d9ff442791edc7c1aa90c9238fc370d1fb8baf1450";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvParallelAxis2_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvParallelAxis2_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ParallelAxis2_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvParallelAxis2_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_7a2659d61e6a13d1f17986c311441ecc4bb72146978f209c976f218817fd146b";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvParallelAxis2_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvParallelAxis2_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ParallelAxis2_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ReadDataRt_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvReadDataRt_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_9c21179a2561779bfcd2e6bc011ab9eb183517cc93de8dc6349f016bc7f3a418";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvReadDataRt_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvReadDataRt_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ReadDataRt_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvReadDataRt_Response>
    {
        static constexpr size_t max_wire_bytes = 8154;
        static constexpr char const* codec_identity = "UWVMROS1_4055ed8c5ea1414a21bb32aad8cd37a9d2317619840a7a5de1f563b512395093";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvReadDataRt_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvReadDataRt_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ReadDataRt_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ReleaseComplianceCtrl_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_1b3e5187b8a5753f0703abb97a653bcbcd62f19dc912f0a70dd1cf3d0fab59df";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ReleaseComplianceCtrl_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_d63a68f67aa608599d4a33a7081d157eafcf52928388b0bfb1dd5faf51a4fa40";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvReleaseComplianceCtrl_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ReleaseComplianceCtrl_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ReleaseForce_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvReleaseForce_Request>
    {
        static constexpr size_t max_wire_bytes = 8;
        static constexpr char const* codec_identity = "UWVMROS1_5346f6a634c61acc8d296e83cf96e007fe369765d291698063d80c5fa2e18a91";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvReleaseForce_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvReleaseForce_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ReleaseForce_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvReleaseForce_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_4d74f7c2ca2f7b97f8222bc31ccef0450c045b2424efa6f9d6d550c6a824149c";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvReleaseForce_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvReleaseForce_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ReleaseForce_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ResetWorkpieceWeight_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_53ac7a846a49f8200358455dbbe63580e90309b3c3166ad48ed87ea33c364179";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvResetWorkpieceWeight_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ResetWorkpieceWeight_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_29d28e032dffe750b93e8207660af315687f3c2241a8a53f29fa7da7570b4abd";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvResetWorkpieceWeight_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ResetWorkpieceWeight_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/Robotiq2FClose_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvRobotiq2FClose_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_1bb8c6794458b545e6a117418c52ede9ba301787dcc80c346cdbeadb7072d974";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvRobotiq2FClose_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvRobotiq2FClose_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/Robotiq2FClose_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvRobotiq2FClose_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_93b3a91aedebf08ae74a53857c898ddda0493662d02df100bde32652042f593e";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvRobotiq2FClose_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvRobotiq2FClose_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FClose_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/Robotiq2FMove_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvRobotiq2FMove_Request>
    {
        static constexpr size_t max_wire_bytes = 8;
        static constexpr char const* codec_identity = "UWVMROS1_d9125f3ed3a008a9796249b2759ff3e1fb9b8cc206ae89165fd20f382e0407f2";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvRobotiq2FMove_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvRobotiq2FMove_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/Robotiq2FMove_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvRobotiq2FMove_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_c7365e9517f2da81712616281451882cfedbe5cd0c771fbc93d3d155598fa41d";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvRobotiq2FMove_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvRobotiq2FMove_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FMove_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/Robotiq2FOpen_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvRobotiq2FOpen_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_0d94a65ab5ad917af12e961dfddc1c3d722d0f9bf703a20f7c4e1b86d646889a";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvRobotiq2FOpen_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvRobotiq2FOpen_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/Robotiq2FOpen_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvRobotiq2FOpen_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_0d7392466b804afe346333e6eab855aa2ac2d66c96ab417e7d96ec6917ec4f2c";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvRobotiq2FOpen_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvRobotiq2FOpen_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_Robotiq2FOpen_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SerialSendData_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSerialSendData_Request>
    {
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_6a1da84ea13b36d9722b9c7779baa295bf13ee1e85266226659f5f077fb67ce8";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSerialSendData_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSerialSendData_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SerialSendData_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSerialSendData_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_a28dd2160987b004eb5ee91cc2e0e6a3fbdb54777e33df0044131811da1ac278";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSerialSendData_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSerialSendData_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SerialSendData_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ServoOff_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvServoOff_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_f7445b77379d9197bd64162af81c79f19b8eccfd65bb35a1c7ec1c6c90b0956c";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvServoOff_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvServoOff_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/ServoOff_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvServoOff_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_da341e498342ad932e3f5f9a037252ccd53402609abfaf5a20e0b2f452ac74db";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvServoOff_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvServoOff_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_ServoOff_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetAccjRt_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetAccjRt_Request>
    {
        static constexpr size_t max_wire_bytes = 48;
        static constexpr char const* codec_identity = "UWVMROS1_73ff05ee72605c8e3bec72ea56f962475a50db8afed07ca299a1b47e5a16f66f";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetAccjRt_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetAccjRt_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetAccjRt_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetAccjRt_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_a25cd5180e9812a012ce3337665b7a20a97e13ad99c9ca8accdcbbd644eb539c";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetAccjRt_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetAccjRt_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetAccjRt_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetAccxRt_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetAccxRt_Request>
    {
        static constexpr size_t max_wire_bytes = 16;
        static constexpr char const* codec_identity = "UWVMROS1_55addee739e16839a0bedd135930ea3b9e1a09f80776346f7c71c1d4e64e5111";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetAccxRt_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetAccxRt_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetAccxRt_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetAccxRt_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_1277c73c96a872595079bdb1fbff9b99b4f2f7f62ad50339d7402a864610434c";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetAccxRt_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetAccxRt_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetAccxRt_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetCtrlBoxAnalogInputType_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_56cd6d0829be3eac45dfd15bd9693f53b72705481bb905c16dc0ab19843fc7d0";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetCtrlBoxAnalogInputType_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_dcbd1b140dca6119d2be2b2eea11efc394969f0bf16926c5758bd384e764eaf0";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxAnalogInputType_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogInputType_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetCtrlBoxAnalogOutput_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request>
    {
        static constexpr size_t max_wire_bytes = 9;
        static constexpr char const* codec_identity = "UWVMROS1_6da2558f6e5259eaf4573144414fd8e6a917a9a43d11b7a0036187158e97f34a";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetCtrlBoxAnalogOutput_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_258f0495c9eeacec7cf7221018fab5a99939f153c6a5cddb6f653ca71859e1e1";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutput_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutput_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetCtrlBoxAnalogOutputType_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_ee2b262d71056945ef50cd2cfd645f63220c63071ed28531e79740539b0b15f9";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetCtrlBoxAnalogOutputType_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_47900b504bce4fd7546759c836a78d02e873630ecc79cfa989e3473a9f490359";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxAnalogOutputType_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxAnalogOutputType_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetCtrlBoxDigitalOutput_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_ce45009eaf9382aa3bccc48526aa9e5a040847ad08deb9a37d574dd69a34258d";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetCtrlBoxDigitalOutput_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_fd9da818a998c786665a6849417511722de21391c4aaa92422eb7db061bb9330";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetCtrlBoxDigitalOutput_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetCtrlBoxDigitalOutput_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetCurrentTcp_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetCurrentTcp_Request>
    {
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_1b9f1bd57a2dd82cc52ec59acc9967aea8948613ec68dd26e0a9a9897088d002";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetCurrentTcp_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetCurrentTcp_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetCurrentTcp_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetCurrentTcp_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_9c66924cfd4931bae242c3d11dd0a9293b337defc82501719b179b622d9f342a";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetCurrentTcp_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetCurrentTcp_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTcp_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetCurrentTool_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetCurrentTool_Request>
    {
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_8d1254ad637afaeca980e00cb89c1a3219cea13e93a0c83641fcf3f7c8afd440";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetCurrentTool_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetCurrentTool_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetCurrentTool_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetCurrentTool_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_964448078ed08bb742a8077370c02f6b88d702244df67e4eb7d67828abfae932";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetCurrentTool_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetCurrentTool_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetCurrentTool_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetDesiredForce_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetDesiredForce_Request>
    {
        static constexpr size_t max_wire_bytes = 64;
        static constexpr char const* codec_identity = "UWVMROS1_a49831bf62f8a697addd5be7521f861a307940be45d4a59d9777580801ba4b1a";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetDesiredForce_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetDesiredForce_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetDesiredForce_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetDesiredForce_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_53ba3b5b57cca8d039ad6c148c20f0cff1e6c93ba4fe170bc7ccc5d0d3c056f9";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetDesiredForce_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetDesiredForce_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetDesiredForce_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetModbusOutput_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetModbusOutput_Request>
    {
        static constexpr size_t max_wire_bytes = 264;
        static constexpr char const* codec_identity = "UWVMROS1_0653027d5adf9f01bda734d110232c55849f4b19ddaee78dd20b4aecf79096aa";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetModbusOutput_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetModbusOutput_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetModbusOutput_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetModbusOutput_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_8a8f0f0da4dc7a3235882cc2aef013d1722f17020535a4ddad5dceec5c533262";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetModbusOutput_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetModbusOutput_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetModbusOutput_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetOutputRegisterBit_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request>
    {
        static constexpr size_t max_wire_bytes = 6;
        static constexpr char const* codec_identity = "UWVMROS1_309eebb54f359760a9c52635c1989d966c7b3998e34444dfccc4023ed43c1f88";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetOutputRegisterBit_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetOutputRegisterBit_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_3358f20e8d47bdafe4406208878d8c28c320f9e53844eaacfaadfb1255f8a6e8";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetOutputRegisterBit_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterBit_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetOutputRegisterFloat_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request>
    {
        static constexpr size_t max_wire_bytes = 10;
        static constexpr char const* codec_identity = "UWVMROS1_7f0c5c355381aa45700641c3ba99b227fe6bbb5394f1e2cb01c4f2b899918c61";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetOutputRegisterFloat_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_9c3d3799cc5622c88b54926353e730bf362a75c4a23e95c9543820d489f1b27f";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetOutputRegisterFloat_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterFloat_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetOutputRegisterInt_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request>
    {
        static constexpr size_t max_wire_bytes = 6;
        static constexpr char const* codec_identity = "UWVMROS1_1d250e3cfd00550fc55b69ac120c384e90573636d7a2adc8a5e8b122ec678364";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetOutputRegisterInt_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetOutputRegisterInt_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_ec70602507eebbdca44703e487375d482510aaa684aa2dd93a5bdcd0ba8275f7";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetOutputRegisterInt_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetOutputRegisterInt_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetRefCoord_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetRefCoord_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_801f3fdd878bd7661db70ef37a8146e9c02f539c65d91a60a7589a1009bc9be5";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetRefCoord_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetRefCoord_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetRefCoord_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetRefCoord_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_733bfb338aa280d2475a6398264e26cf76e873c92e20e9e8496898c38f990bae";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetRefCoord_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetRefCoord_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetRefCoord_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetRobotControl_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetRobotControl_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_d39305d9d913933542cc89eba2c9b5abd68e25574c9f8096ad4bb16cebb2c97f";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetRobotControl_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetRobotControl_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetRobotControl_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetRobotControl_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_e4aad49231edc73256306d46bd537ffb24d61956146265a7f04d1eb1aafc684c";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetRobotControl_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetRobotControl_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetRobotControl_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetRobotMode_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetRobotMode_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_59506bb1284a069b41db932d11fcef986befe63b2d365b16ff6a09d1d4227a9b";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetRobotMode_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetRobotMode_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetRobotMode_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetRobotMode_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_f1d0dad948e4a24471c406e08b79640f3846f0d96aaf63d84763066b54963dee";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetRobotMode_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetRobotMode_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetRobotMode_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetRobotSpeedMode_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_74f6d0c7e148619aa43ad375b529155bce79ff06295ca5612dee8b17c8f7399b";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetRobotSpeedMode_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetRobotSpeedMode_Response; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_f2b86ce2bbd498677537e77b069fda28c0c48c73d1d3b4a8b4f6d41460a2dde2";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetRobotSpeedMode_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSpeedMode_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetRobotSystem_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetRobotSystem_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_2cbe8cfcd2fbe89acc3310ec43e904bdad6e246bbda7c7225357d9478e591030";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetRobotSystem_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetRobotSystem_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetRobotSystem_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetRobotSystem_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_93e95c1c768694abbfaa89bca4357085b9e6b67b031cedaf3ae064a0e5545872";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetRobotSystem_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetRobotSystem_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetRobotSystem_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetRtControlInput_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetRtControlInput_Request>
    {
        static constexpr size_t max_wire_bytes = 272;
        static constexpr char const* codec_identity = "UWVMROS1_5d0d581d5874bb92ea5c67281c4414d4dcf2799ebeb13b12b60b58408b3854c7";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetRtControlInput_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetRtControlInput_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetRtControlInput_Response; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetRtControlInput_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_d4a506d56199fac9bd3decbdadce3a728df404854dfceea3f1365e25a031c2a8";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetRtControlInput_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetRtControlInput_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlInput_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetRtControlOutput_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetRtControlOutput_Request>
    {
        static constexpr size_t max_wire_bytes = 272;
        static constexpr char const* codec_identity = "UWVMROS1_12dac5a038aa91a74240656b3d088e1fbee381de935a8b8aae7fb2a152bcaa47";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetRtControlOutput_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetRtControlOutput_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetRtControlOutput_Response; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetRtControlOutput_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_25049366402ac5e192f2190b80e4576126929d8375fd1efefdc50154f473305b";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetRtControlOutput_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetRtControlOutput_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetRtControlOutput_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetSafeStopResetType_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetSafeStopResetType_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_4ab1dff4c9864a2e66d6c4ebd64032504098ca191284d027bc8021668412e7f3";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetSafeStopResetType_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetSafeStopResetType_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetSafeStopResetType_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetSafeStopResetType_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_d1b868c2e694688a6bad4d4a93ae4032a650a0f99ae3cffeac1bfed3336762ae";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetSafeStopResetType_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetSafeStopResetType_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetSafeStopResetType_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetSafetyMode_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetSafetyMode_Request>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_ea5c506bc7bcd868d8547643b82f902a595954f7487216e57b47491998e80713";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetSafetyMode_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetSafetyMode_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetSafetyMode_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetSafetyMode_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_d7ce2c604f4a7abeccbf4514a05fe8abbcbdddcc047f4838d0fcc792bb5414b6";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetSafetyMode_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetSafetyMode_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetSafetyMode_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetSingularHandlingForce_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_785b7a837bf13aa7f6f7178818d470b970253761b389d2e5526a77090c765d17";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetSingularHandlingForce_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetSingularHandlingForce_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_5d0197a02dc22035522bdde1791a6e06ce31be284cb75d8d1edcbd97d382aa04";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetSingularHandlingForce_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetSingularHandlingForce_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetSingularityHandling_Request; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetSingularityHandling_Request>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_714198c67734535e609af75c076ccc5eaef14996ab2f6dc41fac5da7af168f10";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetSingularityHandling_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetSingularityHandling_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetSingularityHandling_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetSingularityHandling_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_2c1eb60c47dedf7a166dc51366a9748e21d2a64603591c9698a5c75bcfa0fd6b";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetSingularityHandling_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetSingularityHandling_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetSingularityHandling_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetStiffnessx_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetStiffnessx_Request>
    {
        static constexpr size_t max_wire_bytes = 57;
        static constexpr char const* codec_identity = "UWVMROS1_e173ca626019669404706278ab035396e77f684b17181b7e181a8a73e7ec5101";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetStiffnessx_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetStiffnessx_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetStiffnessx_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetStiffnessx_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_9f7b37d22a5d4cfd34e92df02aa3ef3bdd78e965877b30889cdbd85ad81b1f63";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetStiffnessx_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetStiffnessx_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetStiffnessx_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetToolDigitalOutput_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_fdc298f88b15ff1e7f9b99425f8909e584ffec665f5fdf49d0559aa4f1923675";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetToolDigitalOutput_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetToolDigitalOutput_Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_6dd380084f46879e224a01e8cb135cfa7909d7dd29c0f953fce3533115e0fb5c";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetToolDigitalOutput_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetToolDigitalOutput_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetToolShape_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetToolShape_Request>
    {
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_18dece524fe8fe008a1ce848629aabcc4a91bb33f0c0b75a50c77464da886679";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetToolShape_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetToolShape_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetToolShape_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetToolShape_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_0cc4521218ab5151885efd7d818d63c3a80e792552282a776d9595ea3e220739";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetToolShape_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetToolShape_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetToolShape_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetUserCartCoord1_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetUserCartCoord1_Request>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_497558c7b91c9f6a79afc784b1026e28a632e8234b178b96754eaebcfa4d01f2";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetUserCartCoord1_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetUserCartCoord1_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetUserCartCoord1_Response; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetUserCartCoord1_Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_6ccfd1c14bc6f8be1efa6fae4c6b33373fab3dc76976891e07e2340bc984c4cf";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetUserCartCoord1_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetUserCartCoord1_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord1_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetUserCartCoord2_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetUserCartCoord2_Request>
    {
        static constexpr size_t max_wire_bytes = 193;
        static constexpr char const* codec_identity = "UWVMROS1_8ebe04baec0078b4f501712b9777f2f25f71cdb668e45aaadac9fd1f08c4d817";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetUserCartCoord2_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetUserCartCoord2_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetUserCartCoord2_Response; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetUserCartCoord2_Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_a607f151e7acf622b233805382b69ea22ab0b4c86067c06bcc2673e1f2a58b8f";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetUserCartCoord2_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetUserCartCoord2_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord2_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetUserCartCoord3_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetUserCartCoord3_Request>
    {
        static constexpr size_t max_wire_bytes = 97;
        static constexpr char const* codec_identity = "UWVMROS1_251d326c5d179d4324c7e178e44a5857335efcbef19c0ede3a38e6b35bd03504";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetUserCartCoord3_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetUserCartCoord3_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetUserCartCoord3_Response; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetUserCartCoord3_Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_a4c23d5c3c9e3b8101991250879779acbbe592d2b9bb62b8b8629230eebfdd39";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetUserCartCoord3_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetUserCartCoord3_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetUserCartCoord3_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetVeljRt_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetVeljRt_Request>
    {
        static constexpr size_t max_wire_bytes = 48;
        static constexpr char const* codec_identity = "UWVMROS1_8e666417ee1ca845dc12a0c18e5a538070717ca943fe982b42af7eb66f801cf3";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetVeljRt_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetVeljRt_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetVeljRt_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetVeljRt_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_6b678e677badd0a4723fd1608058a72548fc7c446f48809552bccc9e890ec6bd";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetVeljRt_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetVeljRt_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetVeljRt_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetVelxRt_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetVelxRt_Request>
    {
        static constexpr size_t max_wire_bytes = 16;
        static constexpr char const* codec_identity = "UWVMROS1_f9b3017cd73796a71ea9bacd871af523b391d9e5b06f1b050cfbeab163c83b9e";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetVelxRt_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetVelxRt_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/SetVelxRt_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvSetVelxRt_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_973acd53cbb327287c306ec5a54b7b756e031a6fb8acfc836852fdf19dc31f9d";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvSetVelxRt_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvSetVelxRt_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_SetVelxRt_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/StartRtControl_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvStartRtControl_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_a828a2ecc839bec2c3521779ed7927db6c7c47b48aa99d9ad6328e741a85e5b1";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvStartRtControl_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvStartRtControl_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/StartRtControl_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvStartRtControl_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_ac6ba957fb8ea8ec816adbf89dfd041181d8fc4d7d6e399aae04ee6efd2c9533";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvStartRtControl_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvStartRtControl_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_StartRtControl_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/StopRtControl_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvStopRtControl_Request>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_0f2a7b5fc3a8dcb9413a53410d3291d5148add2e64bf7654ed41ff2f626b7ef1";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvStopRtControl_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvStopRtControl_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/StopRtControl_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvStopRtControl_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_a8754817156c23964f102f68eab7e19c603c8092334a239c669d4fce23cfcd89";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvStopRtControl_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvStopRtControl_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_StopRtControl_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/TaskComplianceCtrl_Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request>
    {
        static constexpr size_t max_wire_bytes = 57;
        static constexpr char const* codec_identity = "UWVMROS1_e1c8abe0594c9a4de2a8fa207cac4b898dad5c3148e4f5bd965a4acb1b0663e0";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvTaskComplianceCtrl_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/TaskComplianceCtrl_Response; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_031919d7369a7e23da6eed0754cf7228ad0c6694b84651454d40dec76aff35bb";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvTaskComplianceCtrl_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_TaskComplianceCtrl_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/Trans_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvTrans_Request>
    {
        static constexpr size_t max_wire_bytes = 98;
        static constexpr char const* codec_identity = "UWVMROS1_473706407758f61ca27a10aa6090859f97ffae55ad65abfd3dbf7a2bf31230f7";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvTrans_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_Trans_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_Trans_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_Trans_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvTrans_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_Trans_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/Trans_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvTrans_Response>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_0900d0c0cda3b1b164384313039be345f26d7cebfe3918ed6d3d10eb6c5a2913";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvTrans_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_Trans_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_Trans_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_Trans_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvTrans_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_Trans_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/WriteDataRt_Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvWriteDataRt_Request>
    {
        static constexpr size_t max_wire_bytes = 152;
        static constexpr char const* codec_identity = "UWVMROS1_6936ab81238d05ed11cd9a372c08723a506f424bef7682cbd627295bd5b31f41";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvWriteDataRt_Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvWriteDataRt_Request& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs2/srv/WriteDataRt_Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros2Dsr_msgs2SrvWriteDataRt_Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_a0c357cdc8525ce2c13210c5662fde3ff2bf89ac253a3ade7c0524af4879748e";

        static bool encode(uwvm_custom::Ros2Dsr_msgs2SrvWriteDataRt_Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros2Dsr_msgs2SrvWriteDataRt_Response& out)
        {
            return !roswasmc_bounded_2_dsr_msgs2_srv_WriteDataRt_Response_decode(bytes.data(), bytes.size(), &out);
        }
    };
}  // namespace roswasmcpp
