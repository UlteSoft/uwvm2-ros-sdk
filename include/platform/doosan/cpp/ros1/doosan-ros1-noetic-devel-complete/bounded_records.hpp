/**
 * @file bounded_records.hpp
 * @brief Complete doosan values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/doosan/domains/doosan-ros1-noetic-devel-complete.ir.json
 * @see document/platform/doosan/en_US/README.md
 */

/** @file C++20 typed bounded canonical records, independent of native ROS libraries.
 * Includes use the existing roswasmcpp Publisher/Subscription codecs and do not grant
 * aliases. Custom Service/Action component codecs also accept the raw typed RPC facade. */
#pragma once
#include <doosan/c/ros1/doosan-ros1-noetic-devel-complete/bounded_records.h>
#include <ros/cpp/roswasm/roswasmcpp.hpp>

namespace uwvm_custom
{
    /** Complete bounded guest value for dsr_msgs/AlignAxis1Request. */
    using Ros1Dsr_msgsAlignAxis1Request = roswasmc_bounded_1_dsr_msgs_AlignAxis1Request;
    /** Complete bounded guest value for dsr_msgs/AlignAxis1Response. */
    using Ros1Dsr_msgsAlignAxis1Response = roswasmc_bounded_1_dsr_msgs_AlignAxis1Response;
    /** Complete bounded guest value for dsr_msgs/AlignAxis2Request. */
    using Ros1Dsr_msgsAlignAxis2Request = roswasmc_bounded_1_dsr_msgs_AlignAxis2Request;
    /** Complete bounded guest value for dsr_msgs/AlignAxis2Response. */
    using Ros1Dsr_msgsAlignAxis2Response = roswasmc_bounded_1_dsr_msgs_AlignAxis2Response;
    /** Complete bounded guest value for dsr_msgs/AlterMotionRequest. */
    using Ros1Dsr_msgsAlterMotionRequest = roswasmc_bounded_1_dsr_msgs_AlterMotionRequest;
    /** Complete bounded guest value for dsr_msgs/AlterMotionResponse. */
    using Ros1Dsr_msgsAlterMotionResponse = roswasmc_bounded_1_dsr_msgs_AlterMotionResponse;
    /** Complete bounded guest value for dsr_msgs/AlterMotionStream. */
    using Ros1Dsr_msgsAlterMotionStream = roswasmc_bounded_1_dsr_msgs_AlterMotionStream;
    /** Complete bounded guest value for dsr_msgs/CalcCoordRequest. */
    using Ros1Dsr_msgsCalcCoordRequest = roswasmc_bounded_1_dsr_msgs_CalcCoordRequest;
    /** Complete bounded guest value for dsr_msgs/CalcCoordResponse. */
    using Ros1Dsr_msgsCalcCoordResponse = roswasmc_bounded_1_dsr_msgs_CalcCoordResponse;
    /** Complete bounded guest value for dsr_msgs/ChangeOperationSpeedRequest. */
    using Ros1Dsr_msgsChangeOperationSpeedRequest = roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedRequest;
    /** Complete bounded guest value for dsr_msgs/ChangeOperationSpeedResponse. */
    using Ros1Dsr_msgsChangeOperationSpeedResponse = roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedResponse;
    /** Complete bounded guest value for dsr_msgs/CheckForceConditionRequest. */
    using Ros1Dsr_msgsCheckForceConditionRequest = roswasmc_bounded_1_dsr_msgs_CheckForceConditionRequest;
    /** Complete bounded guest value for dsr_msgs/CheckForceConditionResponse. */
    using Ros1Dsr_msgsCheckForceConditionResponse = roswasmc_bounded_1_dsr_msgs_CheckForceConditionResponse;
    /** Complete bounded guest value for dsr_msgs/CheckMotionRequest. */
    using Ros1Dsr_msgsCheckMotionRequest = roswasmc_bounded_1_dsr_msgs_CheckMotionRequest;
    /** Complete bounded guest value for dsr_msgs/CheckMotionResponse. */
    using Ros1Dsr_msgsCheckMotionResponse = roswasmc_bounded_1_dsr_msgs_CheckMotionResponse;
    /** Complete bounded guest value for dsr_msgs/CheckOrientationCondition1Request. */
    using Ros1Dsr_msgsCheckOrientationCondition1Request = roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Request;
    /** Complete bounded guest value for dsr_msgs/CheckOrientationCondition1Response. */
    using Ros1Dsr_msgsCheckOrientationCondition1Response = roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Response;
    /** Complete bounded guest value for dsr_msgs/CheckOrientationCondition2Request. */
    using Ros1Dsr_msgsCheckOrientationCondition2Request = roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Request;
    /** Complete bounded guest value for dsr_msgs/CheckOrientationCondition2Response. */
    using Ros1Dsr_msgsCheckOrientationCondition2Response = roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Response;
    /** Complete bounded guest value for dsr_msgs/CheckPositionConditionRequest. */
    using Ros1Dsr_msgsCheckPositionConditionRequest = roswasmc_bounded_1_dsr_msgs_CheckPositionConditionRequest;
    /** Complete bounded guest value for dsr_msgs/CheckPositionConditionResponse. */
    using Ros1Dsr_msgsCheckPositionConditionResponse = roswasmc_bounded_1_dsr_msgs_CheckPositionConditionResponse;
    /** Complete bounded guest value for dsr_msgs/ConfigCreateModbusRequest. */
    using Ros1Dsr_msgsConfigCreateModbusRequest = roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusRequest;
    /** Complete bounded guest value for dsr_msgs/ConfigCreateModbusResponse. */
    using Ros1Dsr_msgsConfigCreateModbusResponse = roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusResponse;
    /** Complete bounded guest value for dsr_msgs/ConfigCreateTcpRequest. */
    using Ros1Dsr_msgsConfigCreateTcpRequest = roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpRequest;
    /** Complete bounded guest value for dsr_msgs/ConfigCreateTcpResponse. */
    using Ros1Dsr_msgsConfigCreateTcpResponse = roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpResponse;
    /** Complete bounded guest value for dsr_msgs/ConfigCreateToolRequest. */
    using Ros1Dsr_msgsConfigCreateToolRequest = roswasmc_bounded_1_dsr_msgs_ConfigCreateToolRequest;
    /** Complete bounded guest value for dsr_msgs/ConfigCreateToolResponse. */
    using Ros1Dsr_msgsConfigCreateToolResponse = roswasmc_bounded_1_dsr_msgs_ConfigCreateToolResponse;
    /** Complete bounded guest value for dsr_msgs/ConfigDeleteModbusRequest. */
    using Ros1Dsr_msgsConfigDeleteModbusRequest = roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusRequest;
    /** Complete bounded guest value for dsr_msgs/ConfigDeleteModbusResponse. */
    using Ros1Dsr_msgsConfigDeleteModbusResponse = roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusResponse;
    /** Complete bounded guest value for dsr_msgs/ConfigDeleteTcpRequest. */
    using Ros1Dsr_msgsConfigDeleteTcpRequest = roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpRequest;
    /** Complete bounded guest value for dsr_msgs/ConfigDeleteTcpResponse. */
    using Ros1Dsr_msgsConfigDeleteTcpResponse = roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpResponse;
    /** Complete bounded guest value for dsr_msgs/ConfigDeleteToolRequest. */
    using Ros1Dsr_msgsConfigDeleteToolRequest = roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolRequest;
    /** Complete bounded guest value for dsr_msgs/ConfigDeleteToolResponse. */
    using Ros1Dsr_msgsConfigDeleteToolResponse = roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolResponse;
    /** Complete bounded guest value for dsr_msgs/ConnectRTControlRequest. */
    using Ros1Dsr_msgsConnectRTControlRequest = roswasmc_bounded_1_dsr_msgs_ConnectRTControlRequest;
    /** Complete bounded guest value for dsr_msgs/ConnectRTControlResponse. */
    using Ros1Dsr_msgsConnectRTControlResponse = roswasmc_bounded_1_dsr_msgs_ConnectRTControlResponse;
    /** Complete bounded guest value for dsr_msgs/CoordTransformRequest. */
    using Ros1Dsr_msgsCoordTransformRequest = roswasmc_bounded_1_dsr_msgs_CoordTransformRequest;
    /** Complete bounded guest value for dsr_msgs/CoordTransformResponse. */
    using Ros1Dsr_msgsCoordTransformResponse = roswasmc_bounded_1_dsr_msgs_CoordTransformResponse;
    /** Complete bounded guest value for dsr_msgs/DisableAlterMotionRequest. */
    using Ros1Dsr_msgsDisableAlterMotionRequest = roswasmc_bounded_1_dsr_msgs_DisableAlterMotionRequest;
    /** Complete bounded guest value for dsr_msgs/DisableAlterMotionResponse. */
    using Ros1Dsr_msgsDisableAlterMotionResponse = roswasmc_bounded_1_dsr_msgs_DisableAlterMotionResponse;
    /** Complete bounded guest value for dsr_msgs/DisconnectRTControlRequest. */
    using Ros1Dsr_msgsDisconnectRTControlRequest = roswasmc_bounded_1_dsr_msgs_DisconnectRTControlRequest;
    /** Complete bounded guest value for dsr_msgs/DisconnectRTControlResponse. */
    using Ros1Dsr_msgsDisconnectRTControlResponse = roswasmc_bounded_1_dsr_msgs_DisconnectRTControlResponse;
    /** Complete bounded guest value for dsr_msgs/DrlPauseRequest. */
    using Ros1Dsr_msgsDrlPauseRequest = roswasmc_bounded_1_dsr_msgs_DrlPauseRequest;
    /** Complete bounded guest value for dsr_msgs/DrlPauseResponse. */
    using Ros1Dsr_msgsDrlPauseResponse = roswasmc_bounded_1_dsr_msgs_DrlPauseResponse;
    /** Complete bounded guest value for dsr_msgs/DrlResumeRequest. */
    using Ros1Dsr_msgsDrlResumeRequest = roswasmc_bounded_1_dsr_msgs_DrlResumeRequest;
    /** Complete bounded guest value for dsr_msgs/DrlResumeResponse. */
    using Ros1Dsr_msgsDrlResumeResponse = roswasmc_bounded_1_dsr_msgs_DrlResumeResponse;
    /** Complete bounded guest value for dsr_msgs/DrlStartRequest. */
    using Ros1Dsr_msgsDrlStartRequest = roswasmc_bounded_1_dsr_msgs_DrlStartRequest;
    /** Complete bounded guest value for dsr_msgs/DrlStartResponse. */
    using Ros1Dsr_msgsDrlStartResponse = roswasmc_bounded_1_dsr_msgs_DrlStartResponse;
    /** Complete bounded guest value for dsr_msgs/DrlStopRequest. */
    using Ros1Dsr_msgsDrlStopRequest = roswasmc_bounded_1_dsr_msgs_DrlStopRequest;
    /** Complete bounded guest value for dsr_msgs/DrlStopResponse. */
    using Ros1Dsr_msgsDrlStopResponse = roswasmc_bounded_1_dsr_msgs_DrlStopResponse;
    /** Complete bounded guest value for dsr_msgs/EnableAlterMotionRequest. */
    using Ros1Dsr_msgsEnableAlterMotionRequest = roswasmc_bounded_1_dsr_msgs_EnableAlterMotionRequest;
    /** Complete bounded guest value for dsr_msgs/EnableAlterMotionResponse. */
    using Ros1Dsr_msgsEnableAlterMotionResponse = roswasmc_bounded_1_dsr_msgs_EnableAlterMotionResponse;
    /** Complete bounded guest value for dsr_msgs/FkinRequest. */
    using Ros1Dsr_msgsFkinRequest = roswasmc_bounded_1_dsr_msgs_FkinRequest;
    /** Complete bounded guest value for dsr_msgs/FkinResponse. */
    using Ros1Dsr_msgsFkinResponse = roswasmc_bounded_1_dsr_msgs_FkinResponse;
    /** Complete bounded guest value for dsr_msgs/GetControlModeRequest. */
    using Ros1Dsr_msgsGetControlModeRequest = roswasmc_bounded_1_dsr_msgs_GetControlModeRequest;
    /** Complete bounded guest value for dsr_msgs/GetControlModeResponse. */
    using Ros1Dsr_msgsGetControlModeResponse = roswasmc_bounded_1_dsr_msgs_GetControlModeResponse;
    /** Complete bounded guest value for dsr_msgs/GetControlSpaceRequest. */
    using Ros1Dsr_msgsGetControlSpaceRequest = roswasmc_bounded_1_dsr_msgs_GetControlSpaceRequest;
    /** Complete bounded guest value for dsr_msgs/GetControlSpaceResponse. */
    using Ros1Dsr_msgsGetControlSpaceResponse = roswasmc_bounded_1_dsr_msgs_GetControlSpaceResponse;
    /** Complete bounded guest value for dsr_msgs/GetCtrlBoxAnalogInputRequest. */
    using Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest = roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputRequest;
    /** Complete bounded guest value for dsr_msgs/GetCtrlBoxAnalogInputResponse. */
    using Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse = roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse;
    /** Complete bounded guest value for dsr_msgs/GetCtrlBoxDigitalInputRequest. */
    using Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest = roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputRequest;
    /** Complete bounded guest value for dsr_msgs/GetCtrlBoxDigitalInputResponse. */
    using Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse = roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse;
    /** Complete bounded guest value for dsr_msgs/GetCtrlBoxDigitalOutputRequest. */
    using Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest = roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputRequest;
    /** Complete bounded guest value for dsr_msgs/GetCtrlBoxDigitalOutputResponse. */
    using Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse = roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputResponse;
    /** Complete bounded guest value for dsr_msgs/GetCurrentPoseRequest. */
    using Ros1Dsr_msgsGetCurrentPoseRequest = roswasmc_bounded_1_dsr_msgs_GetCurrentPoseRequest;
    /** Complete bounded guest value for dsr_msgs/GetCurrentPoseResponse. */
    using Ros1Dsr_msgsGetCurrentPoseResponse = roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse;
    /** Complete bounded guest value for dsr_msgs/GetCurrentPosjRequest. */
    using Ros1Dsr_msgsGetCurrentPosjRequest = roswasmc_bounded_1_dsr_msgs_GetCurrentPosjRequest;
    /** Complete bounded guest value for dsr_msgs/GetCurrentPosjResponse. */
    using Ros1Dsr_msgsGetCurrentPosjResponse = roswasmc_bounded_1_dsr_msgs_GetCurrentPosjResponse;
    /** Complete bounded guest value for dsr_msgs/GetCurrentPosxRequest. */
    using Ros1Dsr_msgsGetCurrentPosxRequest = roswasmc_bounded_1_dsr_msgs_GetCurrentPosxRequest;
    /** Complete bounded guest value for std_msgs/MultiArrayDimension. */
    using Ros1Std_msgsMultiArrayDimension = roswasmc_bounded_1_std_msgs_MultiArrayDimension;
    /** Complete bounded guest value for std_msgs/MultiArrayLayout. */
    using Ros1Std_msgsMultiArrayLayout = roswasmc_bounded_1_std_msgs_MultiArrayLayout;
    /** Complete bounded guest value for std_msgs/Float64MultiArray. */
    using Ros1Std_msgsFloat64MultiArray = roswasmc_bounded_1_std_msgs_Float64MultiArray;
    /** Complete bounded guest value for dsr_msgs/GetCurrentPosxResponse. */
    using Ros1Dsr_msgsGetCurrentPosxResponse = roswasmc_bounded_1_dsr_msgs_GetCurrentPosxResponse;
    /** Complete bounded guest value for dsr_msgs/GetCurrentRotmRequest. */
    using Ros1Dsr_msgsGetCurrentRotmRequest = roswasmc_bounded_1_dsr_msgs_GetCurrentRotmRequest;
    /** Complete bounded guest value for dsr_msgs/GetCurrentRotmResponse. */
    using Ros1Dsr_msgsGetCurrentRotmResponse = roswasmc_bounded_1_dsr_msgs_GetCurrentRotmResponse;
    /** Complete bounded guest value for dsr_msgs/GetCurrentSolutionSpaceRequest. */
    using Ros1Dsr_msgsGetCurrentSolutionSpaceRequest = roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceRequest;
    /** Complete bounded guest value for dsr_msgs/GetCurrentSolutionSpaceResponse. */
    using Ros1Dsr_msgsGetCurrentSolutionSpaceResponse = roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceResponse;
    /** Complete bounded guest value for dsr_msgs/GetCurrentTcpRequest. */
    using Ros1Dsr_msgsGetCurrentTcpRequest = roswasmc_bounded_1_dsr_msgs_GetCurrentTcpRequest;
    /** Complete bounded guest value for dsr_msgs/GetCurrentTcpResponse. */
    using Ros1Dsr_msgsGetCurrentTcpResponse = roswasmc_bounded_1_dsr_msgs_GetCurrentTcpResponse;
    /** Complete bounded guest value for dsr_msgs/GetCurrentToolRequest. */
    using Ros1Dsr_msgsGetCurrentToolRequest = roswasmc_bounded_1_dsr_msgs_GetCurrentToolRequest;
    /** Complete bounded guest value for dsr_msgs/GetCurrentToolResponse. */
    using Ros1Dsr_msgsGetCurrentToolResponse = roswasmc_bounded_1_dsr_msgs_GetCurrentToolResponse;
    /** Complete bounded guest value for dsr_msgs/GetCurrentToolFlangePosxRequest. */
    using Ros1Dsr_msgsGetCurrentToolFlangePosxRequest = roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxRequest;
    /** Complete bounded guest value for dsr_msgs/GetCurrentToolFlangePosxResponse. */
    using Ros1Dsr_msgsGetCurrentToolFlangePosxResponse = roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxResponse;
    /** Complete bounded guest value for dsr_msgs/GetCurrentVeljRequest. */
    using Ros1Dsr_msgsGetCurrentVeljRequest = roswasmc_bounded_1_dsr_msgs_GetCurrentVeljRequest;
    /** Complete bounded guest value for dsr_msgs/GetCurrentVeljResponse. */
    using Ros1Dsr_msgsGetCurrentVeljResponse = roswasmc_bounded_1_dsr_msgs_GetCurrentVeljResponse;
    /** Complete bounded guest value for dsr_msgs/GetCurrentVelxRequest. */
    using Ros1Dsr_msgsGetCurrentVelxRequest = roswasmc_bounded_1_dsr_msgs_GetCurrentVelxRequest;
    /** Complete bounded guest value for dsr_msgs/GetCurrentVelxResponse. */
    using Ros1Dsr_msgsGetCurrentVelxResponse = roswasmc_bounded_1_dsr_msgs_GetCurrentVelxResponse;
    /** Complete bounded guest value for dsr_msgs/GetDesiredPosjRequest. */
    using Ros1Dsr_msgsGetDesiredPosjRequest = roswasmc_bounded_1_dsr_msgs_GetDesiredPosjRequest;
    /** Complete bounded guest value for dsr_msgs/GetDesiredPosjResponse. */
    using Ros1Dsr_msgsGetDesiredPosjResponse = roswasmc_bounded_1_dsr_msgs_GetDesiredPosjResponse;
    /** Complete bounded guest value for dsr_msgs/GetDesiredPosxRequest. */
    using Ros1Dsr_msgsGetDesiredPosxRequest = roswasmc_bounded_1_dsr_msgs_GetDesiredPosxRequest;
    /** Complete bounded guest value for dsr_msgs/GetDesiredPosxResponse. */
    using Ros1Dsr_msgsGetDesiredPosxResponse = roswasmc_bounded_1_dsr_msgs_GetDesiredPosxResponse;
    /** Complete bounded guest value for dsr_msgs/GetDesiredVeljRequest. */
    using Ros1Dsr_msgsGetDesiredVeljRequest = roswasmc_bounded_1_dsr_msgs_GetDesiredVeljRequest;
    /** Complete bounded guest value for dsr_msgs/GetDesiredVeljResponse. */
    using Ros1Dsr_msgsGetDesiredVeljResponse = roswasmc_bounded_1_dsr_msgs_GetDesiredVeljResponse;
    /** Complete bounded guest value for dsr_msgs/GetDesiredVelxRequest. */
    using Ros1Dsr_msgsGetDesiredVelxRequest = roswasmc_bounded_1_dsr_msgs_GetDesiredVelxRequest;
    /** Complete bounded guest value for dsr_msgs/GetDesiredVelxResponse. */
    using Ros1Dsr_msgsGetDesiredVelxResponse = roswasmc_bounded_1_dsr_msgs_GetDesiredVelxResponse;
    /** Complete bounded guest value for dsr_msgs/GetDrlStateRequest. */
    using Ros1Dsr_msgsGetDrlStateRequest = roswasmc_bounded_1_dsr_msgs_GetDrlStateRequest;
    /** Complete bounded guest value for dsr_msgs/GetDrlStateResponse. */
    using Ros1Dsr_msgsGetDrlStateResponse = roswasmc_bounded_1_dsr_msgs_GetDrlStateResponse;
    /** Complete bounded guest value for dsr_msgs/GetExternalTorqueRequest. */
    using Ros1Dsr_msgsGetExternalTorqueRequest = roswasmc_bounded_1_dsr_msgs_GetExternalTorqueRequest;
    /** Complete bounded guest value for dsr_msgs/GetExternalTorqueResponse. */
    using Ros1Dsr_msgsGetExternalTorqueResponse = roswasmc_bounded_1_dsr_msgs_GetExternalTorqueResponse;
    /** Complete bounded guest value for dsr_msgs/GetJointTorqueRequest. */
    using Ros1Dsr_msgsGetJointTorqueRequest = roswasmc_bounded_1_dsr_msgs_GetJointTorqueRequest;
    /** Complete bounded guest value for dsr_msgs/GetJointTorqueResponse. */
    using Ros1Dsr_msgsGetJointTorqueResponse = roswasmc_bounded_1_dsr_msgs_GetJointTorqueResponse;
    /** Complete bounded guest value for dsr_msgs/GetLastAlarmRequest. */
    using Ros1Dsr_msgsGetLastAlarmRequest = roswasmc_bounded_1_dsr_msgs_GetLastAlarmRequest;
    /** Complete bounded guest value for dsr_msgs/LogAlarm. */
    using Ros1Dsr_msgsLogAlarm = roswasmc_bounded_1_dsr_msgs_LogAlarm;
    /** Complete bounded guest value for dsr_msgs/GetLastAlarmResponse. */
    using Ros1Dsr_msgsGetLastAlarmResponse = roswasmc_bounded_1_dsr_msgs_GetLastAlarmResponse;
    /** Complete bounded guest value for dsr_msgs/GetModbusInputRequest. */
    using Ros1Dsr_msgsGetModbusInputRequest = roswasmc_bounded_1_dsr_msgs_GetModbusInputRequest;
    /** Complete bounded guest value for dsr_msgs/GetModbusInputResponse. */
    using Ros1Dsr_msgsGetModbusInputResponse = roswasmc_bounded_1_dsr_msgs_GetModbusInputResponse;
    /** Complete bounded guest value for dsr_msgs/GetOrientationErrorRequest. */
    using Ros1Dsr_msgsGetOrientationErrorRequest = roswasmc_bounded_1_dsr_msgs_GetOrientationErrorRequest;
    /** Complete bounded guest value for dsr_msgs/GetOrientationErrorResponse. */
    using Ros1Dsr_msgsGetOrientationErrorResponse = roswasmc_bounded_1_dsr_msgs_GetOrientationErrorResponse;
    /** Complete bounded guest value for dsr_msgs/GetRTControlInputDataListRequest. */
    using Ros1Dsr_msgsGetRTControlInputDataListRequest = roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataListRequest;
    /** Complete bounded guest value for dsr_msgs/GetRTControlInputDataListResponse. */
    using Ros1Dsr_msgsGetRTControlInputDataListResponse = roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataListResponse;
    /** Complete bounded guest value for dsr_msgs/GetRTControlInputVersionListRequest. */
    using Ros1Dsr_msgsGetRTControlInputVersionListRequest = roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionListRequest;
    /** Complete bounded guest value for dsr_msgs/GetRTControlInputVersionListResponse. */
    using Ros1Dsr_msgsGetRTControlInputVersionListResponse = roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionListResponse;
    /** Complete bounded guest value for dsr_msgs/GetRTControlOutputDataListRequest. */
    using Ros1Dsr_msgsGetRTControlOutputDataListRequest = roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataListRequest;
    /** Complete bounded guest value for dsr_msgs/GetRTControlOutputDataListResponse. */
    using Ros1Dsr_msgsGetRTControlOutputDataListResponse = roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataListResponse;
    /** Complete bounded guest value for dsr_msgs/GetRTControlOutputVersionListRequest. */
    using Ros1Dsr_msgsGetRTControlOutputVersionListRequest = roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionListRequest;
    /** Complete bounded guest value for dsr_msgs/GetRTControlOutputVersionListResponse. */
    using Ros1Dsr_msgsGetRTControlOutputVersionListResponse = roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionListResponse;
    /** Complete bounded guest value for dsr_msgs/GetRobotModeRequest. */
    using Ros1Dsr_msgsGetRobotModeRequest = roswasmc_bounded_1_dsr_msgs_GetRobotModeRequest;
    /** Complete bounded guest value for dsr_msgs/GetRobotModeResponse. */
    using Ros1Dsr_msgsGetRobotModeResponse = roswasmc_bounded_1_dsr_msgs_GetRobotModeResponse;
    /** Complete bounded guest value for dsr_msgs/GetRobotSpeedModeRequest. */
    using Ros1Dsr_msgsGetRobotSpeedModeRequest = roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeRequest;
    /** Complete bounded guest value for dsr_msgs/GetRobotSpeedModeResponse. */
    using Ros1Dsr_msgsGetRobotSpeedModeResponse = roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeResponse;
    /** Complete bounded guest value for dsr_msgs/GetRobotStateRequest. */
    using Ros1Dsr_msgsGetRobotStateRequest = roswasmc_bounded_1_dsr_msgs_GetRobotStateRequest;
    /** Complete bounded guest value for dsr_msgs/GetRobotStateResponse. */
    using Ros1Dsr_msgsGetRobotStateResponse = roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse;
    /** Complete bounded guest value for dsr_msgs/GetRobotSystemRequest. */
    using Ros1Dsr_msgsGetRobotSystemRequest = roswasmc_bounded_1_dsr_msgs_GetRobotSystemRequest;
    /** Complete bounded guest value for dsr_msgs/GetRobotSystemResponse. */
    using Ros1Dsr_msgsGetRobotSystemResponse = roswasmc_bounded_1_dsr_msgs_GetRobotSystemResponse;
    /** Complete bounded guest value for dsr_msgs/GetSolutionSpaceRequest. */
    using Ros1Dsr_msgsGetSolutionSpaceRequest = roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceRequest;
    /** Complete bounded guest value for dsr_msgs/GetSolutionSpaceResponse. */
    using Ros1Dsr_msgsGetSolutionSpaceResponse = roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceResponse;
    /** Complete bounded guest value for dsr_msgs/GetToolDigitalInputRequest. */
    using Ros1Dsr_msgsGetToolDigitalInputRequest = roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputRequest;
    /** Complete bounded guest value for dsr_msgs/GetToolDigitalInputResponse. */
    using Ros1Dsr_msgsGetToolDigitalInputResponse = roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse;
    /** Complete bounded guest value for dsr_msgs/GetToolDigitalOutputRequest. */
    using Ros1Dsr_msgsGetToolDigitalOutputRequest = roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputRequest;
    /** Complete bounded guest value for dsr_msgs/GetToolDigitalOutputResponse. */
    using Ros1Dsr_msgsGetToolDigitalOutputResponse = roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputResponse;
    /** Complete bounded guest value for dsr_msgs/GetToolForceRequest. */
    using Ros1Dsr_msgsGetToolForceRequest = roswasmc_bounded_1_dsr_msgs_GetToolForceRequest;
    /** Complete bounded guest value for dsr_msgs/GetToolForceResponse. */
    using Ros1Dsr_msgsGetToolForceResponse = roswasmc_bounded_1_dsr_msgs_GetToolForceResponse;
    /** Complete bounded guest value for dsr_msgs/GetUserCartCoordRequest. */
    using Ros1Dsr_msgsGetUserCartCoordRequest = roswasmc_bounded_1_dsr_msgs_GetUserCartCoordRequest;
    /** Complete bounded guest value for dsr_msgs/GetUserCartCoordResponse. */
    using Ros1Dsr_msgsGetUserCartCoordResponse = roswasmc_bounded_1_dsr_msgs_GetUserCartCoordResponse;
    /** Complete bounded guest value for dsr_msgs/GetWorkpieceWeightRequest. */
    using Ros1Dsr_msgsGetWorkpieceWeightRequest = roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightRequest;
    /** Complete bounded guest value for dsr_msgs/GetWorkpieceWeightResponse. */
    using Ros1Dsr_msgsGetWorkpieceWeightResponse = roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightResponse;
    /** Complete bounded guest value for dsr_msgs/IkinRequest. */
    using Ros1Dsr_msgsIkinRequest = roswasmc_bounded_1_dsr_msgs_IkinRequest;
    /** Complete bounded guest value for dsr_msgs/IkinResponse. */
    using Ros1Dsr_msgsIkinResponse = roswasmc_bounded_1_dsr_msgs_IkinResponse;
    /** Complete bounded guest value for dsr_msgs/IkinExRequest. */
    using Ros1Dsr_msgsIkinExRequest = roswasmc_bounded_1_dsr_msgs_IkinExRequest;
    /** Complete bounded guest value for dsr_msgs/IkinExResponse. */
    using Ros1Dsr_msgsIkinExResponse = roswasmc_bounded_1_dsr_msgs_IkinExResponse;
    /** Complete bounded guest value for dsr_msgs/IsDoneBoltTighteningRequest. */
    using Ros1Dsr_msgsIsDoneBoltTighteningRequest = roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningRequest;
    /** Complete bounded guest value for dsr_msgs/IsDoneBoltTighteningResponse. */
    using Ros1Dsr_msgsIsDoneBoltTighteningResponse = roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningResponse;
    /** Complete bounded guest value for dsr_msgs/JogRequest. */
    using Ros1Dsr_msgsJogRequest = roswasmc_bounded_1_dsr_msgs_JogRequest;
    /** Complete bounded guest value for dsr_msgs/JogResponse. */
    using Ros1Dsr_msgsJogResponse = roswasmc_bounded_1_dsr_msgs_JogResponse;
    /** Complete bounded guest value for dsr_msgs/JogMultiRequest. */
    using Ros1Dsr_msgsJogMultiRequest = roswasmc_bounded_1_dsr_msgs_JogMultiRequest;
    /** Complete bounded guest value for dsr_msgs/JogMultiResponse. */
    using Ros1Dsr_msgsJogMultiResponse = roswasmc_bounded_1_dsr_msgs_JogMultiResponse;
    /** Complete bounded guest value for dsr_msgs/JogMultiAxis. */
    using Ros1Dsr_msgsJogMultiAxis = roswasmc_bounded_1_dsr_msgs_JogMultiAxis;
    /** Complete bounded guest value for dsr_msgs/ManageAccessControlRequest. */
    using Ros1Dsr_msgsManageAccessControlRequest = roswasmc_bounded_1_dsr_msgs_ManageAccessControlRequest;
    /** Complete bounded guest value for dsr_msgs/ManageAccessControlResponse. */
    using Ros1Dsr_msgsManageAccessControlResponse = roswasmc_bounded_1_dsr_msgs_ManageAccessControlResponse;
    /** Complete bounded guest value for dsr_msgs/ModbusState. */
    using Ros1Dsr_msgsModbusState = roswasmc_bounded_1_dsr_msgs_ModbusState;
    /** Complete bounded guest value for dsr_msgs/MoveBlendingRequest. */
    using Ros1Dsr_msgsMoveBlendingRequest = roswasmc_bounded_1_dsr_msgs_MoveBlendingRequest;
    /** Complete bounded guest value for dsr_msgs/MoveBlendingResponse. */
    using Ros1Dsr_msgsMoveBlendingResponse = roswasmc_bounded_1_dsr_msgs_MoveBlendingResponse;
    /** Complete bounded guest value for dsr_msgs/MoveCircleRequest. */
    using Ros1Dsr_msgsMoveCircleRequest = roswasmc_bounded_1_dsr_msgs_MoveCircleRequest;
    /** Complete bounded guest value for dsr_msgs/MoveCircleResponse. */
    using Ros1Dsr_msgsMoveCircleResponse = roswasmc_bounded_1_dsr_msgs_MoveCircleResponse;
    /** Complete bounded guest value for dsr_msgs/MoveHomeRequest. */
    using Ros1Dsr_msgsMoveHomeRequest = roswasmc_bounded_1_dsr_msgs_MoveHomeRequest;
    /** Complete bounded guest value for dsr_msgs/MoveHomeResponse. */
    using Ros1Dsr_msgsMoveHomeResponse = roswasmc_bounded_1_dsr_msgs_MoveHomeResponse;
    /** Complete bounded guest value for dsr_msgs/MoveJointRequest. */
    using Ros1Dsr_msgsMoveJointRequest = roswasmc_bounded_1_dsr_msgs_MoveJointRequest;
    /** Complete bounded guest value for dsr_msgs/MoveJointResponse. */
    using Ros1Dsr_msgsMoveJointResponse = roswasmc_bounded_1_dsr_msgs_MoveJointResponse;
    /** Complete bounded guest value for dsr_msgs/MoveJointxRequest. */
    using Ros1Dsr_msgsMoveJointxRequest = roswasmc_bounded_1_dsr_msgs_MoveJointxRequest;
    /** Complete bounded guest value for dsr_msgs/MoveJointxResponse. */
    using Ros1Dsr_msgsMoveJointxResponse = roswasmc_bounded_1_dsr_msgs_MoveJointxResponse;
    /** Complete bounded guest value for dsr_msgs/MoveLineRequest. */
    using Ros1Dsr_msgsMoveLineRequest = roswasmc_bounded_1_dsr_msgs_MoveLineRequest;
    /** Complete bounded guest value for dsr_msgs/MoveLineResponse. */
    using Ros1Dsr_msgsMoveLineResponse = roswasmc_bounded_1_dsr_msgs_MoveLineResponse;
    /** Complete bounded guest value for dsr_msgs/MovePauseRequest. */
    using Ros1Dsr_msgsMovePauseRequest = roswasmc_bounded_1_dsr_msgs_MovePauseRequest;
    /** Complete bounded guest value for dsr_msgs/MovePauseResponse. */
    using Ros1Dsr_msgsMovePauseResponse = roswasmc_bounded_1_dsr_msgs_MovePauseResponse;
    /** Complete bounded guest value for dsr_msgs/MovePeriodicRequest. */
    using Ros1Dsr_msgsMovePeriodicRequest = roswasmc_bounded_1_dsr_msgs_MovePeriodicRequest;
    /** Complete bounded guest value for dsr_msgs/MovePeriodicResponse. */
    using Ros1Dsr_msgsMovePeriodicResponse = roswasmc_bounded_1_dsr_msgs_MovePeriodicResponse;
    /** Complete bounded guest value for dsr_msgs/MoveResumeRequest. */
    using Ros1Dsr_msgsMoveResumeRequest = roswasmc_bounded_1_dsr_msgs_MoveResumeRequest;
    /** Complete bounded guest value for dsr_msgs/MoveResumeResponse. */
    using Ros1Dsr_msgsMoveResumeResponse = roswasmc_bounded_1_dsr_msgs_MoveResumeResponse;
    /** Complete bounded guest value for dsr_msgs/MoveSpiralRequest. */
    using Ros1Dsr_msgsMoveSpiralRequest = roswasmc_bounded_1_dsr_msgs_MoveSpiralRequest;
    /** Complete bounded guest value for dsr_msgs/MoveSpiralResponse. */
    using Ros1Dsr_msgsMoveSpiralResponse = roswasmc_bounded_1_dsr_msgs_MoveSpiralResponse;
    /** Complete bounded guest value for dsr_msgs/MoveSplineJointRequest. */
    using Ros1Dsr_msgsMoveSplineJointRequest = roswasmc_bounded_1_dsr_msgs_MoveSplineJointRequest;
    /** Complete bounded guest value for dsr_msgs/MoveSplineJointResponse. */
    using Ros1Dsr_msgsMoveSplineJointResponse = roswasmc_bounded_1_dsr_msgs_MoveSplineJointResponse;
    /** Complete bounded guest value for dsr_msgs/MoveSplineTaskRequest. */
    using Ros1Dsr_msgsMoveSplineTaskRequest = roswasmc_bounded_1_dsr_msgs_MoveSplineTaskRequest;
    /** Complete bounded guest value for dsr_msgs/MoveSplineTaskResponse. */
    using Ros1Dsr_msgsMoveSplineTaskResponse = roswasmc_bounded_1_dsr_msgs_MoveSplineTaskResponse;
    /** Complete bounded guest value for dsr_msgs/MoveStopRequest. */
    using Ros1Dsr_msgsMoveStopRequest = roswasmc_bounded_1_dsr_msgs_MoveStopRequest;
    /** Complete bounded guest value for dsr_msgs/MoveStopResponse. */
    using Ros1Dsr_msgsMoveStopResponse = roswasmc_bounded_1_dsr_msgs_MoveStopResponse;
    /** Complete bounded guest value for dsr_msgs/MoveWaitRequest. */
    using Ros1Dsr_msgsMoveWaitRequest = roswasmc_bounded_1_dsr_msgs_MoveWaitRequest;
    /** Complete bounded guest value for dsr_msgs/MoveWaitResponse. */
    using Ros1Dsr_msgsMoveWaitResponse = roswasmc_bounded_1_dsr_msgs_MoveWaitResponse;
    /** Complete bounded guest value for dsr_msgs/OverwriteUserCartCoordRequest. */
    using Ros1Dsr_msgsOverwriteUserCartCoordRequest = roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordRequest;
    /** Complete bounded guest value for dsr_msgs/OverwriteUserCartCoordResponse. */
    using Ros1Dsr_msgsOverwriteUserCartCoordResponse = roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordResponse;
    /** Complete bounded guest value for dsr_msgs/ParallelAxis1Request. */
    using Ros1Dsr_msgsParallelAxis1Request = roswasmc_bounded_1_dsr_msgs_ParallelAxis1Request;
    /** Complete bounded guest value for dsr_msgs/ParallelAxis1Response. */
    using Ros1Dsr_msgsParallelAxis1Response = roswasmc_bounded_1_dsr_msgs_ParallelAxis1Response;
    /** Complete bounded guest value for dsr_msgs/ParallelAxis2Request. */
    using Ros1Dsr_msgsParallelAxis2Request = roswasmc_bounded_1_dsr_msgs_ParallelAxis2Request;
    /** Complete bounded guest value for dsr_msgs/ParallelAxis2Response. */
    using Ros1Dsr_msgsParallelAxis2Response = roswasmc_bounded_1_dsr_msgs_ParallelAxis2Response;
    /** Complete bounded guest value for dsr_msgs/ReadDataRTRequest. */
    using Ros1Dsr_msgsReadDataRTRequest = roswasmc_bounded_1_dsr_msgs_ReadDataRTRequest;
    /** Complete bounded guest value for dsr_msgs/RobotStateRT. */
    using Ros1Dsr_msgsRobotStateRT = roswasmc_bounded_1_dsr_msgs_RobotStateRT;
    /** Complete bounded guest value for dsr_msgs/ReadDataRTResponse. */
    using Ros1Dsr_msgsReadDataRTResponse = roswasmc_bounded_1_dsr_msgs_ReadDataRTResponse;
    /** Complete bounded guest value for dsr_msgs/ReleaseComplianceCtrlRequest. */
    using Ros1Dsr_msgsReleaseComplianceCtrlRequest = roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlRequest;
    /** Complete bounded guest value for dsr_msgs/ReleaseComplianceCtrlResponse. */
    using Ros1Dsr_msgsReleaseComplianceCtrlResponse = roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlResponse;
    /** Complete bounded guest value for dsr_msgs/ReleaseForceRequest. */
    using Ros1Dsr_msgsReleaseForceRequest = roswasmc_bounded_1_dsr_msgs_ReleaseForceRequest;
    /** Complete bounded guest value for dsr_msgs/ReleaseForceResponse. */
    using Ros1Dsr_msgsReleaseForceResponse = roswasmc_bounded_1_dsr_msgs_ReleaseForceResponse;
    /** Complete bounded guest value for dsr_msgs/ReleaseProtectiveStopRequest. */
    using Ros1Dsr_msgsReleaseProtectiveStopRequest = roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStopRequest;
    /** Complete bounded guest value for dsr_msgs/ReleaseProtectiveStopResponse. */
    using Ros1Dsr_msgsReleaseProtectiveStopResponse = roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStopResponse;
    /** Complete bounded guest value for dsr_msgs/ResetWorkpieceWeightRequest. */
    using Ros1Dsr_msgsResetWorkpieceWeightRequest = roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightRequest;
    /** Complete bounded guest value for dsr_msgs/ResetWorkpieceWeightResponse. */
    using Ros1Dsr_msgsResetWorkpieceWeightResponse = roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightResponse;
    /** Complete bounded guest value for dsr_msgs/RobotError. */
    using Ros1Dsr_msgsRobotError = roswasmc_bounded_1_dsr_msgs_RobotError;
    /** Complete bounded guest value for dsr_msgs/RobotState. */
    using Ros1Dsr_msgsRobotState = roswasmc_bounded_1_dsr_msgs_RobotState;
    /** Complete bounded guest value for dsr_msgs/RobotStop. */
    using Ros1Dsr_msgsRobotStop = roswasmc_bounded_1_dsr_msgs_RobotStop;
    /** Complete bounded guest value for dsr_msgs/Robotiq2FCloseRequest. */
    using Ros1Dsr_msgsRobotiq2FCloseRequest = roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseRequest;
    /** Complete bounded guest value for dsr_msgs/Robotiq2FCloseResponse. */
    using Ros1Dsr_msgsRobotiq2FCloseResponse = roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseResponse;
    /** Complete bounded guest value for dsr_msgs/Robotiq2FMoveRequest. */
    using Ros1Dsr_msgsRobotiq2FMoveRequest = roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveRequest;
    /** Complete bounded guest value for dsr_msgs/Robotiq2FMoveResponse. */
    using Ros1Dsr_msgsRobotiq2FMoveResponse = roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveResponse;
    /** Complete bounded guest value for dsr_msgs/Robotiq2FOpenRequest. */
    using Ros1Dsr_msgsRobotiq2FOpenRequest = roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenRequest;
    /** Complete bounded guest value for dsr_msgs/Robotiq2FOpenResponse. */
    using Ros1Dsr_msgsRobotiq2FOpenResponse = roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenResponse;
    /** Complete bounded guest value for dsr_msgs/SerialSendDataRequest. */
    using Ros1Dsr_msgsSerialSendDataRequest = roswasmc_bounded_1_dsr_msgs_SerialSendDataRequest;
    /** Complete bounded guest value for dsr_msgs/SerialSendDataResponse. */
    using Ros1Dsr_msgsSerialSendDataResponse = roswasmc_bounded_1_dsr_msgs_SerialSendDataResponse;
    /** Complete bounded guest value for dsr_msgs/ServoJRTStream. */
    using Ros1Dsr_msgsServoJRTStream = roswasmc_bounded_1_dsr_msgs_ServoJRTStream;
    /** Complete bounded guest value for dsr_msgs/ServoJStream. */
    using Ros1Dsr_msgsServoJStream = roswasmc_bounded_1_dsr_msgs_ServoJStream;
    /** Complete bounded guest value for dsr_msgs/ServoLRTStream. */
    using Ros1Dsr_msgsServoLRTStream = roswasmc_bounded_1_dsr_msgs_ServoLRTStream;
    /** Complete bounded guest value for dsr_msgs/ServoLStream. */
    using Ros1Dsr_msgsServoLStream = roswasmc_bounded_1_dsr_msgs_ServoLStream;
    /** Complete bounded guest value for dsr_msgs/SetAccJRTRequest. */
    using Ros1Dsr_msgsSetAccJRTRequest = roswasmc_bounded_1_dsr_msgs_SetAccJRTRequest;
    /** Complete bounded guest value for dsr_msgs/SetAccJRTResponse. */
    using Ros1Dsr_msgsSetAccJRTResponse = roswasmc_bounded_1_dsr_msgs_SetAccJRTResponse;
    /** Complete bounded guest value for dsr_msgs/SetAccXRTRequest. */
    using Ros1Dsr_msgsSetAccXRTRequest = roswasmc_bounded_1_dsr_msgs_SetAccXRTRequest;
    /** Complete bounded guest value for dsr_msgs/SetAccXRTResponse. */
    using Ros1Dsr_msgsSetAccXRTResponse = roswasmc_bounded_1_dsr_msgs_SetAccXRTResponse;
    /** Complete bounded guest value for dsr_msgs/SetCtrlBoxAnalogInputTypeRequest. */
    using Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest = roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeRequest;
    /** Complete bounded guest value for dsr_msgs/SetCtrlBoxAnalogInputTypeResponse. */
    using Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse = roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeResponse;
    /** Complete bounded guest value for dsr_msgs/SetCtrlBoxAnalogOutputRequest. */
    using Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest = roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputRequest;
    /** Complete bounded guest value for dsr_msgs/SetCtrlBoxAnalogOutputResponse. */
    using Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse = roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputResponse;
    /** Complete bounded guest value for dsr_msgs/SetCtrlBoxAnalogOutputTypeRequest. */
    using Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest = roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeRequest;
    /** Complete bounded guest value for dsr_msgs/SetCtrlBoxAnalogOutputTypeResponse. */
    using Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse = roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeResponse;
    /** Complete bounded guest value for dsr_msgs/SetCtrlBoxDigitalOutputRequest. */
    using Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest = roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputRequest;
    /** Complete bounded guest value for dsr_msgs/SetCtrlBoxDigitalOutputResponse. */
    using Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse = roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputResponse;
    /** Complete bounded guest value for dsr_msgs/SetCurrentTcpRequest. */
    using Ros1Dsr_msgsSetCurrentTcpRequest = roswasmc_bounded_1_dsr_msgs_SetCurrentTcpRequest;
    /** Complete bounded guest value for dsr_msgs/SetCurrentTcpResponse. */
    using Ros1Dsr_msgsSetCurrentTcpResponse = roswasmc_bounded_1_dsr_msgs_SetCurrentTcpResponse;
    /** Complete bounded guest value for dsr_msgs/SetCurrentToolRequest. */
    using Ros1Dsr_msgsSetCurrentToolRequest = roswasmc_bounded_1_dsr_msgs_SetCurrentToolRequest;
    /** Complete bounded guest value for dsr_msgs/SetCurrentToolResponse. */
    using Ros1Dsr_msgsSetCurrentToolResponse = roswasmc_bounded_1_dsr_msgs_SetCurrentToolResponse;
    /** Complete bounded guest value for dsr_msgs/SetDesiredForceRequest. */
    using Ros1Dsr_msgsSetDesiredForceRequest = roswasmc_bounded_1_dsr_msgs_SetDesiredForceRequest;
    /** Complete bounded guest value for dsr_msgs/SetDesiredForceResponse. */
    using Ros1Dsr_msgsSetDesiredForceResponse = roswasmc_bounded_1_dsr_msgs_SetDesiredForceResponse;
    /** Complete bounded guest value for dsr_msgs/SetModbusOutputRequest. */
    using Ros1Dsr_msgsSetModbusOutputRequest = roswasmc_bounded_1_dsr_msgs_SetModbusOutputRequest;
    /** Complete bounded guest value for dsr_msgs/SetModbusOutputResponse. */
    using Ros1Dsr_msgsSetModbusOutputResponse = roswasmc_bounded_1_dsr_msgs_SetModbusOutputResponse;
    /** Complete bounded guest value for dsr_msgs/SetRTControlInputRequest. */
    using Ros1Dsr_msgsSetRTControlInputRequest = roswasmc_bounded_1_dsr_msgs_SetRTControlInputRequest;
    /** Complete bounded guest value for dsr_msgs/SetRTControlInputResponse. */
    using Ros1Dsr_msgsSetRTControlInputResponse = roswasmc_bounded_1_dsr_msgs_SetRTControlInputResponse;
    /** Complete bounded guest value for dsr_msgs/SetRTControlOutputRequest. */
    using Ros1Dsr_msgsSetRTControlOutputRequest = roswasmc_bounded_1_dsr_msgs_SetRTControlOutputRequest;
    /** Complete bounded guest value for dsr_msgs/SetRTControlOutputResponse. */
    using Ros1Dsr_msgsSetRTControlOutputResponse = roswasmc_bounded_1_dsr_msgs_SetRTControlOutputResponse;
    /** Complete bounded guest value for dsr_msgs/SetRefCoordRequest. */
    using Ros1Dsr_msgsSetRefCoordRequest = roswasmc_bounded_1_dsr_msgs_SetRefCoordRequest;
    /** Complete bounded guest value for dsr_msgs/SetRefCoordResponse. */
    using Ros1Dsr_msgsSetRefCoordResponse = roswasmc_bounded_1_dsr_msgs_SetRefCoordResponse;
    /** Complete bounded guest value for dsr_msgs/SetRobotControlRequest. */
    using Ros1Dsr_msgsSetRobotControlRequest = roswasmc_bounded_1_dsr_msgs_SetRobotControlRequest;
    /** Complete bounded guest value for dsr_msgs/SetRobotControlResponse. */
    using Ros1Dsr_msgsSetRobotControlResponse = roswasmc_bounded_1_dsr_msgs_SetRobotControlResponse;
    /** Complete bounded guest value for dsr_msgs/SetRobotModeRequest. */
    using Ros1Dsr_msgsSetRobotModeRequest = roswasmc_bounded_1_dsr_msgs_SetRobotModeRequest;
    /** Complete bounded guest value for dsr_msgs/SetRobotModeResponse. */
    using Ros1Dsr_msgsSetRobotModeResponse = roswasmc_bounded_1_dsr_msgs_SetRobotModeResponse;
    /** Complete bounded guest value for dsr_msgs/SetRobotSpeedModeRequest. */
    using Ros1Dsr_msgsSetRobotSpeedModeRequest = roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeRequest;
    /** Complete bounded guest value for dsr_msgs/SetRobotSpeedModeResponse. */
    using Ros1Dsr_msgsSetRobotSpeedModeResponse = roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeResponse;
    /** Complete bounded guest value for dsr_msgs/SetRobotSystemRequest. */
    using Ros1Dsr_msgsSetRobotSystemRequest = roswasmc_bounded_1_dsr_msgs_SetRobotSystemRequest;
    /** Complete bounded guest value for dsr_msgs/SetRobotSystemResponse. */
    using Ros1Dsr_msgsSetRobotSystemResponse = roswasmc_bounded_1_dsr_msgs_SetRobotSystemResponse;
    /** Complete bounded guest value for dsr_msgs/SetSafeStopResetTypeRequest. */
    using Ros1Dsr_msgsSetSafeStopResetTypeRequest = roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeRequest;
    /** Complete bounded guest value for dsr_msgs/SetSafeStopResetTypeResponse. */
    using Ros1Dsr_msgsSetSafeStopResetTypeResponse = roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeResponse;
    /** Complete bounded guest value for dsr_msgs/SetSafetyModeRequest. */
    using Ros1Dsr_msgsSetSafetyModeRequest = roswasmc_bounded_1_dsr_msgs_SetSafetyModeRequest;
    /** Complete bounded guest value for dsr_msgs/SetSafetyModeResponse. */
    using Ros1Dsr_msgsSetSafetyModeResponse = roswasmc_bounded_1_dsr_msgs_SetSafetyModeResponse;
    /** Complete bounded guest value for dsr_msgs/SetSingularityHandlingRequest. */
    using Ros1Dsr_msgsSetSingularityHandlingRequest = roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingRequest;
    /** Complete bounded guest value for dsr_msgs/SetSingularityHandlingResponse. */
    using Ros1Dsr_msgsSetSingularityHandlingResponse = roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingResponse;
    /** Complete bounded guest value for dsr_msgs/SetStiffnessxRequest. */
    using Ros1Dsr_msgsSetStiffnessxRequest = roswasmc_bounded_1_dsr_msgs_SetStiffnessxRequest;
    /** Complete bounded guest value for dsr_msgs/SetStiffnessxResponse. */
    using Ros1Dsr_msgsSetStiffnessxResponse = roswasmc_bounded_1_dsr_msgs_SetStiffnessxResponse;
    /** Complete bounded guest value for dsr_msgs/SetToolDigitalOutputRequest. */
    using Ros1Dsr_msgsSetToolDigitalOutputRequest = roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputRequest;
    /** Complete bounded guest value for dsr_msgs/SetToolDigitalOutputResponse. */
    using Ros1Dsr_msgsSetToolDigitalOutputResponse = roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputResponse;
    /** Complete bounded guest value for dsr_msgs/SetToolShapeRequest. */
    using Ros1Dsr_msgsSetToolShapeRequest = roswasmc_bounded_1_dsr_msgs_SetToolShapeRequest;
    /** Complete bounded guest value for dsr_msgs/SetToolShapeResponse. */
    using Ros1Dsr_msgsSetToolShapeResponse = roswasmc_bounded_1_dsr_msgs_SetToolShapeResponse;
    /** Complete bounded guest value for dsr_msgs/SetUserCartCoord1Request. */
    using Ros1Dsr_msgsSetUserCartCoord1Request = roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Request;
    /** Complete bounded guest value for dsr_msgs/SetUserCartCoord1Response. */
    using Ros1Dsr_msgsSetUserCartCoord1Response = roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Response;
    /** Complete bounded guest value for dsr_msgs/SetUserCartCoord2Request. */
    using Ros1Dsr_msgsSetUserCartCoord2Request = roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Request;
    /** Complete bounded guest value for dsr_msgs/SetUserCartCoord2Response. */
    using Ros1Dsr_msgsSetUserCartCoord2Response = roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Response;
    /** Complete bounded guest value for dsr_msgs/SetUserCartCoord3Request. */
    using Ros1Dsr_msgsSetUserCartCoord3Request = roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Request;
    /** Complete bounded guest value for dsr_msgs/SetUserCartCoord3Response. */
    using Ros1Dsr_msgsSetUserCartCoord3Response = roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Response;
    /** Complete bounded guest value for dsr_msgs/SetVelJRTRequest. */
    using Ros1Dsr_msgsSetVelJRTRequest = roswasmc_bounded_1_dsr_msgs_SetVelJRTRequest;
    /** Complete bounded guest value for dsr_msgs/SetVelJRTResponse. */
    using Ros1Dsr_msgsSetVelJRTResponse = roswasmc_bounded_1_dsr_msgs_SetVelJRTResponse;
    /** Complete bounded guest value for dsr_msgs/SetVelXRTRequest. */
    using Ros1Dsr_msgsSetVelXRTRequest = roswasmc_bounded_1_dsr_msgs_SetVelXRTRequest;
    /** Complete bounded guest value for dsr_msgs/SetVelXRTResponse. */
    using Ros1Dsr_msgsSetVelXRTResponse = roswasmc_bounded_1_dsr_msgs_SetVelXRTResponse;
    /** Complete bounded guest value for dsr_msgs/SpeedJRTStream. */
    using Ros1Dsr_msgsSpeedJRTStream = roswasmc_bounded_1_dsr_msgs_SpeedJRTStream;
    /** Complete bounded guest value for dsr_msgs/SpeedJStream. */
    using Ros1Dsr_msgsSpeedJStream = roswasmc_bounded_1_dsr_msgs_SpeedJStream;
    /** Complete bounded guest value for dsr_msgs/SpeedLRTStream. */
    using Ros1Dsr_msgsSpeedLRTStream = roswasmc_bounded_1_dsr_msgs_SpeedLRTStream;
    /** Complete bounded guest value for dsr_msgs/SpeedLStream. */
    using Ros1Dsr_msgsSpeedLStream = roswasmc_bounded_1_dsr_msgs_SpeedLStream;
    /** Complete bounded guest value for dsr_msgs/StartRTControlRequest. */
    using Ros1Dsr_msgsStartRTControlRequest = roswasmc_bounded_1_dsr_msgs_StartRTControlRequest;
    /** Complete bounded guest value for dsr_msgs/StartRTControlResponse. */
    using Ros1Dsr_msgsStartRTControlResponse = roswasmc_bounded_1_dsr_msgs_StartRTControlResponse;
    /** Complete bounded guest value for dsr_msgs/StopRTControlRequest. */
    using Ros1Dsr_msgsStopRTControlRequest = roswasmc_bounded_1_dsr_msgs_StopRTControlRequest;
    /** Complete bounded guest value for dsr_msgs/StopRTControlResponse. */
    using Ros1Dsr_msgsStopRTControlResponse = roswasmc_bounded_1_dsr_msgs_StopRTControlResponse;
    /** Complete bounded guest value for dsr_msgs/TaskComplianceCtrlRequest. */
    using Ros1Dsr_msgsTaskComplianceCtrlRequest = roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlRequest;
    /** Complete bounded guest value for dsr_msgs/TaskComplianceCtrlResponse. */
    using Ros1Dsr_msgsTaskComplianceCtrlResponse = roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlResponse;
    /** Complete bounded guest value for dsr_msgs/TorqueRTStream. */
    using Ros1Dsr_msgsTorqueRTStream = roswasmc_bounded_1_dsr_msgs_TorqueRTStream;
    /** Complete bounded guest value for dsr_msgs/TransRequest. */
    using Ros1Dsr_msgsTransRequest = roswasmc_bounded_1_dsr_msgs_TransRequest;
    /** Complete bounded guest value for dsr_msgs/TransResponse. */
    using Ros1Dsr_msgsTransResponse = roswasmc_bounded_1_dsr_msgs_TransResponse;
    /** Complete bounded guest value for dsr_msgs/WriteDataRTRequest. */
    using Ros1Dsr_msgsWriteDataRTRequest = roswasmc_bounded_1_dsr_msgs_WriteDataRTRequest;
    /** Complete bounded guest value for dsr_msgs/WriteDataRTResponse. */
    using Ros1Dsr_msgsWriteDataRTResponse = roswasmc_bounded_1_dsr_msgs_WriteDataRTResponse;
}  // namespace uwvm_custom

namespace roswasmcpp
{
    /** Checked codec for dsr_msgs/AlignAxis1Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsAlignAxis1Request>
    {
        static constexpr size_t max_wire_bytes = 170;
        static constexpr char const* codec_identity = "UWVMROS1_708643fa3a09d74f06ee9ba327c3fc05fb60dd73447ea95e43d9d96f7c5b6e54";

        static bool encode(uwvm_custom::Ros1Dsr_msgsAlignAxis1Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_AlignAxis1Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_AlignAxis1Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_AlignAxis1Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsAlignAxis1Request& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_AlignAxis1Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/AlignAxis1Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsAlignAxis1Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_dda31d7d89f3f8b2bb3c68c0d685a30ccfc32a9c363ea5399a1777da80d2f33d";

        static bool encode(uwvm_custom::Ros1Dsr_msgsAlignAxis1Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_AlignAxis1Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_AlignAxis1Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_AlignAxis1Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsAlignAxis1Response& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_AlignAxis1Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/AlignAxis2Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsAlignAxis2Request>
    {
        static constexpr size_t max_wire_bytes = 50;
        static constexpr char const* codec_identity = "UWVMROS1_3e1c136bdfe0d97015a19c2fffc6b40460933a3ada556e57142d6309f99fe1ea";

        static bool encode(uwvm_custom::Ros1Dsr_msgsAlignAxis2Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_AlignAxis2Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_AlignAxis2Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_AlignAxis2Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsAlignAxis2Request& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_AlignAxis2Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/AlignAxis2Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsAlignAxis2Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_79618c7ede73decd7a8cb4f0cc013b95c463ca37126d49c0b54e17ad17224ade";

        static bool encode(uwvm_custom::Ros1Dsr_msgsAlignAxis2Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_AlignAxis2Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_AlignAxis2Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_AlignAxis2Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsAlignAxis2Response& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_AlignAxis2Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/AlterMotionRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsAlterMotionRequest>
    {
        static constexpr size_t max_wire_bytes = 48;
        static constexpr char const* codec_identity = "UWVMROS1_2230e6b8bc09c902ab6ba9ed4e9fdb59a9e8d691cf614599e5f96fd8d2820787";

        static bool encode(uwvm_custom::Ros1Dsr_msgsAlterMotionRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_AlterMotionRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_AlterMotionRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_AlterMotionRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsAlterMotionRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_AlterMotionRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/AlterMotionResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsAlterMotionResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_d27db25bae1cbb78fedfb24b96acbe023949948766ed856ad91e942fe367f716";

        static bool encode(uwvm_custom::Ros1Dsr_msgsAlterMotionResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_AlterMotionResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_AlterMotionResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_AlterMotionResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsAlterMotionResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_AlterMotionResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/AlterMotionStream; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsAlterMotionStream>
    {
        static constexpr size_t max_wire_bytes = 48;
        static constexpr char const* codec_identity = "UWVMROS1_18119f940783ffa402b9f51773f9eac801b70f891039aa1da99b1bea04bc50ac";

        static bool encode(uwvm_custom::Ros1Dsr_msgsAlterMotionStream const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_AlterMotionStream_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_AlterMotionStream_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_AlterMotionStream_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsAlterMotionStream& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_AlterMotionStream_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/CalcCoordRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsCalcCoordRequest>
    {
        static constexpr size_t max_wire_bytes = 195;
        static constexpr char const* codec_identity = "UWVMROS1_7124a7312fd476b49ef2fd9fb468ea19ce7ae644da5c8fffb3ddfc67c175c70d";

        static bool encode(uwvm_custom::Ros1Dsr_msgsCalcCoordRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_CalcCoordRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_CalcCoordRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_CalcCoordRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsCalcCoordRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_CalcCoordRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/CalcCoordResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsCalcCoordResponse>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_c34ef9bfe05948a853305174e1084443e5358bc5877c0dd5d05ba6655dc6d993";

        static bool encode(uwvm_custom::Ros1Dsr_msgsCalcCoordResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_CalcCoordResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_CalcCoordResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_CalcCoordResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsCalcCoordResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_CalcCoordResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ChangeOperationSpeedRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsChangeOperationSpeedRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_8d8beb40ab8ebd7d0f69509832bc71ac9e460ec01bdecc41a82f4eab28017616";

        static bool encode(uwvm_custom::Ros1Dsr_msgsChangeOperationSpeedRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsChangeOperationSpeedRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ChangeOperationSpeedResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsChangeOperationSpeedResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_bf8b7e30e18d38f6dde9b02576151cb57c4789cef7b7ea6c56fc8581eafc08f6";

        static bool encode(uwvm_custom::Ros1Dsr_msgsChangeOperationSpeedResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsChangeOperationSpeedResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ChangeOperationSpeedResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/CheckForceConditionRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsCheckForceConditionRequest>
    {
        static constexpr size_t max_wire_bytes = 18;
        static constexpr char const* codec_identity = "UWVMROS1_590694ea44b90bb2aa6fa1f903d129e2a58a33af58fe26c9f67f9b0272b34673";

        static bool encode(uwvm_custom::Ros1Dsr_msgsCheckForceConditionRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_CheckForceConditionRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_CheckForceConditionRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_CheckForceConditionRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsCheckForceConditionRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_CheckForceConditionRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/CheckForceConditionResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsCheckForceConditionResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_6d0cb8413b824c1a469f77cd592946e67dd0a0c15d5945b0ea908c0e0e7a3270";

        static bool encode(uwvm_custom::Ros1Dsr_msgsCheckForceConditionResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_CheckForceConditionResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_CheckForceConditionResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_CheckForceConditionResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsCheckForceConditionResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_CheckForceConditionResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/CheckMotionRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsCheckMotionRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_f38bee5e76ececdf4868a092e4ee673da6bcd95db9baacd504ef31017b94b7d5";

        static bool encode(uwvm_custom::Ros1Dsr_msgsCheckMotionRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_CheckMotionRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_CheckMotionRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_CheckMotionRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsCheckMotionRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_CheckMotionRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/CheckMotionResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsCheckMotionResponse>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_2e11dbf1b2a447dd3b6f302f3839b2383f6c3e0c0408c138cb7acb12062df480";

        static bool encode(uwvm_custom::Ros1Dsr_msgsCheckMotionResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_CheckMotionResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_CheckMotionResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_CheckMotionResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsCheckMotionResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_CheckMotionResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/CheckOrientationCondition1Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsCheckOrientationCondition1Request>
    {
        static constexpr size_t max_wire_bytes = 99;
        static constexpr char const* codec_identity = "UWVMROS1_048532f02d47e889e7299755886812a454c0457d4c70fda58bd090c959a52c6e";

        static bool encode(uwvm_custom::Ros1Dsr_msgsCheckOrientationCondition1Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsCheckOrientationCondition1Request& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/CheckOrientationCondition1Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsCheckOrientationCondition1Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_4b8359166eedb70a505b0d1829168618088cbedada2bc5d6f7d9e9a5dfa79b32";

        static bool encode(uwvm_custom::Ros1Dsr_msgsCheckOrientationCondition1Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsCheckOrientationCondition1Response& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition1Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/CheckOrientationCondition2Request; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsCheckOrientationCondition2Request>
    {
        static constexpr size_t max_wire_bytes = 67;
        static constexpr char const* codec_identity = "UWVMROS1_42287a8e7cef2b93a1bd5778de6ae4ef4d1aa484dd0c74fcd29c660b400b6ff0";

        static bool encode(uwvm_custom::Ros1Dsr_msgsCheckOrientationCondition2Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsCheckOrientationCondition2Request& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/CheckOrientationCondition2Response; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsCheckOrientationCondition2Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_334774329557c04594f02ee344f0af39d250c482c3f9c4b2dd5f275e87880e83";

        static bool encode(uwvm_custom::Ros1Dsr_msgsCheckOrientationCondition2Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsCheckOrientationCondition2Response& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_CheckOrientationCondition2Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/CheckPositionConditionRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsCheckPositionConditionRequest>
    {
        static constexpr size_t max_wire_bytes = 67;
        static constexpr char const* codec_identity = "UWVMROS1_973c397ac52f4eba5f5956bd25c6552749d14ebd070ea659cea7601bf2bfdbeb";

        static bool encode(uwvm_custom::Ros1Dsr_msgsCheckPositionConditionRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_CheckPositionConditionRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_CheckPositionConditionRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_CheckPositionConditionRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsCheckPositionConditionRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_CheckPositionConditionRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/CheckPositionConditionResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsCheckPositionConditionResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_e809f6231e9bea172a7c00c6d32bb553e97026a607a6070e6fa82d007c3bf94a";

        static bool encode(uwvm_custom::Ros1Dsr_msgsCheckPositionConditionResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_CheckPositionConditionResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_CheckPositionConditionResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_CheckPositionConditionResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsCheckPositionConditionResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_CheckPositionConditionResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ConfigCreateModbusRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsConfigCreateModbusRequest>
    {
        static constexpr size_t max_wire_bytes = 531;
        static constexpr char const* codec_identity = "UWVMROS1_67fe218ec3ea51f74df38d696c95b24f4f64dcdeb6652b618ec327133a1fc29f";

        static bool encode(uwvm_custom::Ros1Dsr_msgsConfigCreateModbusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsConfigCreateModbusRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ConfigCreateModbusResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsConfigCreateModbusResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_13243e4aeefdebf38671fc24f7059daf3597cdebcbc1a6ffd315d3edab3dfc2f";

        static bool encode(uwvm_custom::Ros1Dsr_msgsConfigCreateModbusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsConfigCreateModbusResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ConfigCreateTcpRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsConfigCreateTcpRequest>
    {
        static constexpr size_t max_wire_bytes = 308;
        static constexpr char const* codec_identity = "UWVMROS1_afd19140176d214b18610297e53a7606a78cefd366dc01bb6baf05d72795e744";

        static bool encode(uwvm_custom::Ros1Dsr_msgsConfigCreateTcpRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsConfigCreateTcpRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ConfigCreateTcpResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsConfigCreateTcpResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_768b2341613afaecf36342ebe26060e2c41ebd8fd4404d0394065c0d0ea6c948";

        static bool encode(uwvm_custom::Ros1Dsr_msgsConfigCreateTcpResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsConfigCreateTcpResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ConfigCreateToolRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsConfigCreateToolRequest>
    {
        static constexpr size_t max_wire_bytes = 340;
        static constexpr char const* codec_identity = "UWVMROS1_ade17ea7096f6309da57a5d9e0be362562551da27bbc1508aac8e2d3c3afcd44";

        static bool encode(uwvm_custom::Ros1Dsr_msgsConfigCreateToolRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ConfigCreateToolRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ConfigCreateToolRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ConfigCreateToolRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsConfigCreateToolRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ConfigCreateToolRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ConfigCreateToolResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsConfigCreateToolResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_6ed584718ae8c0b9d3946007cfcc713e58f867d3b6b6bfdcabc7ffc126f98a9b";

        static bool encode(uwvm_custom::Ros1Dsr_msgsConfigCreateToolResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ConfigCreateToolResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ConfigCreateToolResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ConfigCreateToolResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsConfigCreateToolResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ConfigCreateToolResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ConfigDeleteModbusRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsConfigDeleteModbusRequest>
    {
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_d2007f4aa533a46244a6924762b701f84c31f5c9d19495a745e35c6fdd55d96b";

        static bool encode(uwvm_custom::Ros1Dsr_msgsConfigDeleteModbusRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsConfigDeleteModbusRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ConfigDeleteModbusResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsConfigDeleteModbusResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_e3f8b3da769c249f0064ee118d26d7154a31e2dd5e65417d01f1524baa317c4e";

        static bool encode(uwvm_custom::Ros1Dsr_msgsConfigDeleteModbusResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsConfigDeleteModbusResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ConfigDeleteTcpRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsConfigDeleteTcpRequest>
    {
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_096510681530cdda07b413a426fcf0ad5ca98e657a5d7612c1f497893fa96de4";

        static bool encode(uwvm_custom::Ros1Dsr_msgsConfigDeleteTcpRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsConfigDeleteTcpRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ConfigDeleteTcpResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsConfigDeleteTcpResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_5842def73643bf4621c17fbfa2ecd19cfec7a5c9c4ce9b954c72e0be846cebe5";

        static bool encode(uwvm_custom::Ros1Dsr_msgsConfigDeleteTcpResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsConfigDeleteTcpResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ConfigDeleteToolRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsConfigDeleteToolRequest>
    {
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_be7ab4ae62ab38dd1c31f4cb96303edf98511e369ef64476f835e23b7b6168f3";

        static bool encode(uwvm_custom::Ros1Dsr_msgsConfigDeleteToolRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsConfigDeleteToolRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ConfigDeleteToolResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsConfigDeleteToolResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_0e0708c161ba1aeeb9c7e96e77434eb7ba7c9c77eba230e5488f59b34fd8f780";

        static bool encode(uwvm_custom::Ros1Dsr_msgsConfigDeleteToolResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsConfigDeleteToolResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ConnectRTControlRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsConnectRTControlRequest>
    {
        static constexpr size_t max_wire_bytes = 264;
        static constexpr char const* codec_identity = "UWVMROS1_c9843ae994672ab18e264c025f929a10d208952e0583da7200b6aa26ec3eb755";

        static bool encode(uwvm_custom::Ros1Dsr_msgsConnectRTControlRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ConnectRTControlRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ConnectRTControlRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ConnectRTControlRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsConnectRTControlRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ConnectRTControlRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ConnectRTControlResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsConnectRTControlResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_716d95e3f734dff8442935476028644077836389e8d54f73661fd3c52804f5a4";

        static bool encode(uwvm_custom::Ros1Dsr_msgsConnectRTControlResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ConnectRTControlResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ConnectRTControlResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ConnectRTControlResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsConnectRTControlResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ConnectRTControlResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/CoordTransformRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsCoordTransformRequest>
    {
        static constexpr size_t max_wire_bytes = 50;
        static constexpr char const* codec_identity = "UWVMROS1_28b33cdb83f95f41982ccc99d276cc4efb34ff33707101e1d56cf63580095436";

        static bool encode(uwvm_custom::Ros1Dsr_msgsCoordTransformRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_CoordTransformRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_CoordTransformRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_CoordTransformRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsCoordTransformRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_CoordTransformRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/CoordTransformResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsCoordTransformResponse>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_1b9492d45f096bfd2a53e1ed8a701d53698a7aebc525b70e95de70c6275035c9";

        static bool encode(uwvm_custom::Ros1Dsr_msgsCoordTransformResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_CoordTransformResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_CoordTransformResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_CoordTransformResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsCoordTransformResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_CoordTransformResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/DisableAlterMotionRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsDisableAlterMotionRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_4ff4905d3843c08022003c96abd4031a5438078e919e0b8e43554aae3229bbc1";

        static bool encode(uwvm_custom::Ros1Dsr_msgsDisableAlterMotionRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_DisableAlterMotionRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_DisableAlterMotionRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_DisableAlterMotionRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsDisableAlterMotionRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_DisableAlterMotionRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/DisableAlterMotionResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsDisableAlterMotionResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_feff25cf5412112d1ebc9fd4dd0aca62f1a9af7f63673a0633f6f32e915a27b1";

        static bool encode(uwvm_custom::Ros1Dsr_msgsDisableAlterMotionResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_DisableAlterMotionResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_DisableAlterMotionResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_DisableAlterMotionResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsDisableAlterMotionResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_DisableAlterMotionResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/DisconnectRTControlRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsDisconnectRTControlRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_4fb305bf56dfd6e1cbaa3f5a9e86f7fdb9cd3c5822447dbdd953944545686d82";

        static bool encode(uwvm_custom::Ros1Dsr_msgsDisconnectRTControlRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_DisconnectRTControlRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_DisconnectRTControlRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_DisconnectRTControlRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsDisconnectRTControlRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_DisconnectRTControlRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/DisconnectRTControlResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsDisconnectRTControlResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_4e9481ecb0b6a13cf344d2fab2f044eb7a75d9d3277fd5dba87bd73f107c822e";

        static bool encode(uwvm_custom::Ros1Dsr_msgsDisconnectRTControlResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_DisconnectRTControlResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_DisconnectRTControlResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_DisconnectRTControlResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsDisconnectRTControlResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_DisconnectRTControlResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/DrlPauseRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsDrlPauseRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_e8e6c075432920d6650a5dddc31fd33f7a1688ce99264113be7d0675378eb120";

        static bool encode(uwvm_custom::Ros1Dsr_msgsDrlPauseRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_DrlPauseRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_DrlPauseRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_DrlPauseRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsDrlPauseRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_DrlPauseRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/DrlPauseResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsDrlPauseResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_9a448d82cb77115d43abe062d8f1bbb904ab680a98cf4d95b025eedd3deca0bb";

        static bool encode(uwvm_custom::Ros1Dsr_msgsDrlPauseResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_DrlPauseResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_DrlPauseResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_DrlPauseResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsDrlPauseResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_DrlPauseResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/DrlResumeRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsDrlResumeRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_11d5e8618dacde2d4f9ee2b9e7ee6306396e7495003bc31d9bd02a2438232713";

        static bool encode(uwvm_custom::Ros1Dsr_msgsDrlResumeRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_DrlResumeRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_DrlResumeRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_DrlResumeRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsDrlResumeRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_DrlResumeRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/DrlResumeResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsDrlResumeResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_40fdc65739450e3c8e0af52f69623624dac33620feda55065587e8e8a1d9a05a";

        static bool encode(uwvm_custom::Ros1Dsr_msgsDrlResumeResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_DrlResumeResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_DrlResumeResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_DrlResumeResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsDrlResumeResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_DrlResumeResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/DrlStartRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsDrlStartRequest>
    {
        static constexpr size_t max_wire_bytes = 261;
        static constexpr char const* codec_identity = "UWVMROS1_1f5f908c63b09780c6b68ef280f87328590e5eec3be18d98916137c0d2c42a65";

        static bool encode(uwvm_custom::Ros1Dsr_msgsDrlStartRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_DrlStartRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_DrlStartRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_DrlStartRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsDrlStartRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_DrlStartRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/DrlStartResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsDrlStartResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_2e39df1817ac076c895b43f565515db035ba300f4433b8635976b20713d98d76";

        static bool encode(uwvm_custom::Ros1Dsr_msgsDrlStartResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_DrlStartResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_DrlStartResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_DrlStartResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsDrlStartResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_DrlStartResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/DrlStopRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsDrlStopRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_5be1c9f2284e5244660cfcb60632921bb5db1440536a5030e8d4c93c15704f9b";

        static bool encode(uwvm_custom::Ros1Dsr_msgsDrlStopRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_DrlStopRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_DrlStopRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_DrlStopRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsDrlStopRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_DrlStopRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/DrlStopResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsDrlStopResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_0f2cf2aff2ce20b984c602673fdf51ec38ef81820171e1c08e8c9c07d536a988";

        static bool encode(uwvm_custom::Ros1Dsr_msgsDrlStopResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_DrlStopResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_DrlStopResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_DrlStopResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsDrlStopResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_DrlStopResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/EnableAlterMotionRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsEnableAlterMotionRequest>
    {
        static constexpr size_t max_wire_bytes = 38;
        static constexpr char const* codec_identity = "UWVMROS1_fa62f478a04e6d92a170e62e1ea690f6e6827e3784388fab3ecc58966c25c99f";

        static bool encode(uwvm_custom::Ros1Dsr_msgsEnableAlterMotionRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_EnableAlterMotionRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_EnableAlterMotionRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_EnableAlterMotionRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsEnableAlterMotionRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_EnableAlterMotionRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/EnableAlterMotionResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsEnableAlterMotionResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_24f3d751a4b49ff5f3280893ecb2f896ae57a9a05309a8827c5ae8eb18daf885";

        static bool encode(uwvm_custom::Ros1Dsr_msgsEnableAlterMotionResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_EnableAlterMotionResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_EnableAlterMotionResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_EnableAlterMotionResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsEnableAlterMotionResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_EnableAlterMotionResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/FkinRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsFkinRequest>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_6bbd7ead217dd4d6ed0f5d044df5a32d3be159fcc929a395396ec7c1208c325d";

        static bool encode(uwvm_custom::Ros1Dsr_msgsFkinRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_FkinRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_FkinRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_FkinRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsFkinRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_FkinRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/FkinResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsFkinResponse>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_86e79e02833be0498aef75436df542063454b0e5b0a46fb153467afc5a492c94";

        static bool encode(uwvm_custom::Ros1Dsr_msgsFkinResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_FkinResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_FkinResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_FkinResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsFkinResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_FkinResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetControlModeRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetControlModeRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_c7872f67adf097ccf8b60b910ea0c9ce8831a88b1ab82827b3789355b19fbaab";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetControlModeRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetControlModeRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetControlModeRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetControlModeRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetControlModeRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetControlModeRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetControlModeResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetControlModeResponse>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_29bcb7b65473a8e0c70660a270b9110c95d486358b6ccece3580214cb47d8f4f";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetControlModeResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetControlModeResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetControlModeResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetControlModeResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetControlModeResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetControlModeResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetControlSpaceRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetControlSpaceRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_eaff6359de691c20936219f59c4c63b1a439ef1367afee1e554d22c013bf74cf";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetControlSpaceRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetControlSpaceRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetControlSpaceRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetControlSpaceRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetControlSpaceRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetControlSpaceRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetControlSpaceResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetControlSpaceResponse>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_4ef8cc2465e8d38e5d44fa83e907ea5658f14f5f4f95776f8044f791e8311dfb";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetControlSpaceResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetControlSpaceResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetControlSpaceResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetControlSpaceResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetControlSpaceResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetControlSpaceResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCtrlBoxAnalogInputRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_0cfaa9f68b92deff18c68d7def4dda13dcd1082065218cc0af1ef8909a35898a";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCtrlBoxAnalogInputResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse>
    {
        static constexpr size_t max_wire_bytes = 9;
        static constexpr char const* codec_identity = "UWVMROS1_a23bcb46f249dc92a614e37a44ebb9e683921ee4104a22446855c8f3b35a6be7";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCtrlBoxDigitalInputRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_43410710b24f4ef8aeb4533a0d45babb2adf93890d72c08ec45b1062e0d83f7e";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCtrlBoxDigitalInputResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_f838432468390d51d64a6d9bc714b503b168a9fedfabcfb96cce7a202a34613f";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCtrlBoxDigitalOutputRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_a33419794c2431ab9d5b6c3a96becb14edca0d7b00953aa7a7ec1f11ea7bbdb5";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCtrlBoxDigitalOutputRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCtrlBoxDigitalOutputResponse; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_cf472a4ed84d8005ce6ea97ae3c2fd72aba049015924069ee16c79ad41c76534";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCtrlBoxDigitalOutputResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalOutputResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCurrentPoseRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCurrentPoseRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_674feef59812a37871c3022be9d588ffa67178430be01f47a4e3bca86766b72b";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCurrentPoseRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCurrentPoseRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCurrentPoseRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCurrentPoseRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCurrentPoseRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCurrentPoseRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCurrentPoseResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCurrentPoseResponse>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_8b57d2561b1a04d2ddb60c29f9a4ffb6ba6eeb2f73e8b7e704ee091b49861fe1";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCurrentPoseResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCurrentPoseResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCurrentPosjRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCurrentPosjRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_5a4d2e7f7304671d96e5ee9ff83ad957d6e74f49ac2562aea6e3dbfcc1726be7";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCurrentPosjRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCurrentPosjRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCurrentPosjRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCurrentPosjRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCurrentPosjRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCurrentPosjRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCurrentPosjResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCurrentPosjResponse>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_6d9f277e82052e84ee2494991ffcca6b8cb8457c2d0fdeb805122f99ae583c29";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCurrentPosjResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCurrentPosjResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCurrentPosjResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCurrentPosjResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCurrentPosjResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCurrentPosjResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCurrentPosxRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCurrentPosxRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_e134a62a318034e8ab66c88085f8e9f0380500394b9d61bb2998a618fc7d3437";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCurrentPosxRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCurrentPosxRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCurrentPosxRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCurrentPosxRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCurrentPosxRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCurrentPosxRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for std_msgs/MultiArrayDimension; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Std_msgsMultiArrayDimension>
    {
        static constexpr size_t max_wire_bytes = 76;
        static constexpr char const* codec_identity = "UWVMROS1_0a279c83cc8c73db2472e3768c8e17d877bb15d72d41f4056568a279b5352444";

        static bool encode(uwvm_custom::Ros1Std_msgsMultiArrayDimension const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_std_msgs_MultiArrayDimension_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_std_msgs_MultiArrayDimension_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_std_msgs_MultiArrayDimension_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Std_msgsMultiArrayDimension& out)
        {
            return !roswasmc_bounded_1_std_msgs_MultiArrayDimension_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for std_msgs/MultiArrayLayout; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Std_msgsMultiArrayLayout>
    {
        static constexpr size_t max_wire_bytes = 236;
        static constexpr char const* codec_identity = "UWVMROS1_602f6ec018f567486b5ea052944a24b0d798fdad5910915337ab6a76c966603e";

        static bool encode(uwvm_custom::Ros1Std_msgsMultiArrayLayout const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_std_msgs_MultiArrayLayout_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_std_msgs_MultiArrayLayout_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_std_msgs_MultiArrayLayout_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Std_msgsMultiArrayLayout& out)
        {
            return !roswasmc_bounded_1_std_msgs_MultiArrayLayout_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for std_msgs/Float64MultiArray; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Std_msgsFloat64MultiArray>
    {
        static constexpr size_t max_wire_bytes = 368;
        static constexpr char const* codec_identity = "UWVMROS1_e75045efb9b80cdc278940f799d16f3b6f49ca4eeb67b4c095d1df4db133bdf8";

        static bool encode(uwvm_custom::Ros1Std_msgsFloat64MultiArray const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_std_msgs_Float64MultiArray_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_std_msgs_Float64MultiArray_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_std_msgs_Float64MultiArray_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Std_msgsFloat64MultiArray& out)
        {
            return !roswasmc_bounded_1_std_msgs_Float64MultiArray_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCurrentPosxResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCurrentPosxResponse>
    {
        static constexpr size_t max_wire_bytes = 2213;
        static constexpr char const* codec_identity = "UWVMROS1_2fb411b9e660dddd17fcd65507bd6437db63aa41b3d1eeecd5c0048405828bf4";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCurrentPosxResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCurrentPosxResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCurrentPosxResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCurrentPosxResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCurrentPosxResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCurrentPosxResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCurrentRotmRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCurrentRotmRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_e0f4ee3e0c208a87004cca9771a0696f4acfa8a09ab6a861b8a83bd28ccfb436";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCurrentRotmRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCurrentRotmRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCurrentRotmRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCurrentRotmRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCurrentRotmRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCurrentRotmRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCurrentRotmResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCurrentRotmResponse>
    {
        static constexpr size_t max_wire_bytes = 2213;
        static constexpr char const* codec_identity = "UWVMROS1_6cfa5fffb8e5c1575cb821b9330dd9e1f60ab3b325d54ff4d00bc8859e7535d1";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCurrentRotmResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCurrentRotmResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCurrentRotmResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCurrentRotmResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCurrentRotmResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCurrentRotmResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCurrentSolutionSpaceRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCurrentSolutionSpaceRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_303fe75ff690897d18296dfb34aad4b0482e372656ed5c85bf9d60bb1832af78";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCurrentSolutionSpaceRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCurrentSolutionSpaceRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCurrentSolutionSpaceResponse; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCurrentSolutionSpaceResponse>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_e7ef22b6516c92acb76e6173e0d14f0b7c25a7ec669ef18060b4f1158e877c68";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCurrentSolutionSpaceResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCurrentSolutionSpaceResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCurrentTcpRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCurrentTcpRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_f2a902cbf141335bb559f739861860de93f07d3ed3200ba91833b831389eb3b8";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCurrentTcpRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCurrentTcpRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCurrentTcpRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCurrentTcpRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCurrentTcpRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCurrentTcpRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCurrentTcpResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCurrentTcpResponse>
    {
        static constexpr size_t max_wire_bytes = 261;
        static constexpr char const* codec_identity = "UWVMROS1_e0041507b5cdc970e31a6df40a0af22a4115724b1e4c4f615b54c788cf2f27b6";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCurrentTcpResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCurrentTcpResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCurrentTcpResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCurrentTcpResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCurrentTcpResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCurrentTcpResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCurrentToolRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCurrentToolRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_0d86dff574728cebfb33a873845e9563665d4173267adbc6fd7f542d26b15970";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCurrentToolRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCurrentToolRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCurrentToolRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCurrentToolRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCurrentToolRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCurrentToolRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCurrentToolResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCurrentToolResponse>
    {
        static constexpr size_t max_wire_bytes = 261;
        static constexpr char const* codec_identity = "UWVMROS1_ab0de7b251e53fe03818ec0169e428bf70c27bdef187c792c54e65e37b2e717b";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCurrentToolResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCurrentToolResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCurrentToolResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCurrentToolResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCurrentToolResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCurrentToolResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCurrentToolFlangePosxRequest; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCurrentToolFlangePosxRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_c5377881231716926a6e0abeff2b115eaf5292f0d7e41478a7f1b4ccf7896d53";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCurrentToolFlangePosxRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCurrentToolFlangePosxRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCurrentToolFlangePosxResponse; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCurrentToolFlangePosxResponse>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_0de91ced161ef1b14003e0e248887f641fd366500674aae15cbbb0f7d915caac";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCurrentToolFlangePosxResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCurrentToolFlangePosxResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCurrentToolFlangePosxResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCurrentVeljRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCurrentVeljRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_ee4ef9a4e0b65ed58844e3b545094c569113b23d2478717306a14edb399242fa";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCurrentVeljRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCurrentVeljRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCurrentVeljRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCurrentVeljRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCurrentVeljRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCurrentVeljRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCurrentVeljResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCurrentVeljResponse>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_000fed042d8de5fd8a1d95fe6b45cec5e4ad20ea2833199d7836ebb9e3ae5b2c";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCurrentVeljResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCurrentVeljResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCurrentVeljResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCurrentVeljResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCurrentVeljResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCurrentVeljResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCurrentVelxRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCurrentVelxRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_6f37a0ffd22a29a6b7812d551680cacb146192c25b234806ff16686992c34efb";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCurrentVelxRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCurrentVelxRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCurrentVelxRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCurrentVelxRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCurrentVelxRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCurrentVelxRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetCurrentVelxResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetCurrentVelxResponse>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_98c1cd7ae5663063ce12ea61d9be3dbfd37e9e0b10b6a7f4cc1c212419392f40";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetCurrentVelxResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetCurrentVelxResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetCurrentVelxResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetCurrentVelxResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetCurrentVelxResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetCurrentVelxResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetDesiredPosjRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetDesiredPosjRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_2937a5625d07a7681c80c13557018978107abc537a22ee85ff562f15925caf1e";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetDesiredPosjRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetDesiredPosjRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetDesiredPosjRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetDesiredPosjRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetDesiredPosjRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetDesiredPosjRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetDesiredPosjResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetDesiredPosjResponse>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_11ac4a05e65b0142f18a152904020780179fadfe540fbff7d5c53e4f177bc833";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetDesiredPosjResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetDesiredPosjResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetDesiredPosjResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetDesiredPosjResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetDesiredPosjResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetDesiredPosjResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetDesiredPosxRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetDesiredPosxRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_812744777c143dfb5c4b60f71ab9461b3e95ead9e599473f87f88ba4f21d3563";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetDesiredPosxRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetDesiredPosxRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetDesiredPosxRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetDesiredPosxRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetDesiredPosxRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetDesiredPosxRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetDesiredPosxResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetDesiredPosxResponse>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_2cf88bb8a14a1c2083a659a509fc1d29531aed1a1f9eb18590ad4381ff00a10a";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetDesiredPosxResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetDesiredPosxResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetDesiredPosxResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetDesiredPosxResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetDesiredPosxResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetDesiredPosxResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetDesiredVeljRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetDesiredVeljRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_0b93381c0f1e5f57e086d316056912ecb10e3697346e5f250fa5efa612d76e99";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetDesiredVeljRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetDesiredVeljRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetDesiredVeljRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetDesiredVeljRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetDesiredVeljRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetDesiredVeljRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetDesiredVeljResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetDesiredVeljResponse>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_753747a45767aad1a06f610e11bfd405d07aa365ff1ede44c4b78de99ef6ef22";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetDesiredVeljResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetDesiredVeljResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetDesiredVeljResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetDesiredVeljResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetDesiredVeljResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetDesiredVeljResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetDesiredVelxRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetDesiredVelxRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_f26e4ab51d82b3afdaf0f628f62346c740e2bb331d7f482001662884fd6d8aff";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetDesiredVelxRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetDesiredVelxRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetDesiredVelxRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetDesiredVelxRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetDesiredVelxRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetDesiredVelxRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetDesiredVelxResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetDesiredVelxResponse>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_30fd91ceb67fa5a2cdaf78fc9b537befc89bac4e3db1203f1da10181fb7d9e51";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetDesiredVelxResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetDesiredVelxResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetDesiredVelxResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetDesiredVelxResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetDesiredVelxResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetDesiredVelxResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetDrlStateRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetDrlStateRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_425ce8ba966c52337c8d06a8436d593e8333a33cdb21ecdb983df3db9980d51f";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetDrlStateRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetDrlStateRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetDrlStateRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetDrlStateRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetDrlStateRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetDrlStateRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetDrlStateResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetDrlStateResponse>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_2d0e1a81d0a1b5cda2cc3c4a9a5e627878324c67a0843e8a47583d4d86c149c9";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetDrlStateResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetDrlStateResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetDrlStateResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetDrlStateResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetDrlStateResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetDrlStateResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetExternalTorqueRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetExternalTorqueRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_601bfc2f1283520f2dd76e3f0eee05c02e584873e22b2188f6206cc22d96ee11";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetExternalTorqueRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetExternalTorqueRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetExternalTorqueRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetExternalTorqueRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetExternalTorqueRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetExternalTorqueRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetExternalTorqueResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetExternalTorqueResponse>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_bdcda8b96e5a22a9143c70f5af6ea56deabe1c68fbf03eb176689c14cc2f50e4";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetExternalTorqueResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetExternalTorqueResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetExternalTorqueResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetExternalTorqueResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetExternalTorqueResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetExternalTorqueResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetJointTorqueRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetJointTorqueRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_63dee3592e81bf9c2442ba8f01660710ef80c01c3ab55a73c35404da2d6da149";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetJointTorqueRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetJointTorqueRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetJointTorqueRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetJointTorqueRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetJointTorqueRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetJointTorqueRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetJointTorqueResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetJointTorqueResponse>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_da41dbdbac4580eaab3ad355caaa9e0075b87894256722521303559c698b9962";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetJointTorqueResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetJointTorqueResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetJointTorqueResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetJointTorqueResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetJointTorqueResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetJointTorqueResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetLastAlarmRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetLastAlarmRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_4ff39c1f6b320245fd73e84755fe876eb12177c4a7b3ac3888d870ec5a761bdf";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetLastAlarmRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetLastAlarmRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetLastAlarmRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetLastAlarmRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetLastAlarmRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetLastAlarmRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/LogAlarm; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsLogAlarm>
    {
        static constexpr size_t max_wire_bytes = 792;
        static constexpr char const* codec_identity = "UWVMROS1_39a6ecc178ed79ab41cd3948b6efb9666f66b0c33b6abe7845b1d16a17f9700f";

        static bool encode(uwvm_custom::Ros1Dsr_msgsLogAlarm const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_LogAlarm_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_LogAlarm_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_LogAlarm_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsLogAlarm& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_LogAlarm_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetLastAlarmResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetLastAlarmResponse>
    {
        static constexpr size_t max_wire_bytes = 793;
        static constexpr char const* codec_identity = "UWVMROS1_477c434da50cd9b26e93b02ca9072542afc22b62084cf5a9eb785cd43cb4d61e";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetLastAlarmResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetLastAlarmResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetLastAlarmResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetLastAlarmResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetLastAlarmResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetLastAlarmResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetModbusInputRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetModbusInputRequest>
    {
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_812e7d2d259db6a466dd304239aee910848a1fb9059c431f3495825d8ebe800c";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetModbusInputRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetModbusInputRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetModbusInputRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetModbusInputRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetModbusInputRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetModbusInputRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetModbusInputResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetModbusInputResponse>
    {
        static constexpr size_t max_wire_bytes = 5;
        static constexpr char const* codec_identity = "UWVMROS1_29360b7702eec80f1dd7915cc8bb58fb5126d93b545cb921b7eb9c3ffa0b49d5";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetModbusInputResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetModbusInputResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetModbusInputResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetModbusInputResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetModbusInputResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetModbusInputResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetOrientationErrorRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetOrientationErrorRequest>
    {
        static constexpr size_t max_wire_bytes = 97;
        static constexpr char const* codec_identity = "UWVMROS1_db1e637c2f187602b5c3aaa2b3e33fb1b7636b28281832d393d3516984e9e01e";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetOrientationErrorRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetOrientationErrorRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetOrientationErrorRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetOrientationErrorRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetOrientationErrorRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetOrientationErrorRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetOrientationErrorResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetOrientationErrorResponse>
    {
        static constexpr size_t max_wire_bytes = 5;
        static constexpr char const* codec_identity = "UWVMROS1_909be18b65c95198ce5c5a7b2a11ae97cfad9509c360aec833bbfd239497b9e6";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetOrientationErrorResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetOrientationErrorResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetOrientationErrorResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetOrientationErrorResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetOrientationErrorResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetOrientationErrorResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetRTControlInputDataListRequest; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetRTControlInputDataListRequest>
    {
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_7f10baf8b008b8de00c2fcc20aea49615584980c73d20b6018e39e5a6b98542e";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetRTControlInputDataListRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataListRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataListRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataListRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetRTControlInputDataListRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataListRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetRTControlInputDataListResponse; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetRTControlInputDataListResponse>
    {
        static constexpr size_t max_wire_bytes = 261;
        static constexpr char const* codec_identity = "UWVMROS1_e930906de3694556f29baaacac82899dab1ad90716d52c67789e2494ed64ec63";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetRTControlInputDataListResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataListResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataListResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataListResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetRTControlInputDataListResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetRTControlInputDataListResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetRTControlInputVersionListRequest; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetRTControlInputVersionListRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_e9bef63b747d0b01343249f0df32a27a7f97a5b031ec2215fac346a9df113fb8";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetRTControlInputVersionListRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionListRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionListRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionListRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetRTControlInputVersionListRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionListRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetRTControlInputVersionListResponse; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetRTControlInputVersionListResponse>
    {
        static constexpr size_t max_wire_bytes = 261;
        static constexpr char const* codec_identity = "UWVMROS1_d7c478e4dce0983f786db7df29798eee087e500169b9e1f676a3c57c835d94f1";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetRTControlInputVersionListResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionListResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionListResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionListResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetRTControlInputVersionListResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetRTControlInputVersionListResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetRTControlOutputDataListRequest; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetRTControlOutputDataListRequest>
    {
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_ce20938bf62ee2d5389c4151d16af5e0cb8f935b5cf4c7e14070f269a0baa524";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetRTControlOutputDataListRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataListRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataListRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataListRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetRTControlOutputDataListRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataListRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetRTControlOutputDataListResponse; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetRTControlOutputDataListResponse>
    {
        static constexpr size_t max_wire_bytes = 261;
        static constexpr char const* codec_identity = "UWVMROS1_030d3e350790b44f0101b263558518a807d97c772289c2eb16763808be6b1d5f";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetRTControlOutputDataListResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataListResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataListResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataListResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetRTControlOutputDataListResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetRTControlOutputDataListResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetRTControlOutputVersionListRequest; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetRTControlOutputVersionListRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_67330fd6822948e262d4d68e48593e67189bada0e5281607a074235f086b34d0";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetRTControlOutputVersionListRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionListRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionListRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionListRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetRTControlOutputVersionListRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionListRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetRTControlOutputVersionListResponse; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetRTControlOutputVersionListResponse>
    {
        static constexpr size_t max_wire_bytes = 261;
        static constexpr char const* codec_identity = "UWVMROS1_19ca1e03d18347033f071489428024a1f9204b64aced31a42c8161d11e5fa76b";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetRTControlOutputVersionListResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionListResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionListResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionListResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetRTControlOutputVersionListResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetRTControlOutputVersionListResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetRobotModeRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetRobotModeRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_228237c16ea308e25d1a5fb7f74713a31a67e6e1e6b0a94f06c30264ed90af90";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetRobotModeRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetRobotModeRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetRobotModeRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetRobotModeRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetRobotModeRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetRobotModeRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetRobotModeResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetRobotModeResponse>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_559f9328cba413aa572f66818aace6061020777c2cbb6bea475adf3cbca1a88c";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetRobotModeResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetRobotModeResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetRobotModeResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetRobotModeResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetRobotModeResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetRobotModeResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetRobotSpeedModeRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetRobotSpeedModeRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_ff02ad740851d4dc6955206ffa3556f6564854bd6edd6a8190ce44f8ba9709d4";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetRobotSpeedModeRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetRobotSpeedModeRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetRobotSpeedModeResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetRobotSpeedModeResponse>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_eaef45ce098108c89a49b2ed3e0cfeba901d7a9e8e4fee86d7c646e181cfe3c4";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetRobotSpeedModeResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetRobotSpeedModeResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetRobotStateRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetRobotStateRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_b773b6fe4f08ade05cc0bac7e0d70cb7edcfa763f83608d944bf072da4ad08bc";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetRobotStateRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetRobotStateRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetRobotStateRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetRobotStateRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetRobotStateRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetRobotStateRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetRobotStateResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetRobotStateResponse>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_1e210aa1fd0a833b8d8dedbbda759f12b860c7cbe161f2bed50b41015451ba51";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetRobotStateResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetRobotStateResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetRobotSystemRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetRobotSystemRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_43cc52a8d4b5e36ace679eb3f5bad943b3052bb0dec9f8af6f58f2d5c7deb203";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetRobotSystemRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetRobotSystemRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetRobotSystemRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetRobotSystemRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetRobotSystemRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetRobotSystemRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetRobotSystemResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetRobotSystemResponse>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_b7f7ec9a3e0bf607295bc5d0af1d82d192bc35103401c913c4ed8a8c77811c7f";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetRobotSystemResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetRobotSystemResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetRobotSystemResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetRobotSystemResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetRobotSystemResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetRobotSystemResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetSolutionSpaceRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetSolutionSpaceRequest>
    {
        static constexpr size_t max_wire_bytes = 48;
        static constexpr char const* codec_identity = "UWVMROS1_416c6623add6fed0900f585292905890932f326162a1431b481b28aac52c7bf3";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetSolutionSpaceRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetSolutionSpaceRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetSolutionSpaceResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetSolutionSpaceResponse>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_d6cf69fb571a6947cabc01a594e84d1eed7a581511e755db9dde5452f1230511";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetSolutionSpaceResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetSolutionSpaceResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetSolutionSpaceResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetToolDigitalInputRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetToolDigitalInputRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_a8fa1714fc6c5d9082f6909ad8562c87e1bd95e40168701c1dc670e614b5dd70";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetToolDigitalInputRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetToolDigitalInputRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetToolDigitalInputResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetToolDigitalInputResponse>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_ba289ccf352c0560a70d99ec99a95c01b84ab7436f5638874ae4e1d89364a8b6";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetToolDigitalInputResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetToolDigitalInputResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetToolDigitalOutputRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetToolDigitalOutputRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_bfed701bd5b788685802e15709a594b065dff57f5c6706b14ad41bc6f80736ce";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetToolDigitalOutputRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetToolDigitalOutputRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetToolDigitalOutputResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetToolDigitalOutputResponse>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_0873d83b7b79d0270af4d61d86fd77bb248a75ebfe91177e4acc9299c46a309d";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetToolDigitalOutputResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetToolDigitalOutputResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetToolDigitalOutputResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetToolForceRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetToolForceRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_2df77a1075113a1c8febd77c89e13417c596c6d1d4abd26454a4439620e397b4";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetToolForceRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetToolForceRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetToolForceRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetToolForceRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetToolForceRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetToolForceRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetToolForceResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetToolForceResponse>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_11dfdda93d1818dbcb331bba86cf08815f24bb8adb34e70792a730ce27d95ed9";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetToolForceResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetToolForceResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetToolForceResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetToolForceResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetToolForceResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetToolForceResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetUserCartCoordRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetUserCartCoordRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_07824b4c8403d59fad8e8a33c615fcf96a0556bd8de1c1639a16d3aa28db0637";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetUserCartCoordRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetUserCartCoordRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetUserCartCoordRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetUserCartCoordRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetUserCartCoordRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetUserCartCoordRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetUserCartCoordResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetUserCartCoordResponse>
    {
        static constexpr size_t max_wire_bytes = 50;
        static constexpr char const* codec_identity = "UWVMROS1_2fea411082260a3dbaf3fb3f4c1314f74dda9fb864222fe5837e1d5f62502a22";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetUserCartCoordResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetUserCartCoordResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetUserCartCoordResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetUserCartCoordResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetUserCartCoordResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetUserCartCoordResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetWorkpieceWeightRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetWorkpieceWeightRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_fa987920bd5c89882bd52b444bec319c5b83c3fdf6086c065c87e924d40890ec";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetWorkpieceWeightRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetWorkpieceWeightRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/GetWorkpieceWeightResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetWorkpieceWeightResponse>
    {
        static constexpr size_t max_wire_bytes = 5;
        static constexpr char const* codec_identity = "UWVMROS1_687f2eaa565bbbb878ff0018ad4fa9bc1596316cbbb83c07df85df5cd81887ca";

        static bool encode(uwvm_custom::Ros1Dsr_msgsGetWorkpieceWeightResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsGetWorkpieceWeightResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_GetWorkpieceWeightResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/IkinRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsIkinRequest>
    {
        static constexpr size_t max_wire_bytes = 50;
        static constexpr char const* codec_identity = "UWVMROS1_64192c8fc182151b11fe48b99d05e142994a0724cbde8572058378e843fe7f27";

        static bool encode(uwvm_custom::Ros1Dsr_msgsIkinRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_IkinRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_IkinRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_IkinRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsIkinRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_IkinRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/IkinResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsIkinResponse>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_fa64a9417d777219d7142d600391a80c0001464e3777174bef040ecd80df1e23";

        static bool encode(uwvm_custom::Ros1Dsr_msgsIkinResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_IkinResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_IkinResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_IkinResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsIkinResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_IkinResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/IkinExRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsIkinExRequest>
    {
        static constexpr size_t max_wire_bytes = 51;
        static constexpr char const* codec_identity = "UWVMROS1_6af2997a590ef83a15238d4837d7540ba1f5dd0d40067c74e03ebda063fa0cd0";

        static bool encode(uwvm_custom::Ros1Dsr_msgsIkinExRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_IkinExRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_IkinExRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_IkinExRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsIkinExRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_IkinExRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/IkinExResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsIkinExResponse>
    {
        static constexpr size_t max_wire_bytes = 50;
        static constexpr char const* codec_identity = "UWVMROS1_67a37bdec1e80488a520a0efc6f7bc1781cbd90b5137068c7e2961b5cb1ee1d1";

        static bool encode(uwvm_custom::Ros1Dsr_msgsIkinExResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_IkinExResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_IkinExResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_IkinExResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsIkinExResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_IkinExResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/IsDoneBoltTighteningRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsIsDoneBoltTighteningRequest>
    {
        static constexpr size_t max_wire_bytes = 17;
        static constexpr char const* codec_identity = "UWVMROS1_40ab245e2e736f9171f7ab55ff340717ef3f1ec89614730f4f9e3811ba6afa9e";

        static bool encode(uwvm_custom::Ros1Dsr_msgsIsDoneBoltTighteningRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsIsDoneBoltTighteningRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/IsDoneBoltTighteningResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsIsDoneBoltTighteningResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_86e7eb378e84a1feec9b2abfb3b8af889b9cf986c7455e0d74bb8832af6ff611";

        static bool encode(uwvm_custom::Ros1Dsr_msgsIsDoneBoltTighteningResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsIsDoneBoltTighteningResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_IsDoneBoltTighteningResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/JogRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsJogRequest>
    {
        static constexpr size_t max_wire_bytes = 10;
        static constexpr char const* codec_identity = "UWVMROS1_28c6930998059030e74613930bd86066b3a37a490f7f438395eed15570617f7a";

        static bool encode(uwvm_custom::Ros1Dsr_msgsJogRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_JogRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_JogRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_JogRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsJogRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_JogRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/JogResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsJogResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_f87fba5fb96bd9ae52d16a519b20ca7ea2c17560b15bd8543a9484282e1967d7";

        static bool encode(uwvm_custom::Ros1Dsr_msgsJogResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_JogResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_JogResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_JogResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsJogResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_JogResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/JogMultiRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsJogMultiRequest>
    {
        static constexpr size_t max_wire_bytes = 57;
        static constexpr char const* codec_identity = "UWVMROS1_f24271474302516dfce0dde848b2420490c35800b12d2fbdf5250ebbffc25cea";

        static bool encode(uwvm_custom::Ros1Dsr_msgsJogMultiRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_JogMultiRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_JogMultiRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_JogMultiRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsJogMultiRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_JogMultiRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/JogMultiResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsJogMultiResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_fecf5222e690c35fe0503c56d12e06b375d55ffab9ea0bbef96270729305a64a";

        static bool encode(uwvm_custom::Ros1Dsr_msgsJogMultiResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_JogMultiResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_JogMultiResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_JogMultiResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsJogMultiResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_JogMultiResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/JogMultiAxis; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsJogMultiAxis>
    {
        static constexpr size_t max_wire_bytes = 57;
        static constexpr char const* codec_identity = "UWVMROS1_ee64c6ccdfa3726ebbfc0b3779f878cbbece6fe878cbfbc14fa45eed4486de02";

        static bool encode(uwvm_custom::Ros1Dsr_msgsJogMultiAxis const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_JogMultiAxis_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_JogMultiAxis_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_JogMultiAxis_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsJogMultiAxis& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_JogMultiAxis_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ManageAccessControlRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsManageAccessControlRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_0b29aed59d855590ad69ec9bf8e2585b39ee8ce05bed1e305dd7f2a7c1b79d36";

        static bool encode(uwvm_custom::Ros1Dsr_msgsManageAccessControlRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ManageAccessControlRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ManageAccessControlRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ManageAccessControlRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsManageAccessControlRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ManageAccessControlRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ManageAccessControlResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsManageAccessControlResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_64837b0ea282acdc16ad7d0a4e6679d9b9b74a3ff3d276dad77042529fa897b3";

        static bool encode(uwvm_custom::Ros1Dsr_msgsManageAccessControlResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ManageAccessControlResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ManageAccessControlResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ManageAccessControlResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsManageAccessControlResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ManageAccessControlResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ModbusState; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsModbusState>
    {
        static constexpr size_t max_wire_bytes = 264;
        static constexpr char const* codec_identity = "UWVMROS1_e107e7ff86b98e9c58565f3a2889ac50ea49ecc6efb9c982d29b075086fe3ae9";

        static bool encode(uwvm_custom::Ros1Dsr_msgsModbusState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ModbusState_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ModbusState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ModbusState_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsModbusState& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ModbusState_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveBlendingRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveBlendingRequest>
    {
        static constexpr size_t max_wire_bytes = 2256;
        static constexpr char const* codec_identity = "UWVMROS1_70b7fb3501e9677b76ed8f893883090e500be36ff8175edce8fd6d6d4f23e4e6";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveBlendingRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveBlendingRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveBlendingRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveBlendingRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveBlendingRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveBlendingRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveBlendingResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveBlendingResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_9c5697b77eaad084e9870d5ca1a1a960e22bd87137f2a1035daa9f014cc28eb6";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveBlendingResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveBlendingResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveBlendingResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveBlendingResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveBlendingResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveBlendingResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveCircleRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveCircleRequest>
    {
        static constexpr size_t max_wire_bytes = 2280;
        static constexpr char const* codec_identity = "UWVMROS1_39c6ea4c3b15ae9866db805863a5c5c542bbf7b104adcd81a13425719fd994f4";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveCircleRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveCircleRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveCircleRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveCircleRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveCircleRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveCircleRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveCircleResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveCircleResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_a5950bd2e98ce04a5b2261eec3c95f65613f3fb60d8d1779c6a8bcbb28fa42f3";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveCircleResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveCircleResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveCircleResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveCircleResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveCircleResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveCircleResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveHomeRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveHomeRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_99b3fe492438ffc71627412077f7b0ced950e0f6038722ecfb34191093e0308f";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveHomeRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveHomeRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveHomeRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveHomeRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveHomeRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveHomeRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveHomeResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveHomeResponse>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_9906457df2f7eccd40564fb7ba76fe7245ad943f20461bf23192cfbcba3a596f";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveHomeResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveHomeResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveHomeResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveHomeResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveHomeResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveHomeResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveJointRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveJointRequest>
    {
        static constexpr size_t max_wire_bytes = 83;
        static constexpr char const* codec_identity = "UWVMROS1_b244b9d86649987111dd94846a98260a464ac54b9074025689028be9a1ed6a03";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveJointRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveJointRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveJointRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveJointRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveJointRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveJointRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveJointResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveJointResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_66e1e0f7cf2043211218cd9d1c58bfb89ffaf7480a4adddb375c002321a3fcc4";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveJointResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveJointResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveJointResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveJointResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveJointResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveJointResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveJointxRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveJointxRequest>
    {
        static constexpr size_t max_wire_bytes = 85;
        static constexpr char const* codec_identity = "UWVMROS1_d3a91ad268c65b3f4967c281c53301ec61b6aebdc4a55324103aac4d3ed392db";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveJointxRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveJointxRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveJointxRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveJointxRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveJointxRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveJointxRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveJointxResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveJointxResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_9286ce396d98df17fa6cab04cd10ab449be09a07134799f09ae19082921103cc";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveJointxResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveJointxResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveJointxResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveJointxResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveJointxResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveJointxResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveLineRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveLineRequest>
    {
        static constexpr size_t max_wire_bytes = 100;
        static constexpr char const* codec_identity = "UWVMROS1_ef69f202700bbcfb829e8eedbb7189489f4c30a6f08702f368c5e7f9493b206e";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveLineRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveLineRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveLineRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveLineRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveLineRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveLineRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveLineResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveLineResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_0d316d575a341637b3cbe5a2ee68734670ca6f3f9f5035b383194b8457afe82c";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveLineResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveLineResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveLineResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveLineResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveLineResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveLineResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MovePauseRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMovePauseRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_a25b42c1e8819548bfff8d108ec661b4a1137eeafd19d8805cfecdc4d14c5f19";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMovePauseRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MovePauseRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MovePauseRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MovePauseRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMovePauseRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MovePauseRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MovePauseResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMovePauseResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_148a3cc895846afa55520af770f76bc6118c313b5cfbf4d83d0f161b22171aed";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMovePauseResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MovePauseResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MovePauseResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MovePauseResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMovePauseResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MovePauseResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MovePeriodicRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMovePeriodicRequest>
    {
        static constexpr size_t max_wire_bytes = 107;
        static constexpr char const* codec_identity = "UWVMROS1_73ffac70af9558b1be99d969ee99cf992816cf84ce97f29ef81036963fbd2d69";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMovePeriodicRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MovePeriodicRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MovePeriodicRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MovePeriodicRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMovePeriodicRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MovePeriodicRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MovePeriodicResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMovePeriodicResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_97f5baff448319a629f79ea38696662bfca6960af28150b8dfa07902cd7393b3";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMovePeriodicResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MovePeriodicResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MovePeriodicResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MovePeriodicResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMovePeriodicResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MovePeriodicResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveResumeRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveResumeRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_313ed9fb87f75b7a010a658e734390145b46050b1f554f863cf6c2afb7e60f1f";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveResumeRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveResumeRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveResumeRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveResumeRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveResumeRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveResumeRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveResumeResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveResumeResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_072287041c0e4462d8994d15ad03c5c36db00c754565d99cf9d30a215100937a";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveResumeResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveResumeResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveResumeResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveResumeResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveResumeResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveResumeResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveSpiralRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveSpiralRequest>
    {
        static constexpr size_t max_wire_bytes = 67;
        static constexpr char const* codec_identity = "UWVMROS1_5b5a4a14ecc3021b9f98e44891c3c87011ba825fb6399e1ae5ef179257a4565c";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveSpiralRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveSpiralRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveSpiralRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveSpiralRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveSpiralRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveSpiralRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveSpiralResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveSpiralResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_be420ead496b05aafd3aa152a89bd04cc6dc1e584e700019a568f0dcae3a7691";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveSpiralResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveSpiralResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveSpiralResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveSpiralResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveSpiralResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveSpiralResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveSplineJointRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveSplineJointRequest>
    {
        static constexpr size_t max_wire_bytes = 2319;
        static constexpr char const* codec_identity = "UWVMROS1_f5ccf9a5eade1a2f7f11c741c26e3b045fa11d81d8f03587e4a527b0256e2a8a";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveSplineJointRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveSplineJointRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveSplineJointRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveSplineJointRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveSplineJointRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveSplineJointRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveSplineJointResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveSplineJointResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_b6fe363893f83066cfbf079aedf9fd6161316fe698b1a02713761aa46adb6e68";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveSplineJointResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveSplineJointResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveSplineJointResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveSplineJointResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveSplineJointResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveSplineJointResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveSplineTaskRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveSplineTaskRequest>
    {
        static constexpr size_t max_wire_bytes = 2257;
        static constexpr char const* codec_identity = "UWVMROS1_fa8ee3b180d331309471cb20a1dbe4b46a3493cc0c7298222017200d2ff65e5a";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveSplineTaskRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveSplineTaskRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveSplineTaskRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveSplineTaskRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveSplineTaskRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveSplineTaskRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveSplineTaskResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveSplineTaskResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_3d19b8f693f665703fc8b8ee151ee49ed94100de85668164f953095f718cdb7a";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveSplineTaskResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveSplineTaskResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveSplineTaskResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveSplineTaskResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveSplineTaskResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveSplineTaskResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveStopRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveStopRequest>
    {
        static constexpr size_t max_wire_bytes = 4;
        static constexpr char const* codec_identity = "UWVMROS1_8591a7188be1a528bbbb4b62f134825e0bf0f41517709604ac06c537f01423e4";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveStopRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveStopRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveStopRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveStopRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveStopRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveStopRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveStopResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveStopResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_25580dd85be376dcb588ebe62a49394f0f9c92abd7b094c2552df86b64f87427";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveStopResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveStopResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveStopResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveStopResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveStopResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveStopResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveWaitRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveWaitRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_ca59fcddb15dd63fcf0481cb2e81be6a338d63167a15ad66585335eee1922a39";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveWaitRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveWaitRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveWaitRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveWaitRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveWaitRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveWaitRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/MoveWaitResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsMoveWaitResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_764dd1fba59b88d4baae818b06b9c735f62f156e67842013d95d55381d32f232";

        static bool encode(uwvm_custom::Ros1Dsr_msgsMoveWaitResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_MoveWaitResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_MoveWaitResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_MoveWaitResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsMoveWaitResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_MoveWaitResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/OverwriteUserCartCoordRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsOverwriteUserCartCoordRequest>
    {
        static constexpr size_t max_wire_bytes = 50;
        static constexpr char const* codec_identity = "UWVMROS1_b89858cf40ee4ae756c90e048fb0cffd362dd2477ca23ba1172749353eb63721";

        static bool encode(uwvm_custom::Ros1Dsr_msgsOverwriteUserCartCoordRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsOverwriteUserCartCoordRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/OverwriteUserCartCoordResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsOverwriteUserCartCoordResponse>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_953c73d75e0381b067612ea733d58faf95919f5f20f940b6827396fc9d363833";

        static bool encode(uwvm_custom::Ros1Dsr_msgsOverwriteUserCartCoordResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsOverwriteUserCartCoordResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_OverwriteUserCartCoordResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ParallelAxis1Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsParallelAxis1Request>
    {
        static constexpr size_t max_wire_bytes = 146;
        static constexpr char const* codec_identity = "UWVMROS1_d032b8ab9d71b7f30b395c0f7ecf376e7ca056fa893479754780a90c8db7f7fe";

        static bool encode(uwvm_custom::Ros1Dsr_msgsParallelAxis1Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ParallelAxis1Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ParallelAxis1Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ParallelAxis1Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsParallelAxis1Request& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ParallelAxis1Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ParallelAxis1Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsParallelAxis1Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_f7ba09a96d450b53ef9b2fb77b6de6a6e760de65fc8dce42dcbc7dace8fef543";

        static bool encode(uwvm_custom::Ros1Dsr_msgsParallelAxis1Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ParallelAxis1Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ParallelAxis1Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ParallelAxis1Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsParallelAxis1Response& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ParallelAxis1Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ParallelAxis2Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsParallelAxis2Request>
    {
        static constexpr size_t max_wire_bytes = 26;
        static constexpr char const* codec_identity = "UWVMROS1_11dcf871306958211993961d60c607836696edf5c825bb7a109ec5efd885f191";

        static bool encode(uwvm_custom::Ros1Dsr_msgsParallelAxis2Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ParallelAxis2Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ParallelAxis2Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ParallelAxis2Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsParallelAxis2Request& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ParallelAxis2Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ParallelAxis2Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsParallelAxis2Response>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_41ca262ffdbabdde6ee4bbb0521813cc08cb56a86eb59335be8af82aa5d629c4";

        static bool encode(uwvm_custom::Ros1Dsr_msgsParallelAxis2Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ParallelAxis2Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ParallelAxis2Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ParallelAxis2Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsParallelAxis2Response& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ParallelAxis2Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ReadDataRTRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsReadDataRTRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_2c1ece2dc02863d851f0d24f9705a3c66217b1557827d450e1b58c9fb64af4bf";

        static bool encode(uwvm_custom::Ros1Dsr_msgsReadDataRTRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ReadDataRTRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ReadDataRTRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ReadDataRTRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsReadDataRTRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ReadDataRTRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/RobotStateRT; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsRobotStateRT>
    {
        static constexpr size_t max_wire_bytes = 8154;
        static constexpr char const* codec_identity = "UWVMROS1_558a295457376b0d96845db2a2bd64c5549a9e72ea49f01036286d14e5022232";

        static bool encode(uwvm_custom::Ros1Dsr_msgsRobotStateRT const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_RobotStateRT_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_RobotStateRT_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_RobotStateRT_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsRobotStateRT& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_RobotStateRT_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ReadDataRTResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsReadDataRTResponse>
    {
        static constexpr size_t max_wire_bytes = 8154;
        static constexpr char const* codec_identity = "UWVMROS1_bb6425973c166cd6f5ab88ae080d521d6f3f2e3e40cfb4ec0493c59e71f83bda";

        static bool encode(uwvm_custom::Ros1Dsr_msgsReadDataRTResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ReadDataRTResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ReadDataRTResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ReadDataRTResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsReadDataRTResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ReadDataRTResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ReleaseComplianceCtrlRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsReleaseComplianceCtrlRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_963f201a73d6cb461e28bf94dc6223bf0c8e603adb96142cde94a764349ccdd2";

        static bool encode(uwvm_custom::Ros1Dsr_msgsReleaseComplianceCtrlRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsReleaseComplianceCtrlRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ReleaseComplianceCtrlResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsReleaseComplianceCtrlResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_5c5e9252fd9e8c346e8317f600fa46eb18c8e53be3447eddf3fb5f474a44682d";

        static bool encode(uwvm_custom::Ros1Dsr_msgsReleaseComplianceCtrlResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsReleaseComplianceCtrlResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ReleaseComplianceCtrlResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ReleaseForceRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsReleaseForceRequest>
    {
        static constexpr size_t max_wire_bytes = 8;
        static constexpr char const* codec_identity = "UWVMROS1_5809993bacca15147eaf819181a6c1d187512d169539b6125e112b56bc0d2bc2";

        static bool encode(uwvm_custom::Ros1Dsr_msgsReleaseForceRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ReleaseForceRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ReleaseForceRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ReleaseForceRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsReleaseForceRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ReleaseForceRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ReleaseForceResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsReleaseForceResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_59e8fed1895c6e1664d689126a2df57918728f4006b20e50c1bc0055e76cc2d5";

        static bool encode(uwvm_custom::Ros1Dsr_msgsReleaseForceResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ReleaseForceResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ReleaseForceResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ReleaseForceResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsReleaseForceResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ReleaseForceResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ReleaseProtectiveStopRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsReleaseProtectiveStopRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_0703fb0af5fef931ae1b4364f05b4f5325e6195a2b4865e1dfcfeb3dd6f7c175";

        static bool encode(uwvm_custom::Ros1Dsr_msgsReleaseProtectiveStopRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStopRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStopRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStopRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsReleaseProtectiveStopRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStopRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ReleaseProtectiveStopResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsReleaseProtectiveStopResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_2fdc5568ddd9e700513489ccbf9078932bc28fe902f815fdd9a722b13ab599ec";

        static bool encode(uwvm_custom::Ros1Dsr_msgsReleaseProtectiveStopResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStopResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStopResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStopResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsReleaseProtectiveStopResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ReleaseProtectiveStopResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ResetWorkpieceWeightRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsResetWorkpieceWeightRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_b2cf228390cc1aa473c6e1a9025d7ea7e789acb3f7dd6a0a4178402b6d843ed6";

        static bool encode(uwvm_custom::Ros1Dsr_msgsResetWorkpieceWeightRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsResetWorkpieceWeightRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ResetWorkpieceWeightResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsResetWorkpieceWeightResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_f11776348fcebca43e64f7a635e2a080642a29c32762704029bd1429055cc025";

        static bool encode(uwvm_custom::Ros1Dsr_msgsResetWorkpieceWeightResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsResetWorkpieceWeightResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ResetWorkpieceWeightResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/RobotError; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsRobotError>
    {
        static constexpr size_t max_wire_bytes = 792;
        static constexpr char const* codec_identity = "UWVMROS1_86d4b7b2d131374e05e7fe9d53988f0ed6713deb337a37182ac4998951ca5641";

        static bool encode(uwvm_custom::Ros1Dsr_msgsRobotError const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_RobotError_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_RobotError_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_RobotError_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsRobotError& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_RobotError_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/RobotState; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsRobotState>
    {
        static constexpr size_t max_wire_bytes = 17004;
        static constexpr char const* codec_identity = "UWVMROS1_3f34278ee2cdceff51b3bb665ce314cc4a0d4e164b110969102a04c96e374456";

        static bool encode(uwvm_custom::Ros1Dsr_msgsRobotState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_RobotState_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_RobotState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_RobotState_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsRobotState& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_RobotState_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/RobotStop; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsRobotStop>
    {
        static constexpr size_t max_wire_bytes = 4;
        static constexpr char const* codec_identity = "UWVMROS1_fd77182b171cc0c4eea28c26c78310584b38e47a3c7d987783648a9f230b6323";

        static bool encode(uwvm_custom::Ros1Dsr_msgsRobotStop const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_RobotStop_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_RobotStop_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_RobotStop_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsRobotStop& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_RobotStop_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/Robotiq2FCloseRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsRobotiq2FCloseRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_208edddefb1fee08c3ba285600357951edca6b0328a14ea3cca56ec5b2c4d3b4";

        static bool encode(uwvm_custom::Ros1Dsr_msgsRobotiq2FCloseRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsRobotiq2FCloseRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/Robotiq2FCloseResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsRobotiq2FCloseResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_21a215db4729d55b86ae1f56d932984a38c5c7093f09623a5a5cee1e5647a09d";

        static bool encode(uwvm_custom::Ros1Dsr_msgsRobotiq2FCloseResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsRobotiq2FCloseResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/Robotiq2FMoveRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsRobotiq2FMoveRequest>
    {
        static constexpr size_t max_wire_bytes = 8;
        static constexpr char const* codec_identity = "UWVMROS1_81cbba3bf5cd634b8c30fe914123d67da1294352a6e1a70a5c8a58259a79d6a2";

        static bool encode(uwvm_custom::Ros1Dsr_msgsRobotiq2FMoveRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsRobotiq2FMoveRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/Robotiq2FMoveResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsRobotiq2FMoveResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_90f90a7486c727afb08f0e09f76f0bfa7f5b0d057be653258b6bdf1e935e7183";

        static bool encode(uwvm_custom::Ros1Dsr_msgsRobotiq2FMoveResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsRobotiq2FMoveResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/Robotiq2FOpenRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsRobotiq2FOpenRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_64576393afca9ec6bd2e76eaf57324b5e625e62f5899d77762dc041dc1fbdda2";

        static bool encode(uwvm_custom::Ros1Dsr_msgsRobotiq2FOpenRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsRobotiq2FOpenRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/Robotiq2FOpenResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsRobotiq2FOpenResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_83448b0daee950113e41814fe398efbb5624568e812f5989dd26cec24f24742a";

        static bool encode(uwvm_custom::Ros1Dsr_msgsRobotiq2FOpenResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsRobotiq2FOpenResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SerialSendDataRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSerialSendDataRequest>
    {
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_19253624f5870830126073f19daa4e4f42dcdd10c4d3154989aa619ce2749498";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSerialSendDataRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SerialSendDataRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SerialSendDataRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SerialSendDataRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSerialSendDataRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SerialSendDataRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SerialSendDataResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSerialSendDataResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_0bb4f5a2bfcf02e9febe7846d2616c99141a8860f62d83b59ebb56da6c89dc43";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSerialSendDataResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SerialSendDataResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SerialSendDataResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SerialSendDataResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSerialSendDataResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SerialSendDataResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ServoJRTStream; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsServoJRTStream>
    {
        static constexpr size_t max_wire_bytes = 152;
        static constexpr char const* codec_identity = "UWVMROS1_f401a85a9e6940e11cdc58f5f7390456553ff73bc298d0f9c089a1f5e9921677";

        static bool encode(uwvm_custom::Ros1Dsr_msgsServoJRTStream const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ServoJRTStream_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ServoJRTStream_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ServoJRTStream_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsServoJRTStream& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ServoJRTStream_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ServoJStream; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsServoJStream>
    {
        static constexpr size_t max_wire_bytes = 152;
        static constexpr char const* codec_identity = "UWVMROS1_2f7e730c7f7d0c29ffc15f345a9352822e94cc98e298235e57397ea46f90db8b";

        static bool encode(uwvm_custom::Ros1Dsr_msgsServoJStream const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ServoJStream_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ServoJStream_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ServoJStream_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsServoJStream& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ServoJStream_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ServoLRTStream; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsServoLRTStream>
    {
        static constexpr size_t max_wire_bytes = 152;
        static constexpr char const* codec_identity = "UWVMROS1_858f4172a6511013eabff068457b05ce5a0cfc507b86a5817d55a5d274763b4d";

        static bool encode(uwvm_custom::Ros1Dsr_msgsServoLRTStream const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ServoLRTStream_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ServoLRTStream_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ServoLRTStream_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsServoLRTStream& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ServoLRTStream_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/ServoLStream; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsServoLStream>
    {
        static constexpr size_t max_wire_bytes = 88;
        static constexpr char const* codec_identity = "UWVMROS1_b6be06412820c88909f37961227679a9ccbc8176ad662efc7f41f35a797035e8";

        static bool encode(uwvm_custom::Ros1Dsr_msgsServoLStream const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_ServoLStream_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_ServoLStream_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_ServoLStream_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsServoLStream& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_ServoLStream_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetAccJRTRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetAccJRTRequest>
    {
        static constexpr size_t max_wire_bytes = 48;
        static constexpr char const* codec_identity = "UWVMROS1_867345ecf0c7fa3e84375c009d3bd9d2ee2c52a011158215ddae3ff7de977d35";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetAccJRTRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetAccJRTRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetAccJRTRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetAccJRTRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetAccJRTRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetAccJRTRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetAccJRTResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetAccJRTResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_1bc5cb7aafef1ab3cfcde7fda9108670bc96f2298f3921ca832cab01b7670e00";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetAccJRTResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetAccJRTResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetAccJRTResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetAccJRTResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetAccJRTResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetAccJRTResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetAccXRTRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetAccXRTRequest>
    {
        static constexpr size_t max_wire_bytes = 16;
        static constexpr char const* codec_identity = "UWVMROS1_1fa5e2a32de2e4a212702aa6cb1cbfa7d451c51a0f6cb871fc337cd09b166cb6";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetAccXRTRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetAccXRTRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetAccXRTRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetAccXRTRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetAccXRTRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetAccXRTRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetAccXRTResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetAccXRTResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_7a42293efa247633f5e72a20749342b0530795a4e963f3c47248c2e703ae7c65";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetAccXRTResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetAccXRTResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetAccXRTResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetAccXRTResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetAccXRTResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetAccXRTResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetCtrlBoxAnalogInputTypeRequest; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_934735469130eef5a4e4599d3033242f0dacf467b2d413d607f733bcdebb7f5b";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetCtrlBoxAnalogInputTypeResponse; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_a1e73687962235470a5f55d1fa4abd910001dfae2b05aa7779fce0ad93137400";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetCtrlBoxAnalogOutputRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest>
    {
        static constexpr size_t max_wire_bytes = 9;
        static constexpr char const* codec_identity = "UWVMROS1_1ea5fd673a691bc7a51cf3c65c9a3b30352539155e6d7007181990c9a227efb4";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetCtrlBoxAnalogOutputRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetCtrlBoxAnalogOutputResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_f0df03f3603b7ec2c0ef5f1e5d126b718ad8ca432130e32184dc87497bf707a5";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetCtrlBoxAnalogOutputResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetCtrlBoxAnalogOutputTypeRequest; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_71aaf5f279052ba620d9cd13fa1751f96629c19d60e4030086b51e316ceab14f";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetCtrlBoxAnalogOutputTypeResponse; canonical maximum is not an actual message
     * length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_a175ae12517731f2c2e4de021b1921920bd543d9c81469876b50b51b62ad8cc2";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetCtrlBoxDigitalOutputRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_82a2c083195f7adc4fd3104cb05039cf109e9779920e36b4d3966edb819f83db";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetCtrlBoxDigitalOutputRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetCtrlBoxDigitalOutputResponse; canonical maximum is not an actual message length.
     */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_dc0411c903a4350c81130d3343615212c4e3a9c259f7b193bff92c95b7039657";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetCtrlBoxDigitalOutputResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetCurrentTcpRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetCurrentTcpRequest>
    {
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_6a403e6eb4e86aab4d76913e5dd679425f68c6e4c9b38c82af1eaa180dc65f00";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetCurrentTcpRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetCurrentTcpRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetCurrentTcpRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetCurrentTcpRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetCurrentTcpRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetCurrentTcpRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetCurrentTcpResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetCurrentTcpResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_29c09f17453ac9fa413922b023f1a54ae253cecbbdea211202da551187bbf7ab";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetCurrentTcpResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetCurrentTcpResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetCurrentTcpResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetCurrentTcpResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetCurrentTcpResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetCurrentTcpResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetCurrentToolRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetCurrentToolRequest>
    {
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_d5d71101193ff28fe86d6ba22de9922fda0c806bbd8cd5bfdb8ef3688f5bacb4";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetCurrentToolRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetCurrentToolRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetCurrentToolRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetCurrentToolRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetCurrentToolRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetCurrentToolRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetCurrentToolResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetCurrentToolResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_89937411059cec969c42c90bdb4c81fa15dc645b627d10d376dc5ded2c56e1de";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetCurrentToolResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetCurrentToolResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetCurrentToolResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetCurrentToolResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetCurrentToolResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetCurrentToolResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetDesiredForceRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetDesiredForceRequest>
    {
        static constexpr size_t max_wire_bytes = 64;
        static constexpr char const* codec_identity = "UWVMROS1_1020073d308553e7eb01e3fdd76a8a29cd169131d95516ae8c07a54b29f01b1a";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetDesiredForceRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetDesiredForceRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetDesiredForceRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetDesiredForceRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetDesiredForceRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetDesiredForceRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetDesiredForceResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetDesiredForceResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_fb07701ce7c215300e155c1d46e345f6467fe43bba3fc71bed94943459ce1928";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetDesiredForceResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetDesiredForceResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetDesiredForceResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetDesiredForceResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetDesiredForceResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetDesiredForceResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetModbusOutputRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetModbusOutputRequest>
    {
        static constexpr size_t max_wire_bytes = 264;
        static constexpr char const* codec_identity = "UWVMROS1_3482041cfb90233b59433f4749d9e8f422fc73cdb26525bdbc60370e73c7827f";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetModbusOutputRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetModbusOutputRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetModbusOutputRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetModbusOutputRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetModbusOutputRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetModbusOutputRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetModbusOutputResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetModbusOutputResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_763789f569991b2ba44844586d51b20f2c439e9b22ace4bc72b1bce7b23e0491";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetModbusOutputResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetModbusOutputResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetModbusOutputResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetModbusOutputResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetModbusOutputResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetModbusOutputResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetRTControlInputRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetRTControlInputRequest>
    {
        static constexpr size_t max_wire_bytes = 272;
        static constexpr char const* codec_identity = "UWVMROS1_83562a6a3191e48ab47af1e2d35775048bf146a8175985b356a416882e5374cd";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetRTControlInputRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetRTControlInputRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetRTControlInputRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetRTControlInputRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetRTControlInputRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetRTControlInputRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetRTControlInputResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetRTControlInputResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_8fef3733c6f17fcbc1e0eaa2633321d63b78d63d0156802417e87c8a5330008f";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetRTControlInputResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetRTControlInputResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetRTControlInputResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetRTControlInputResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetRTControlInputResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetRTControlInputResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetRTControlOutputRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetRTControlOutputRequest>
    {
        static constexpr size_t max_wire_bytes = 272;
        static constexpr char const* codec_identity = "UWVMROS1_83976c84f752fbfb1bf6e84a3816ab069e5d4f454dac4a602753f9d2049050c6";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetRTControlOutputRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetRTControlOutputRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetRTControlOutputRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetRTControlOutputRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetRTControlOutputRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetRTControlOutputRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetRTControlOutputResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetRTControlOutputResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_ac2888098d0b18d9188b116877ade53eb4481ca4e5a7c20bff64511bd5ad9ba9";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetRTControlOutputResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetRTControlOutputResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetRTControlOutputResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetRTControlOutputResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetRTControlOutputResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetRTControlOutputResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetRefCoordRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetRefCoordRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_269accc3ced8dd5c86b93c8a412301e47f0084be7f5294d19866868eb5858144";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetRefCoordRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetRefCoordRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetRefCoordRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetRefCoordRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetRefCoordRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetRefCoordRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetRefCoordResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetRefCoordResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_d33d88ff3985821ce2b9773f2d80ebf3394d89647e760dea55b9303c9e3b3562";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetRefCoordResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetRefCoordResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetRefCoordResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetRefCoordResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetRefCoordResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetRefCoordResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetRobotControlRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetRobotControlRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_d84763896b47427acc4d2c4cd75972c2c4f07c2f87dd1df781c8d7ef9e43c919";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetRobotControlRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetRobotControlRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetRobotControlRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetRobotControlRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetRobotControlRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetRobotControlRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetRobotControlResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetRobotControlResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_6f6a9dd616a340ad9a733b3f19c61a07b3101fc519f26f9c7d6e80af868663ee";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetRobotControlResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetRobotControlResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetRobotControlResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetRobotControlResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetRobotControlResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetRobotControlResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetRobotModeRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetRobotModeRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_295575a2df0f007254f9aa7eac220e99fcae85ecb085181d5a3ca4e4e86f23fe";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetRobotModeRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetRobotModeRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetRobotModeRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetRobotModeRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetRobotModeRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetRobotModeRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetRobotModeResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetRobotModeResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_bbf3bda8cd2e9afbda89023639013686ecd7612a9323a6d4180b8ac092caaad1";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetRobotModeResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetRobotModeResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetRobotModeResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetRobotModeResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetRobotModeResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetRobotModeResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetRobotSpeedModeRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetRobotSpeedModeRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_68f9a7f019ddfa1015de6c7e3115d632eb44ec794f364e6a0617fed34f70531c";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetRobotSpeedModeRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetRobotSpeedModeRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetRobotSpeedModeResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetRobotSpeedModeResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_6434538e8bf60b1b900aba530ed3e027eb13d854591eab5e0e93cc407e90c94b";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetRobotSpeedModeResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetRobotSpeedModeResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetRobotSystemRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetRobotSystemRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_75ffa8e1e77ea59a3b7a27151404682cfdef7226d32d3b78b6d67e562536eeee";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetRobotSystemRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetRobotSystemRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetRobotSystemRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetRobotSystemRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetRobotSystemRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetRobotSystemRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetRobotSystemResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetRobotSystemResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_38f3915ccf71872a966f2f511e73782a79df1923c76e6134ea8d72f0b96f6c27";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetRobotSystemResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetRobotSystemResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetRobotSystemResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetRobotSystemResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetRobotSystemResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetRobotSystemResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetSafeStopResetTypeRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetSafeStopResetTypeRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_8a9961395d960217a4f867ee0d2994ea40afe83c4a33a7dcc5b348a85a7fff42";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetSafeStopResetTypeRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetSafeStopResetTypeRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetSafeStopResetTypeResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetSafeStopResetTypeResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_2227553731ecf10a55eda31cd8735f90bd4539777661e3723f712a7a456cd4db";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetSafeStopResetTypeResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetSafeStopResetTypeResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetSafetyModeRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetSafetyModeRequest>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_e3e42b2be7c9f0974cb0f4a4192128c06a8df4a09eecb471358e41744d85d811";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetSafetyModeRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetSafetyModeRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetSafetyModeRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetSafetyModeRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetSafetyModeRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetSafetyModeRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetSafetyModeResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetSafetyModeResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_107e9a75ba6b7fa85f2a92b4595f0b55e451b2cbabb2f0035d16b6d35be69320";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetSafetyModeResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetSafetyModeResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetSafetyModeResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetSafetyModeResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetSafetyModeResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetSafetyModeResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetSingularityHandlingRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetSingularityHandlingRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_44dd4695620a3cf3f95504b73ad6978c9073ab3703f73f4a6449c7763f31cb7b";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetSingularityHandlingRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetSingularityHandlingRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetSingularityHandlingResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetSingularityHandlingResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_a022bf9d809ac39a4dfe0487fdbc83f3b4ef81f179a6b3dd7d8fb1854aba1aa2";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetSingularityHandlingResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetSingularityHandlingResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetSingularityHandlingResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetStiffnessxRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetStiffnessxRequest>
    {
        static constexpr size_t max_wire_bytes = 57;
        static constexpr char const* codec_identity = "UWVMROS1_7cf0721d0f9cd45422a4277a63834f75572ead2833ca4100752d51abc2b4e3d3";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetStiffnessxRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetStiffnessxRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetStiffnessxRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetStiffnessxRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetStiffnessxRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetStiffnessxRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetStiffnessxResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetStiffnessxResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_41ae59cb41184a6c167db14ac58ef80966c500fb31417b21900e42d1cb9a4549";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetStiffnessxResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetStiffnessxResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetStiffnessxResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetStiffnessxResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetStiffnessxResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetStiffnessxResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetToolDigitalOutputRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetToolDigitalOutputRequest>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_6b384924cefbae3dfe50e02b8fb26ed9e228d2ada5c63070feb0375c125a2123";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetToolDigitalOutputRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetToolDigitalOutputRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetToolDigitalOutputResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetToolDigitalOutputResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_4e0acd035740d1e47b42128818528aa3aa33736d979f46ada511ad0e6230ae94";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetToolDigitalOutputResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetToolDigitalOutputResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetToolShapeRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetToolShapeRequest>
    {
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_1eb4f1d4e9fea4e9f5324fc50acd744365940912055fbc359ecc4748b1ddeeea";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetToolShapeRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetToolShapeRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetToolShapeRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetToolShapeRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetToolShapeRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetToolShapeRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetToolShapeResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetToolShapeResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_7d18f475fd4230c7f15ddc10401373d296cfaef1d525a26e983cda4c8b2b5e70";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetToolShapeResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetToolShapeResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetToolShapeResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetToolShapeResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetToolShapeResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetToolShapeResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetUserCartCoord1Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetUserCartCoord1Request>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_f54a10c9fd4687670111ba2b3d0a6bceea638fc71da62d59b81a01c59dd457b3";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetUserCartCoord1Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetUserCartCoord1Request& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetUserCartCoord1Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetUserCartCoord1Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_c8749fa152e4396e977e110a901dfc791a26b54d1f282752039a20c0c4531f53";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetUserCartCoord1Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetUserCartCoord1Response& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetUserCartCoord1Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetUserCartCoord2Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetUserCartCoord2Request>
    {
        static constexpr size_t max_wire_bytes = 193;
        static constexpr char const* codec_identity = "UWVMROS1_581a8164d6593be7422364300fabd854bc3b438726a3182cd388be5c629dc235";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetUserCartCoord2Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetUserCartCoord2Request& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetUserCartCoord2Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetUserCartCoord2Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_01ce185d3b4585bfdb9187c7b3cf628874da91fdd8c289a5b72d7bcb0e84880d";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetUserCartCoord2Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetUserCartCoord2Response& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetUserCartCoord2Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetUserCartCoord3Request; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetUserCartCoord3Request>
    {
        static constexpr size_t max_wire_bytes = 97;
        static constexpr char const* codec_identity = "UWVMROS1_a8a9aa12ff690f1a26223248b0c84537b7fe23ffa0af33be0ef0c99092f78c3c";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetUserCartCoord3Request const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Request_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Request_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Request_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetUserCartCoord3Request& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Request_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetUserCartCoord3Response; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetUserCartCoord3Response>
    {
        static constexpr size_t max_wire_bytes = 2;
        static constexpr char const* codec_identity = "UWVMROS1_9409ea43f5b28fc6aa7c1089c69e828edda3440a50e1c35b5f8b8ca600d11fd1";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetUserCartCoord3Response const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Response_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Response_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Response_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetUserCartCoord3Response& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetUserCartCoord3Response_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetVelJRTRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetVelJRTRequest>
    {
        static constexpr size_t max_wire_bytes = 48;
        static constexpr char const* codec_identity = "UWVMROS1_bde411c75906468cfbbd4a3da157be4c66755a4e2c73e5db0c87eb5414a40768";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetVelJRTRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetVelJRTRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetVelJRTRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetVelJRTRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetVelJRTRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetVelJRTRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetVelJRTResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetVelJRTResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_2e671f1ce71584ee764eb88431dc883a1759312126cc722e6abb91718eb4cd3f";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetVelJRTResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetVelJRTResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetVelJRTResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetVelJRTResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetVelJRTResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetVelJRTResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetVelXRTRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetVelXRTRequest>
    {
        static constexpr size_t max_wire_bytes = 16;
        static constexpr char const* codec_identity = "UWVMROS1_62043248325fe8c561c26c914c702a17469c3e020542760f40dab518190a29e8";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetVelXRTRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetVelXRTRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetVelXRTRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetVelXRTRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetVelXRTRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetVelXRTRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SetVelXRTResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSetVelXRTResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_88fa186a19c4591d69e31ae18a8121fa28beec749c78c6c3ad92885d95947119";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSetVelXRTResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SetVelXRTResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SetVelXRTResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SetVelXRTResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSetVelXRTResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SetVelXRTResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SpeedJRTStream; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSpeedJRTStream>
    {
        static constexpr size_t max_wire_bytes = 104;
        static constexpr char const* codec_identity = "UWVMROS1_c99c5b844f12da3d0a2b4d1f44e88dbedc66be70a4576def8bb59593d4c3a780";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSpeedJRTStream const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SpeedJRTStream_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SpeedJRTStream_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SpeedJRTStream_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSpeedJRTStream& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SpeedJRTStream_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SpeedJStream; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSpeedJStream>
    {
        static constexpr size_t max_wire_bytes = 104;
        static constexpr char const* codec_identity = "UWVMROS1_7042ec2c204507e699747702d4e22a4eb704b9ca077ec270311196f779d2532f";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSpeedJStream const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SpeedJStream_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SpeedJStream_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SpeedJStream_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSpeedJStream& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SpeedJStream_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SpeedLRTStream; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSpeedLRTStream>
    {
        static constexpr size_t max_wire_bytes = 104;
        static constexpr char const* codec_identity = "UWVMROS1_2f95bdb3b90ca295355faa1667221774ba1932dd50fa9e87d05cc16168a664cc";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSpeedLRTStream const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SpeedLRTStream_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SpeedLRTStream_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SpeedLRTStream_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSpeedLRTStream& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SpeedLRTStream_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/SpeedLStream; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsSpeedLStream>
    {
        static constexpr size_t max_wire_bytes = 72;
        static constexpr char const* codec_identity = "UWVMROS1_9f6f75583bddd6dc3e6bb3b79fbe66db3a1076c58a48e887ebcf88e8587058eb";

        static bool encode(uwvm_custom::Ros1Dsr_msgsSpeedLStream const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_SpeedLStream_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_SpeedLStream_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_SpeedLStream_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsSpeedLStream& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_SpeedLStream_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/StartRTControlRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsStartRTControlRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_37b1255c34ebbba47ef2cca802168237a90aa2b52032fea64efa4517332a85ac";

        static bool encode(uwvm_custom::Ros1Dsr_msgsStartRTControlRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_StartRTControlRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_StartRTControlRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_StartRTControlRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsStartRTControlRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_StartRTControlRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/StartRTControlResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsStartRTControlResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_0f2be11b260cd9286c55ac65dc7f675701ba130eb2d81c2c8fba592c605216de";

        static bool encode(uwvm_custom::Ros1Dsr_msgsStartRTControlResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_StartRTControlResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_StartRTControlResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_StartRTControlResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsStartRTControlResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_StartRTControlResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/StopRTControlRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsStopRTControlRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_1163e97603c5de79aed634642587128d6ca9d0a64d5eef1e73502c4479e1c6ce";

        static bool encode(uwvm_custom::Ros1Dsr_msgsStopRTControlRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_StopRTControlRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_StopRTControlRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_StopRTControlRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsStopRTControlRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_StopRTControlRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/StopRTControlResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsStopRTControlResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_49ed2b792c0872d3fce723e09b2bb01fad52370f7674f438d2c0fc99422ffe62";

        static bool encode(uwvm_custom::Ros1Dsr_msgsStopRTControlResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_StopRTControlResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_StopRTControlResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_StopRTControlResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsStopRTControlResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_StopRTControlResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/TaskComplianceCtrlRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsTaskComplianceCtrlRequest>
    {
        static constexpr size_t max_wire_bytes = 57;
        static constexpr char const* codec_identity = "UWVMROS1_05fa479a787001504e982b77fd61e6a3e6bb2a7cbc34ff900fa12634d8842671";

        static bool encode(uwvm_custom::Ros1Dsr_msgsTaskComplianceCtrlRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsTaskComplianceCtrlRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/TaskComplianceCtrlResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsTaskComplianceCtrlResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_29c513521ec8c6ac5c39bf1cb12d8db19a025a2036fb0398633b544d53c39625";

        static bool encode(uwvm_custom::Ros1Dsr_msgsTaskComplianceCtrlResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsTaskComplianceCtrlResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_TaskComplianceCtrlResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/TorqueRTStream; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsTorqueRTStream>
    {
        static constexpr size_t max_wire_bytes = 56;
        static constexpr char const* codec_identity = "UWVMROS1_6c6f5462dec4f5990ef5cd6d64ffde89f092d590498dc97cf347caa06635d545";

        static bool encode(uwvm_custom::Ros1Dsr_msgsTorqueRTStream const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_TorqueRTStream_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_TorqueRTStream_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_TorqueRTStream_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsTorqueRTStream& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_TorqueRTStream_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/TransRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsTransRequest>
    {
        static constexpr size_t max_wire_bytes = 98;
        static constexpr char const* codec_identity = "UWVMROS1_6724ac7a62b77d6d6e52145306c4ac5a0e05221a636fb5cd0048e185ddcee273";

        static bool encode(uwvm_custom::Ros1Dsr_msgsTransRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_TransRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_TransRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_TransRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsTransRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_TransRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/TransResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsTransResponse>
    {
        static constexpr size_t max_wire_bytes = 49;
        static constexpr char const* codec_identity = "UWVMROS1_a36593de3d68fc991b3cf230f98c28f1f1d9fa0fc72e3160a5f005d9cb6105e5";

        static bool encode(uwvm_custom::Ros1Dsr_msgsTransResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_TransResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_TransResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_TransResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsTransResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_TransResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/WriteDataRTRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsWriteDataRTRequest>
    {
        static constexpr size_t max_wire_bytes = 152;
        static constexpr char const* codec_identity = "UWVMROS1_300128a7619804166443a58c387f127d670f91724c8f642fd5b0884c317db73e";

        static bool encode(uwvm_custom::Ros1Dsr_msgsWriteDataRTRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_WriteDataRTRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_WriteDataRTRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_WriteDataRTRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsWriteDataRTRequest& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_WriteDataRTRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** Checked codec for dsr_msgs/WriteDataRTResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsWriteDataRTResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_f1d97ee43375db129025b3c587979ca7ffacb06c66d54d829c5590c7c8943d5c";

        static bool encode(uwvm_custom::Ros1Dsr_msgsWriteDataRTResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_dsr_msgs_WriteDataRTResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_dsr_msgs_WriteDataRTResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_dsr_msgs_WriteDataRTResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Dsr_msgsWriteDataRTResponse& out)
        {
            return !roswasmc_bounded_1_dsr_msgs_WriteDataRTResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
}  // namespace roswasmcpp
