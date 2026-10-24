/**
 * @file bounded_records.hpp
 * @brief Complete doosan values and adapters for the selected original interface catalog.
 * @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
 * defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
 * roles require the separately admitted SDK owner.
 * @see share/platform/doosan/domains/doosan-ros1-aws-robot-complete.ir.json
 * @see document/platform/doosan/en_US/README.md
 */

/** @file C++20 typed bounded canonical records, independent of native ROS libraries.
 * Includes use the existing roswasmcpp Publisher/Subscription codecs and do not grant
 * aliases. Custom Service/Action component codecs also accept the raw typed RPC facade. */
#pragma once
#include <doosan/c/ros1/doosan-ros1-aws-robot-complete/bounded_records.h>
#include <ros/cpp/roswasm/roswasmcpp.hpp>

namespace uwvm_custom
{
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
    /** Complete bounded guest value for dsr_msgs/GetCtrlBoxAnalogInputRequest. */
    using Ros1Dsr_msgsGetCtrlBoxAnalogInputRequest = roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputRequest;
    /** Complete bounded guest value for dsr_msgs/GetCtrlBoxAnalogInputResponse. */
    using Ros1Dsr_msgsGetCtrlBoxAnalogInputResponse = roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse;
    /** Complete bounded guest value for dsr_msgs/GetCtrlBoxDigitalInputRequest. */
    using Ros1Dsr_msgsGetCtrlBoxDigitalInputRequest = roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputRequest;
    /** Complete bounded guest value for dsr_msgs/GetCtrlBoxDigitalInputResponse. */
    using Ros1Dsr_msgsGetCtrlBoxDigitalInputResponse = roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse;
    /** Complete bounded guest value for dsr_msgs/GetCurrentPoseRequest. */
    using Ros1Dsr_msgsGetCurrentPoseRequest = roswasmc_bounded_1_dsr_msgs_GetCurrentPoseRequest;
    /** Complete bounded guest value for dsr_msgs/GetCurrentPoseResponse. */
    using Ros1Dsr_msgsGetCurrentPoseResponse = roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse;
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
    /** Complete bounded guest value for dsr_msgs/GetToolDigitalInputRequest. */
    using Ros1Dsr_msgsGetToolDigitalInputRequest = roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputRequest;
    /** Complete bounded guest value for dsr_msgs/GetToolDigitalInputResponse. */
    using Ros1Dsr_msgsGetToolDigitalInputResponse = roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse;
    /** Complete bounded guest value for dsr_msgs/GetToolForceRequest. */
    using Ros1Dsr_msgsGetToolForceRequest = roswasmc_bounded_1_dsr_msgs_GetToolForceRequest;
    /** Complete bounded guest value for dsr_msgs/GetToolForceResponse. */
    using Ros1Dsr_msgsGetToolForceResponse = roswasmc_bounded_1_dsr_msgs_GetToolForceResponse;
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
    /** Complete bounded guest value for dsr_msgs/ModbusState. */
    using Ros1Dsr_msgsModbusState = roswasmc_bounded_1_dsr_msgs_ModbusState;
    /** Complete bounded guest value for std_msgs/MultiArrayDimension. */
    using Ros1Std_msgsMultiArrayDimension = roswasmc_bounded_1_std_msgs_MultiArrayDimension;
    /** Complete bounded guest value for std_msgs/MultiArrayLayout. */
    using Ros1Std_msgsMultiArrayLayout = roswasmc_bounded_1_std_msgs_MultiArrayLayout;
    /** Complete bounded guest value for std_msgs/Float64MultiArray. */
    using Ros1Std_msgsFloat64MultiArray = roswasmc_bounded_1_std_msgs_Float64MultiArray;
    /** Complete bounded guest value for dsr_msgs/MoveBlendingRequest. */
    using Ros1Dsr_msgsMoveBlendingRequest = roswasmc_bounded_1_dsr_msgs_MoveBlendingRequest;
    /** Complete bounded guest value for dsr_msgs/MoveBlendingResponse. */
    using Ros1Dsr_msgsMoveBlendingResponse = roswasmc_bounded_1_dsr_msgs_MoveBlendingResponse;
    /** Complete bounded guest value for dsr_msgs/MoveCircleRequest. */
    using Ros1Dsr_msgsMoveCircleRequest = roswasmc_bounded_1_dsr_msgs_MoveCircleRequest;
    /** Complete bounded guest value for dsr_msgs/MoveCircleResponse. */
    using Ros1Dsr_msgsMoveCircleResponse = roswasmc_bounded_1_dsr_msgs_MoveCircleResponse;
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
    /** Complete bounded guest value for dsr_msgs/SetModbusOutputRequest. */
    using Ros1Dsr_msgsSetModbusOutputRequest = roswasmc_bounded_1_dsr_msgs_SetModbusOutputRequest;
    /** Complete bounded guest value for dsr_msgs/SetModbusOutputResponse. */
    using Ros1Dsr_msgsSetModbusOutputResponse = roswasmc_bounded_1_dsr_msgs_SetModbusOutputResponse;
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
    /** Complete bounded guest value for dsr_msgs/SetToolDigitalOutputRequest. */
    using Ros1Dsr_msgsSetToolDigitalOutputRequest = roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputRequest;
    /** Complete bounded guest value for dsr_msgs/SetToolDigitalOutputResponse. */
    using Ros1Dsr_msgsSetToolDigitalOutputResponse = roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputResponse;
}  // namespace uwvm_custom

namespace roswasmcpp
{
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
        static constexpr size_t max_wire_bytes = 8;
        static constexpr char const* codec_identity = "UWVMROS1_53fc14db79f9c63ee04e5e055961e397d6ceefa553e0912c4c944f858376b4b2";

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
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_b24172ba7a1d82456b33bcbfccde50c1e0a40d4ce870dae704c00a553591a6a2";

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
        static constexpr size_t max_wire_bytes = 48;
        static constexpr char const* codec_identity = "UWVMROS1_cae2a551df6b2c548e171cdb181bbbe1fcbfe9fc3039b68f4edab2043ef8b9d6";

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
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_57e390c7f039b26fc69fe35d07420ee94084ce9d9531e7e8c6d6a09729b5986f";

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
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_8076cd565188d0adcda508a0637b240969a434a924daeed7cf3b7e442b901ee3";

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
        static constexpr size_t max_wire_bytes = 260;
        static constexpr char const* codec_identity = "UWVMROS1_8afef46263fd34fe71e4c33d9add7d71672cb9d95aa237a60e17c3c3cdd58e43";

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
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_d8238b34c53f1da07057059fadfc1bbc767be38453b0410a90bccb84d99d1a94";

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
        static constexpr size_t max_wire_bytes = 48;
        static constexpr char const* codec_identity = "UWVMROS1_52c063acee790649e0e439390ee3c8bd4e7ac2a124911093ba0fd00f06a07ff2";

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
        static constexpr size_t max_wire_bytes = 48;
        static constexpr char const* codec_identity = "UWVMROS1_25bda80075428cb48858ba2ab3d38b52d4fe631596e919c001cf1a4f96391bf1";

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
        static constexpr size_t max_wire_bytes = 792;
        static constexpr char const* codec_identity = "UWVMROS1_cbf970486efc6fc6dbda7ecfd673f3642f228b27e1a406156d2592d71467995c";

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
        static constexpr size_t max_wire_bytes = 4;
        static constexpr char const* codec_identity = "UWVMROS1_5a9baa85959370b7562c32510a9ebe6bd48ccb01b5d71d3898126e69fe60afb3";

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
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_3049e13cf2157e75860253953231b258ac495b2fc424aa2c6343fcf0f91044b5";

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
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_e67a5a94c55ea30657ecdf83201cac431e89c11817bb12831d31023d4fd2cec1";

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
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_2fdea6418150a77db99b9e1bcecb11a9a10f826690b18853d6adfbdc2b6f8d4d";

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
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_ecdbadad1fa8a9e22bf20bbb5c7aa489b739a6d0ef725ea20e37d50feb92a570";

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
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_ee2a97dbab5eb6f818d5165e68ebc9077f8ebae391f79445f35205158e0d7f92";

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

    /** Checked codec for dsr_msgs/GetToolForceRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Dsr_msgsGetToolForceRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_27ccf47d48432cce678c6dad5ecff2aac258f4b17e4172556fa05183bc5111b7";

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
        static constexpr size_t max_wire_bytes = 48;
        static constexpr char const* codec_identity = "UWVMROS1_752d1690a4d3b7b6842ce45d1ae599de4cbfdde9bf7da96193cbf3a9e4205026";

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
        static constexpr size_t max_wire_bytes = 2239;
        static constexpr char const* codec_identity = "UWVMROS1_6e386632864f2315ba8737001727f9c03bb17a0e70b8eb990ce39fed669aac33";

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
        static constexpr size_t max_wire_bytes = 7595;
        static constexpr char const* codec_identity = "UWVMROS1_67691d32d7b73ab123439c6f14dca8f626ad9e9a6f09f9ecb0e631b5f63d2574";

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
}  // namespace roswasmcpp
